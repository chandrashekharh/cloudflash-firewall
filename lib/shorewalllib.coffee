fileops = require 'fileops'
validate = require('json-schema').validate
exec = require('child_process').exec
uuid = require 'node-uuid'
fs = require 'fs'
path = require 'path'


@db = db =
    shorewall: require('dirty') '/tmp/shorewall.db'

db.shorewall.on 'load', ->
    console.log 'loaded shorewall.db'
    db.shorewall.forEach (key,val) ->
        console.log 'found ' + key


schemarules_new =
    name: "shorewallrules_new"
    type: "object"
    additionalProperties: false
    properties:
          'rules':
            type: "array"
            items: 
              type: "object"
              additionalProperties: false
              properties:
                ACTION: {"enum": ["ACCEPT", "DROP","REJECT","QUEUE","ACCEPT:info", "DROP:info","REJECT:info","QUEUE:info"]}
                'SOURCE_zone':
                  type: "array"
                  items: 
                    type: "object"
                    additionalProperties: false
                    properties:
                      all :    { type: "string", "required":true }
                      'all+' : { type: "string", "required":true }
                      'all-' : { type: "string", "required":true }
                      'all+-' :{ type: "string", "required":true }
                      'any' :  { type: "string", "required":true }
                      'WAN' :  { type: "string", "required":true }
                      'LAN' :  { type: "string", "required":true }
                      'DMZ' :  { type: "string", "required":true }
                      'VPN' :  { type: "string", "required":true }
                      'HSB' :  { type: "string", "required":true }
                      'WAN:' : { type: "string", "required":true }
                      'LAN:' : { type: "string", "required":true }
                      'DMZ:' : { type: "string", "required":true }
                      'VPN:' : { type: "string", "required":true }
                      'HSB:' : { type: "string", "required":true }

                'DEST_zone':
                  type: "array"
                  items: 
                    type: "object"
                    additionalProperties: false
                    properties:
                      'all' :  { type: "string", "required":true }
                      'all+' : { type: "string", "required":true }
                      'all-' : { type: "string", "required":true }
                      'all+-' :{ type: "string", "required":true }
                      'any' :  { type: "string", "required":true }
                      'WAN' :  { type: "string", "required":true }
                      'LAN' :  { type: "string", "required":true }
                      'DMZ' :  { type: "string", "required":true }
                      'VPN' :  { type: "string", "required":true }
                      'HSB' :  { type: "string", "required":true }
                      'WAN:' : { type: "string", "required":true }
                      'LAN:' : { type: "string", "required":true }
                      'DMZ:' : { type: "string", "required":true }
                      'VPN:' : { type: "string", "required":true }
                      'HSB:' : { type: "string", "required":true }

                'PROTO':
                  type: "array"
                  items: 
                    type: "object"
                    additionalProperties: false
                    properties:
                      'tcp' :                  { type: "string", "required":true }
                      'udp' :                  { type: "string", "required":true }
                      'protocol-name' :        { type: "string", "required":true }
                      'protocol-number' :      { type: "string", "required":true }
                      'tcp:sync' :             { type: "string", "required":true }
                      'tcp:ipp2p' :            { type: "string", "required":true }
                      'tcp:sync:udp' :         { type: "string", "required":true }
                      'tcp:ipp2p:udp' :        { type: "string", "required":true }
                      'tcp:sync:ipp2p' :       { type: "string", "required":true }
                      'tcp:ipp2p:ipp2p' :      { type: "string", "required":true }
                      'all' :                  { type: "string", "required":true }
                      'tcp:ipp2p:ipp2p:all' :  { type: "string", "required":true }
                      'tcp:sync:ipp2p:all' :   { type: "string", "required":true }
                      'tcp:sync:udp:all' :     { type: "string", "required":true }
                      'tcp:ipp2p:udp:all' :    { type: "string", "required":true }
                      'tcp:ipp2p:ipp2p:protocol-name' :   { type: "string", "required":true }
                      'tcp:sync:ipp2p:protocol-name' :    { type: "string", "required":true }
                      'tcp:ipp2p:udp:protocol-name' :     { type: "string", "required":true }
                      'tcp:sync:udp:protocol-name' :      { type: "string", "required":true }
                      'tcp:sync:udp:protocol-number' :    { type: "string", "required":true }
                      'tcp:ipp2p:udp:protocol-number' :   { type: "string", "required":true }
                      'tcp:ipp2p:ipp2p:protocol-number' : { type: "string", "required":true }
                      'tcp:sync:ipp2p:protocol-number' :  { type: "string", "required":true }

                'DEST_PORT':
                  type: "array"
                  items: 
                    type: "object"
                    additionalProperties: false
                    properties:
                      'port-name-number' :  { type: "string", "required":true }
                      'port-number-range' : { type: "string", "required":true }

                'SOURCE_PORT':
                  type: "array"
                  items: 
                    type: "object"
                    additionalProperties: false
                    properties:
                      'port-name-number' :  { type: "string", "required":true }
                      'port-number-range' : { type: "string", "required":true }

                'Original_DEST': { type: "string", "required":true }

                'RATE_LIMIT':
                  type: "array"
                  items: 
                    type: "object"
                    additionalProperties: false
                    properties:
                      's' :            { type: "string", "required":true }
                      'd' :            { type: "string", "required":true }
                      's:proto-name' : { type: "string", "required":true }
                      'd:proto-name' : { type: "string", "required":true }
                      's:proto-name:rate-per-sec' :      { type: "string", "required":true }
                      's:proto-name:rate-per-min' :      { type: "string", "required":true }
                      's:proto-name:rate-per-hour' :     { type: "string", "required":true }
                      's:proto-name:rate-per-day' :      { type: "string", "required":true }
                      'd:proto-name:rate-per-sec' :      { type: "string", "required":true }
                      'd:proto-name:rate-per-min' :      { type: "string", "required":true }
                      'd:proto-name:rate-per-hour' :     { type: "string", "required":true }
                      'd:proto-name:rate-per-day' :      { type: "string", "required":true }
                      's:proto-name:rate-per-sec:burst' : { type: "string", "required":true }
                      's:proto-name:rate-per-min:burst' : { type: "string", "required":true }
                      's:proto-name:rate-per-day:burst' : { type: "string", "required":true }
                      's:proto-name:rate-per-hour:burst' :{ type: "string", "required":true }
                      'd:proto-name:rate-per-sec:burst' : { type: "string", "required":true }
                      'd:proto-name:rate-per-min:burst' : { type: "string", "required":true }
                      'd:proto-name:rate-per-hour:burst' :{ type: "string", "required":true }
                      'd:proto-name:rate-per-day:burst' : { type: "string", "required":true }


                'User_Group':
                  type: "array"
                  items: 
                    type: "object"
                    additionalProperties: false
                    properties:
                      'user-name-or-number' :                      { type: "string", "required":true }
                      ':group-name-or-number' :                    { type: "string", "required":true }
                      'user-name-or-number:group-name-or-number' : { type: "string", "required":true }
                      'program-name' :                             { type: "string", "required":true}

schematcrules =
    name: "shorewalltcrules"
    type: "object"
    additionalProperties: false
    properties:
        'tcrules':
            type: "array"
            items:
              type: "object"
              additionalProperties: false
              properties:
                'MARK':         { type: "string", required:true }
                'SOURCE':       { type: "string", required:true }
                'DEST':         { type: "string", required:true }
                'PROTO':        { type: "string", required:false }
                'PORTS':        { type: "string", required:false }
                'CLIENT_PORTS': { type: "string", required:false }
                'USER':         { type: "string", required:false }
                'TEST':         { type: "string", required:false }


schemamasq =
    name: "shorewallmasq"
    type: "object"
    additionalProperties: false
    properties:
        'masq':
            type: "array"
            items:
              type: "object"
              additionalProperties: false
              properties:
                'INTERFACE_DEST': { type : "string", required : true }
                'SOURCE':         { type : "string", required : true }
                'ADDRESS_OPT':    { type : "string", required : false }
                'PROTO':          { type : "string", required : false }
                'PORTS':          { type : "string", required : false }


schemaconfigshorewall =
    name: "shorewallconfigshorewall"
    type: "object"
    additionalProperties: false
    properties:

        'interfaces':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                'ZONE':      { type: "string", required: true }
                'INTERFACE': { type: "string", required: true }
                'BROADCAST': { type: "string", required: true }
                'OPTIONS':   { type: "string", required: true }

        'zones':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                'ZONES':      { type: "string", required: true }
                'TYPE':       { type: "string", required: true }
                'OPTIONS':    { type: "string", required: true }
                'IN-OPTIONS': { type: "string", required: true }
                'OUT-OPTIONS':{ type: "string", required: true }

        'policy':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                'SRC_ZONE':   { type: "string", required: true }
                'DEST_ZONE':  { type: "string", required: true }
                'POLICY':     { type: "string", required: true }
                'LOG_LEVEL':  { type: "string", required: true }
                'LIMIT_BURST':{ type: "string", required: true }

        'routestopped':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                'INTERFACE':    { type: "string", required: true }
                'HOSTS':        { type: "string", required: true }
                'OPTIONS':      { type: "string", required: true }
                'PROTO':        { type: "string", required: true }
                'DEST_PORTS':   { type: "string", required: true }
                'SOURCE_PORTS': { type: "string", required: true }

        'tcdevices':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:

                 'INTERFACE':    {"type":"string", "required":true}
                 'IN_BANDWIDTH': {"type":"string", "required":true}
                 'OUT_BANDWIDTH':{"type":"string", "required":true}

        'tcclasses':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                 'INTERFACE':{"type":"string", "required":true}
                 'MARK':     {"type":"string", "required":true}
                 'RATE':     {"type":"string", "required":true}
                 'CEIL':     {"type":"string", "required":true}
                 'PRIORITY': {"type":"string", "required":true}
                 'OPTIONS':  {"type":"string", "required":true}

        'tunnels':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                 'TYPE':     {"type":"string", "required":true}
                 'ZONE':     {"type":"string", "required":true}
                 'GATEWAY':  {"type":"string", "required":true}

        'capabilities':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                 'content': {"type":"string", "required":true}

        'shorewallconf':
           type: "array"
           items: 
              type: "object"
              additionalProperties: false
              properties:
                'STARTUP_ENABLED':       { type: "string", required: true }
                'VERBOSITY':             { type: "string", required: true }
                'LOGFILE':               { type: "string", required: true }
                'STARTUP_LOG':           { type: "string", required: true }
                'LOG_VERBOSITY':         { type: "string", required: true }
                'LOGFORMAT':             { type: "string", required: true }
                'LOGTAGONLY':            { type: "string", required: true }
                'LOGRATE':               { type: "string", required: true } 
                'LOGBURST':              { type: "string", required: true }
                'LOGALLNEW':             { type: "string", required: true }
                'BLACKLIST_LOGLEVEL':    { type: "string", required: true }
                'MACLIST_LOG_LEVEL':     { type: "string", required: true }
                'TCP_FLAGS_LOG_LEVEL':   { type: "string", required: true }
                'SMURF_LOG_LEVEL':       { type: "string", required: true }
                'LOG_MARTIANS':          { type: "string", required: true }
                'IPTABLES':              { type: "string", required: true }
                'IP':                    { type: "string", required: true }
                'TC':                    { type: "string", required: true }
                'IPSET':                 { type: "string", required: true }
                'PERL':                  { type: "string", required: true }
                'PATH':                  { type: "string", required: true }
                'SHOREWALL_SHELL':       { type: "string", required: true }
                'SUBSYSLOCK':            { type: "string", required: true }
                'MODULESDIR':            { type: "string", required: true }
                'CONFIG_PATH':           { type: "string", required: true }
                'RESTOREFILE':           { type: "string", required: true }
                'IPSECFILE':             { type: "string", required: true }
                'LOCKFILE':              { type: "string", required: true }
                'DROP_DEFAULT':          { type: "string", required: true }
                'REJECT_DEFAULT':        { type: "string", required: true }
                'ACCEPT_DEFAULT':        { type: "string", required: true }
                'QUEUE_DEFAULT':         { type: "string", required: true }
                'NFQUEUE_DEFAULT':       { type: "string", required: true }
                'RSH_COMMAND':           { type: "string", required: true }
                'RCP_COMMAND':           { type: "string", required: true }
                'IP_FORWARDING':         { type: "string", required: true }
                'ADD_IP_ALIASES':        { type: "string", required: true }
                'ADD_SNAT_ALIASES':      { type: "string", required: true }
                'RETAIN_ALIASES':        { type: "string", required: true }
                'TC_ENABLED':            { type: "string", required: true }
                'TC_EXPERT':             { type: "string", required: true }
                'TC_PRIOMAP':            { type: "string", required: true }
                'CLEAR_TC':              { type: "string", required: true }
                'MARK_IN_FORWARD_CHAIN': { type: "string", required: true }
                'CLAMPMSS':              { type: "string", required: true }
                'ROUTE_FILTER':          { type: "string", required: true }
                'DETECT_DNAT_IPADDRS':   { type: "string", required: true }
                'MUTEX_TIMEOUT':         { type: "string", required: true }
                'ADMINISABSENTMINDED':   { type: "string", required: true }
                'BLACKLISTNEWONLY':      { type: "string", required: true }
                'DELAYBLACKLISTLOAD':    { type: "string", required: true }
                'MODULE_SUFFIX':         { type: "string", required: true }
                'DISABLE_IPV6':          { type: "string", required: true }
                'BRIDGING':              { type: "string", required: true }
                'DYNAMIC_ZONES':         { type: "string", required: true }
                'PKTTYPE':               { type: "string", required: true }
                'NULL_ROUTE_RFC1918':    { type: "string", required: true }
                'MACLIST_TABLE':         { type: "string", required: true }
                'MACLIST_TTL':           { type: "string", required: true }
                'SAVE_IPSETS':           { type: "string", required: true }
                'MAPOLDACTIONS':         { type: "string", required: true }
                'FASTACCEPT':            { type: "string", required: true }
                'IMPLICIT_CONTINUE':     { type: "string", required: true }
                'HIGH_ROUTE_MARKS':      { type: "string", required: true }
                'USE_ACTIONS':           { type: "string", required: true }
                'OPTIMIZE':              { type: "string", required: true }
                'EXPORTPARAMS':          { type: "string", required: true }
                'EXPAND_POLICIES':       { type: "string", required: true }
                'KEEP_RT_TABLES':        { type: "string", required: true } 
                'DELETE_THEN_ADD':       { type: "string", required: true }
                'MULTICAST':             { type: "string", required: true }
                'DONT_LOAD':             { type: "string", required: true }
                'AUTO_COMMENT':          { type: "string", required: true }
                'MANGLE_ENABLED':        { type: "string", required: true }
                'USE_DEFAULT_RT':        { type: "string", required: true }
                'RESTORE_DEFAULT_ROUTE': { type: "string", required: true }
                'AUTOMAKE':              { type: "string", required: true }
                'WIDE_TC_MARKS':         { type: "string", required: true }
                'TRACK_PROVIDERS':       { type: "string", required: true }
                'ZONE2ZONE':             { type: "string", required: true }
                'ACCOUNTING':            { type: "string", required: true }
                'DYNAMIC_BLACKLIST':     { type: "string", required: true }
                'OPTIMIZE_ACCOUNTING':   { type: "string", required: true }
                'LOAD_HELPERS_ONLY':     { type: "string", required: true }
                'REQUIRE_INTERFACE':     { type: "string", required: true  }
                'FORWARD_CLEAR_MARK':    { type: "string", required: true  }
                'BLACKLIST_DISPOSITION': { type: "string", required: true  }
                'MACLIST_DISPOSITION':   { type: "string", required: true  }
                'TCP_FLAGS_DISPOSITION': { type: "string", required: true  } 
  



schemaconf =
    name: "shorewallconf"
    type: "object"
    additionalProperties: false
    properties:
            'STARTUP_ENABLED':       { type: "string", required: true }
            'VERBOSITY':             { type: "string", required: true }
            'LOGFILE':               { type: "string", required: true }
            'STARTUP_LOG':           { type: "string", required: true }
            'LOG_VERBOSITY':         { type: "string", required: true }
            'LOGFORMAT':             { type: "string", required: true }
            'LOGTAGONLY':            { type: "string", required: true }
            'LOGRATE':               { type: "string", required: true } 
            'LOGBURST':              { type: "string", required: true }
            'LOGALLNEW':             { type: "string", required: true }
            'BLACKLIST_LOGLEVEL':    { type: "string", required: true }
            'MACLIST_LOG_LEVEL':     { type: "string", required: true }
            'TCP_FLAGS_LOG_LEVEL':   { type: "string", required: true }
            'SMURF_LOG_LEVEL':       { type: "string", required: true }
            'LOG_MARTIANS':          { type: "string", required: true }
            'IPTABLES':              { type: "string", required: true }
            'IP':                    { type: "string", required: true }
            'TC':                    { type: "string", required: true }
            'IPSET':                 { type: "string", required: true }
            'PERL':                  { type: "string", required: true }
            'PATH':                  { type: "string", required: true }
            'SHOREWALL_SHELL':       { type: "string", required: true }
            'SUBSYSLOCK':            { type: "string", required: true }
            'MODULESDIR':            { type: "string", required: true }
            'CONFIG_PATH':           { type: "string", required: true }
            'RESTOREFILE':           { type: "string", required: true }
            'IPSECFILE':             { type: "string", required: true }
            'LOCKFILE':              { type: "string", required: true }
            'DROP_DEFAULT':          { type: "string", required: true }
            'REJECT_DEFAULT':        { type: "string", required: true }
            'ACCEPT_DEFAULT':        { type: "string", required: true }
            'QUEUE_DEFAULT':         { type: "string", required: true }
            'NFQUEUE_DEFAULT':       { type: "string", required: true }
            'RSH_COMMAND':           { type: "string", required: true }
            'RCP_COMMAND':           { type: "string", required: true }
            'IP_FORWARDING':         { type: "string", required: true }
            'ADD_IP_ALIASES':        { type: "string", required: true }
            'ADD_SNAT_ALIASES':      { type: "string", required: true }
            'RETAIN_ALIASES':        { type: "string", required: true }
            'TC_ENABLED':            { type: "string", required: true }
            'TC_EXPERT':             { type: "string", required: true }
            'TC_PRIOMAP':            { type: "string", required: true }
            'CLEAR_TC':              { type: "string", required: true }
            'MARK_IN_FORWARD_CHAIN': { type: "string", required: true }
            'CLAMPMSS':              { type: "string", required: true }
            'ROUTE_FILTER':          { type: "string", required: true }
            'DETECT_DNAT_IPADDRS':   { type: "string", required: true }
            'MUTEX_TIMEOUT':         { type: "string", required: true }
            'ADMINISABSENTMINDED':   { type: "string", required: true }
            'BLACKLISTNEWONLY':      { type: "string", required: true }
            'DELAYBLACKLISTLOAD':    { type: "string", required: true }
            'MODULE_SUFFIX':         { type: "string", required: true }
            'DISABLE_IPV6':          { type: "string", required: true }
            'BRIDGING':              { type: "string", required: true }
            'DYNAMIC_ZONES':         { type: "string", required: true }
            'PKTTYPE':               { type: "string", required: true }
            'NULL_ROUTE_RFC1918':    { type: "string", required: true }
            'MACLIST_TABLE':         { type: "string", required: true }
            'MACLIST_TTL':           { type: "string", required: true }
            'SAVE_IPSETS':           { type: "string", required: true }
            'MAPOLDACTIONS':         { type: "string", required: true }
            'FASTACCEPT':            { type: "string", required: true }
            'IMPLICIT_CONTINUE':     { type: "string", required: true }
            'HIGH_ROUTE_MARKS':      { type: "string", required: true }
            'USE_ACTIONS':           { type: "string", required: true }
            'OPTIMIZE':              { type: "string", required: true }
            'EXPORTPARAMS':          { type: "string", required: true }
            'EXPAND_POLICIES':       { type: "string", required: true }
            'KEEP_RT_TABLES':        { type: "string", required: true } 
            'DELETE_THEN_ADD':       { type: "string", required: true }
            'MULTICAST':             { type: "string", required: true }
            'DONT_LOAD':             { type: "string", required: true }
            'AUTO_COMMENT':          { type: "string", required: true }
            'MANGLE_ENABLED':        { type: "string", required: true }
            'USE_DEFAULT_RT':        { type: "string", required: true }
            'RESTORE_DEFAULT_ROUTE': { type: "string", required: true }
            'AUTOMAKE':              { type: "string", required: true }
            'WIDE_TC_MARKS':         { type: "string", required: true }
            'TRACK_PROVIDERS':       { type: "string", required: true }
            'ZONE2ZONE':             { type: "string", required: true }
            'ACCOUNTING':            { type: "string", required: true }
            'DYNAMIC_BLACKLIST':     { type: "string", required: true }
            'OPTIMIZE_ACCOUNTING':   { type: "string"  }
            'LOAD_HELPERS_ONLY':     { type: "string"  }
            'REQUIRE_INTERFACE':     { type: "string"  }
            'FORWARD_CLEAR_MARK':    { type: "string"  }
            'BLACKLIST_DISPOSITION': { type: "string"  }
            'MACLIST_DISPOSITION':   { type: "string"  }
            'TCP_FLAGS_DISPOSITION': { type: "string"  } 

schemarules =
    name: "shorewallrules"
    type: "object"
    additionalProperties: false
    properties: 
            'ACTION':          { type: "string", required: true }
            'SOURCE_zone':     { type: "string", required: true }
            'DEST_zone':       { type: "string", required: true }
            'PROTO':           { type: "string", required: true }
            'DEST_PORT':       { type: "string", required: true }
            'SOURCE_PORT':     { type: "string", required: true }
            'Original_DEST':   { type: "string", required: true }
            'RATE_LIMIT':      { type: "string", required: true }
            'User_Group':      { type: "string", required: true }
            'MARK':            { type: "string", required: true }
            'CONNLIMIT':       { type: "string", required: true }
            'TIME':            { type: "string", required: true }
            'HEADERS':         { type: "string", required: true }
            'SWITCH':          { type: "string", required: true }

schemazones =
    name: "shorewallzones"
    type: "object"
    additionalProperties: false
    properties:
            'ZONES':      { type: "string", required: true }
            'TYPE':       { type: "string", required: true }
            'OPTIONS':    { type: "string", required: true }
            'IN-OPTIONS': { type: "string", required: true }
            'OUT-OPTIONS':{ type: "string", required: true }

schemapolicy =
    name: "shorewallpolicy"
    type: "object"
    additionalProperties: false
    properties:
            'SRC_ZONE':   { type: "string", required: true }
            'DEST_ZONE':  { type: "string", required: true }
            'POLICY':     { type: "string", required: true }
            'LOG_LEVEL':  { type: "string", required: true }
            'LIMIT_BURST':{ type: "string", required: true }

schemainterfaces =
    name: "shorewallinterfaces"
    type: "object"
    additionalProperties: false
    properties:
            'ZONE':      { type: "string", required: true }
            'INTERFACE': { type: "string", required: true }
            'BROADCAST': { type: "string", required: true }
            'OPTIONS':   { type: "string", required: true }

schemaroutestopped =
    name: "shorewallroutestopped"
    type: "object"
    additionalProperties: false
    properties:
            'INTERFACE':    { type: "string", required: true }
            'HOSTS':        { type: "string", required: true }
            'OPTIONS':      { type: "string", required: true }
            'PROTO':        { type: "string", required: true }
            'DEST_PORTS':   { type: "string", required: true }
            'SOURCE_PORTS': { type: "string", required: true }



class shorewall
    constructor: ->
        console.log 'shorewalllib initialized'
        @sdb = db.shorewall    

#New API's source code starts here

    shorewall_config : (body, group, entity, callback) ->
        if entity != "shorewall"
            throw new Error "Requested configuration entity is not correct!"
        for key, val of body
          switch key

            when "interfaces"
                  @ShorewallconfigtoAdd body, group, "interfaces"

            when "zones"
                  @ShorewallconfigtoAdd body, group, "zones"

            when "policy"
                  @ShorewallconfigtoAdd body, group, "policy"

            when "tcdevices"
                  @ShorewallconfigtoAdd body, group, "tcdevices"

            when "tcclasses"
                  @ShorewallconfigtoAdd body, group, "tcclasses"

            when "tunnels"
                  @ShorewallconfigtoAdd body, group, "tunnels"

            when "capabilities"
                  @ShorewallconfigtoAdd body, group, "capabilities"

            when "shorewallconf"
                  @ShorewallconfigtoAdd body, group, "shorewallconf"

        try
          entityid = ''
          instance = {}
          entityid = "#{entity}" + "#{group}"
          instance.entityid = entityid
          instance.entityName = entity
          instance.group = group
          instance.config = body                
          @sdb.set entityid, instance, ->
            console.log "#{entityid} added to the database"
#          @run "build", group, (result) => 
#            throw new Error "Could not build configuration!" if result instanceof Error
#            callback (result)
          callback (instance) 
        catch err
            console.log err
            callback (err)

    ShorewallconfigtoAdd : (body, group, entity) ->
        configtoAdd = ''
        for key, val of body
          switch key
            when entity
              switch (typeof val)
                when "object"
                  if val instanceof Array 
                    for i in val
                      if typeof i is "object"
                        for k, j of i
                            if entity == 'capabilities'
                                filepath = "/config/shorewall/#{group}/#{entity}" 
                                @caprecv i, filepath, "server", (res) =>
                                    throw new Error "capabilities file not able to decode!" if res instanceof Error
                            if entity == 'shorewallconf'
                                configtoAdd += "#{k}" + "=" + "#{j}" + "\n"
                                if (entity == 'shorewallconf')
                                  if i.STARTUP_ENABLED isnt 'Yes'
                                    throw new Error "Invalid firewall conf value of STARTUP_ENABLED  posting! "
                            else
                                configtoAdd += "#{j} \t"
                        configtoAdd +="\n"
                        if entity == 'shorewallconf' 
                          entity = "shorewall.conf"
                        filename = "/config/shorewall/#{group}/#{entity}"
                        try
                          res = fileops.fileExistsSync filename
                          unless res instanceof Error
                            fileops.removeFileSync filename
                          fileops.createFile filename, (result) =>
                            throw new Error "Could not update configuration!" if result instanceof Error
                            fileops.updateFile filename, configtoAdd
                        catch err
                          console.log err
                          callback (err)


    shorewallrules_config : (body, group, entity, entityid, callback) ->
        console.log 'body:' + JSON.stringify(body)
        configtoAdd = ''
        config =''
        console.log 'am here in the shorewallrules_config here'
        for key, val of body
            if key isnt entity
              throw new Error "resquested JSON and API doesn't match!"
            switch (typeof val)
                when "object"
                  if val instanceof Array 
                    for i in val
                      if typeof i is "object"
                        for k, j of i
                          if j instanceof Array
                            for nn in j
                              if typeof nn is "object"
                                for u, v of nn
                                  if v
                                    configtoAdd += "#{v} \t"
                          else
                            configtoAdd += "#{j} \t"
                        configtoAdd += "\n"
        configtoAdd +="\n"
        config = @updateConfigs configtoAdd, group, entity
        filename = "/config/shorewall/#{group}/#{entity}"
        try
            res = fileops.fileExistsSync filename
            unless res instanceof Error
                fileops.removeFileSync filename
            fileops.createFile filename, (result) =>
                throw new Error "Could not update configuration!" if result instanceof Error
                fileops.updateFile filename, config
                instance = {}
                entityid = ''
                entityid = "#{entity}" + "#{group}"
                instance.id = entityid
                instance.entityName = entity
                instance.group = group
                instance.config = body                
                @sdb.set entityid, instance, ->
                    console.log "#{entityid} added to the database"
#                @run "build", group, (result) => 
#                  return @next new Error "Could not update configuration!" if result instanceof Error
#                  buildlist = {}
#                  buildlist.configs = instance
#                  buildlist.builtresult = result
#                  callback (buildlist)
                callback (instance)
        catch err
            console.log err
            callback (err)

    updateConfigs: (configAdd, group, entityName) ->
      res = []
      config = ''
      @sdb.forEach (key, val) ->
        res.push val if val
#      console.log "DB.READ: " + JSON.stringify(res)
      for key, val of res
          switch (typeof val)
            when "object"
              config += "\n" #Every entry must be in new line
              if val and val.entityName == entityName and val.group == group
                for ikey, ival of val
                  for iikey, iival of ival   
                      if iival instanceof Array
                        for i in iival
                          if typeof i is "object"
                            for k, j of i
                              if j instanceof Array
                                for nn in j
                                  if typeof nn is "object"
                                    for u, v of nn
                                      if v 
                                        config += "#{v} \t"
#                                      console.log 'here DROP: ' + config
                              else
                                config += "#{j} \t"
#                              console.log 'here DROP: ' + config

#                              config += "#{j} \t"
                            config += "\n" 

        config += "\n" + configAdd
#        console.log "updateConfigs config: " + config
        return config


    getConfigByIDs : (entity, group, callback) ->
        id = ''
        id  = "#{entity}#{group}"
        entry = @sdb.get id         
        if entry          
          callback (entry)
        else
          error = new Error "No entry Found by ID: #{id}"
          callback (error)

    listgroupConfigs: (group, callback) ->
        result = []
        list = {"first","tcrules","masq", "rules", "shorewall", "end"}
        for item of list
            elist = {}
            elist.name = "#{item}"
            elist.list = []
            result.push elist unless item=='first' or item=='end'
            callback (result) if item=='end'
            @sdb.forEach (key, val) =>
                if val and (val.entityName == item) and (val.group is group)
                    instance = {}
                    instance.id = key
                    instance.config = val.config
                    elist.list.push instance


    removeConfigs: (group, entityName, entity, callback) ->
        entity = ''
        entity = "#{entityName}#{group}"
        filename = "/config/shorewall/#{group}/#{entityName}"
        if entityName isnt "shorewall"
          res = fileops.fileExistsSync filename
          throw new Error "Configuration does not exist!" if res instanceof Error
        entry = @sdb.get entity
        if entry
            @sdb.rm entity, =>
              if entityName isnt "shorewall"
                config = @updateConfig "", group, entityName
                fileops.updateFile filename, config
              else
                exec ("rm -rf /config/shorewall/#{group}/*"), (err, stdout, stderr) =>
                  unless err instanceof Error
                    console.log "Config files Deleted Successfull!"
                  else
                    throw new Error "configs delete not executed ! Error: #{err}"
              callback (true)
        else
            throw new Error "Entry is not present DB to DELETE, entityid is not valid !"



#New API's source code ends here



    getConfigByID : (id, callback) ->
        entry = @sdb.get id         
        if entry          
          callback (entry)
        else
          error = new Error "No entry Found by ID: #{id}"
          callback (error)
      
      

    listEntityConfig: (entityName, group, callback) ->
        result = []
        @sdb.forEach (key, val) ->
            if val and (val.entityName == entityName) and (val.group == group)
                instance = {}
                instance.id = key
                instance.config = val.config
                result.push instance
        callback (result)

    listgroupConfig: (group, callback) ->
        result = []
        list = {"first","interfaces","zones", "policy", "rules", "routestopped", "shorewall", "end"}
        for item of list
            elist = {}
            elist.name = "#{item}"
            elist.list = []
            result.push elist unless item=='first' or item=='end'
            callback (result) if item=='end'
            @sdb.forEach (key, val) =>
                if val and (val.entityName == item) and (val.group is group)
                    instance = {}
                    instance.id = key
                    instance.config = val.config
                    elist.list.push instance

    updateConfig: (configAdd, group, entityName) ->
        config = ''
        @sdb.forEach (key, val) ->
            config += "\n" #Evey entry must be in new line
            if val and val.entityName == entityName and val.group == group
                for ikey, ival of val.config
                    if val.entityName == 'shorewall'
                        config += "#{ikey}" + "\t" + "#{ival}" + "\n"
                    else
                        config += "#{ival}" + "\t"
        config += "\n" + configAdd
        console.log config
        return config
                   
    createConfig: (filename, body, group, entityname, entityid, callback) ->
        configtoAdd = ''
        entry = ''
        #overwrite to have our path in the configuration 
        body.CONFIG_PATH = "/etc/shorewall:/usr/share/shorewall:/config/shorewall/#{group}" if entityname == 'shorewall'
        for key, val of body
            if entityname == 'shorewall'
                configtoAdd += "#{key}" + "=" + "#{val}" + "\n"
                if body.STARTUP_ENABLED isnt 'Yes'
                  throw new Error "Invalid firewall conf value of STARTUP_ENABLED  posting! "
            else
                configtoAdd += val + "\t"
        configtoAdd += "\n"

        #remove the duplicate entry in DB
        entry = @sdb.get entityid
        console.log "entry:" + entry
        @sdb.rm entityid if entry

        config = @updateConfig configtoAdd, group, entityname
        try
            res = fileops.fileExistsSync filename
            unless res instanceof Error
                fileops.removeFileSync filename
            fileops.createFile filename, (result) =>
                throw new Error "Could not update configuration!" if result instanceof Error
                fileops.updateFile filename, config
                instance = {}
                instance.id = entityid
                instance.entityName = entityname
                instance.group = group
                instance.config = body                
                @sdb.set entityid, instance, ->
                    console.log "#{entityid} added to the database"
                callback (instance)
        catch err
            console.log err
            callback (err)

    configElement: (body, group, entity, entityid, callback) ->
       filename = "/config/shorewall/#{group}/#{entity}"
       console.log filename
       @createConfig filename, body, group, entity, entityid, (result) =>
           callback (result)

               
    configShorewall: (body, group, callback) ->
        filename = "/config/shorewall/#{group}/shorewall.conf"
        console.log filename
        #DB key is group. Entityname is hardcoded as shorewall for simplicity 
        @createConfig filename, body, group, "shorewall", group, (result) =>
            callback (result)

    removeConfig: (group, entityName, entityid, callback) ->
        filename = "/config/shorewall/#{group}/#{entityName}"
        res = fileops.fileExistsSync filename
        throw new Error "Configuration does not exist!" if res instanceof Error
        entry = @sdb.get entityid
        if entry
            @sdb.rm entityid, =>
              config = @updateConfig "", group, entityName
              fileops.updateFile filename, config
              callback (true)
        else
            throw new Error "Entry is not present DB to DELETE, entityid is not valid !"



    '''
    #Added another run function so it is needed
    run: (action, group, callback) ->
        console.log 'action recvd ' + action + 'group is ' + group
        switch (action)
            when 'start', 'stop', 'restart', 'clear'
                #shorewall takes additional configuration directory as input but all modes like stop does not take it.
                #Hence shorewall.conf must have the config directory specified correctly.
                #Also shorewall will always look for shorewall.conf in /etc/shorewall which is not changeable
                res = fileops.linkSync "/config/shorewall/#{group}/shorewall.conf" , "/etc/shorewall/shorewall.conf", 1
                throw new Error "Could not link the configuration!" if res instanceof Error
                cmd = "sudo /sbin/shorewall #{action}"
                exec "#{cmd}", (err, stdout, stderr) =>
                    console.log err
                    console.log stderr
                    unless err instanceof Error
                        callback (true)
                    else
                        callback(err)
            else
                err = new Error "Unsupported action #{action}. Must be either 'start', 'stop', 'restart' or 'clear'"
                callback (err)
    '''  


#Function to create the capabilities file on shorewall server and compile the configurations
#which creates the firewall and firewall.conf files with respective client directory

    run: (action, group, callback) ->
        conf_dir = '/config/shorewall/' + group
        switch (action)
          when 'capabilities'
            exec ("/usr/share/shorewall-lite/shorecap > #{conf_dir}/capabilities"), (err, stdout, stderr) =>
                unless err instanceof Error
                    callback ({ "result": "true"})
                else
                    callback (err)
          when 'build', 'rebuild'
            exec ("touch /etc/shorewall/shorewall.conf")
            exec ("/sbin/shorewall compile  -e  #{conf_dir}  #{conf_dir}/firewall"), (err, stdout, stderr) =>
                unless err instanceof Error
                    callback ({ "result": "#{stdout}" })
                else
                    callback (err)


#Function to start the  firewall rules on shorewall-lite client

    clientrun: (action, group, callback) ->
        switch (action)
            when 'capabilities'
              exec ("/usr/share/shorewall-lite/shorecap > /usr/share/shorewall-lite/capabilities"), (err, stdout, stderr) =>
                  unless err instanceof Error
                    callback ({ "result": "true"})
                  else
                    callback (err)

            when 'status', 'stop', 'clear', 'start', 'restart'
              exec ("/sbin/shorewall-lite   #{action}" ), (err, stdout, stderr) =>
                  unless err                                           
                      if stdout                                        
                          callback ({ "result": "#{stdout}" })              
                      else                                                                  
                          callback ({ "result": "#{stderr}" })                      
                  else                                                         
                      callback (stdout + err)                          
            else
                error = new Error "Invalid action:  #{action}!"
                callback (error)



#Function to send the firewall and firewall.conf files to orchestration
#    Chandru to implement and get all files in one call.
     sendfile: (group, type, callback) ->
            console.log "in sendfile firewall"                        
            switch type
                when "server"      
                   res = {}             
                   console.log "inside switch server: "
                   filepathFirewall = "/config/shorewall/#{group}/firewall"
                   filepathFirewallConf = "/config/shorewall/#{group}/firewall.conf"
                  
                   result = fileops.readFileSync filepathFirewallConf
                   unless result instanceof Error                     
                     res.firewall = new Buffer(result).toString('base64')
                   else
                     throw new Error "Invalid filepath #{result} !"

                   resultnxt = fileops.readFileSync filepathFirewall
                   unless resultnxt instanceof Error
                     res.firewallconf = new Buffer(resultnxt).toString('base64')
                   else
                     throw new Error "Invalid filepath #{resultnxt} !"
                   callback (res)
                  
                when "client"   
                   res = {}                
                   filepathCap = "/usr/share/shorewall-lite/capabilities"
                   result = fileops.readFileSync filepathCap                  
                   unless result instanceof Error
                     res.content = new Buffer(result).toString('base64')
                   else
                     throw new Error "Invalid filepath #{result} !"
                   callback (res)                      
                else
                   error =  new Error "Invalid shorewall posting!"
                   callback (error)

#Function to copy the capabilities file to respective client groups directory

    caprecv: (body, filepath, type, callback) ->
        console.log "in sendfile firewall"
        switch type
          when "server"
            if body.content
              console.log "in server"
              content = ''                   
              content = new Buffer(body.content || '',"base64").toString('utf8')                                  
              fileops.createFile filepath, (result) =>
                 return new Error "Unable to create configuration file for device: #{filepath}!" if result instanceof Error
                 fileops.updateFile filepath, content
                 callback ({ "result": "true" })
            else
              error =  new Error "Invalid shorewall posting!"
              callback (error)

          when "client"
            if body.firewall and body.firewallconf

              firewall = ''   
              firewallconf = ''                
              firewall = new Buffer(body.firewall || '',"base64").toString('utf8')  
              firewallconf = new Buffer(body.firewallconf || '',"base64").toString('utf8')     
              filepathFirewall = filepath + 'firewall'   
              filepathFirewallConf = filepath + 'firewall.conf'                        
              fileops.createFile filepathFirewallConf, (result) =>
                  return new Error "Unable to create configuration file for device: #{filepathFirewallConf}!" if result instanceof Error
                  fileops.updateFile filepathFirewallConf, firewall                
              fileops.createFile filepathFirewall, (result) =>
                  return new Error "Unable to create configuration file for device: #{filepathFirewall}!" if result instanceof Error
                  fileops.updateFile filepathFirewall, firewallconf
                  exec "chmod 0700  /var/lib/shorewall-lite/firewall", (err, stdout, stderr) =>
                    unless err instanceof Error
                        callback ({ "result": "true" })
                    else
                        callback (err)
            else
              error =  new Error "Invalid shorewall posting!"
              callback (error)
          else
            error =  new Error "Invalid shorewall posting!"
            callback (error)


module.exports = shorewall
module.exports.schemainterfaces = schemainterfaces
module.exports.schemarules = schemarules
module.exports.schemazones = schemazones
module.exports.schemapolicy = schemapolicy
module.exports.schemaconf = schemaconf
module.exports.schemaroutestopped = schemaroutestopped
module.exports.schemamasq = schemamasq
module.exports.schemarules_new = schemarules_new
module.exports.schematcrules = schematcrules
module.exports.schemaconfigshorewall = schemaconfigshorewall
