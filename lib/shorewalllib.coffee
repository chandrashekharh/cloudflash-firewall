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

schemaconf =
    name: "shorewallconf"
    type: "object"
    additionalProperties: false
    properties:
            commonname :             {"type":"string", "required":true}
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
            commonname :       {"type":"string", "required":true}
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
            commonname :  {"type":"string", "required":true}
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
            commonname :  {"type":"string", "required":true}
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
            commonname : {"type":"string", "required":true}
            'ZONE':      { type: "string", required: true }
            'INTERFACE': { type: "string", required: true }
            'BROADCAST': { type: "string", required: true }
            'OPTIONS':   { type: "string", required: true }

schemaroutestopped =
    name: "shorewallroutestopped"
    type: "object"
    additionalProperties: false
    properties:
            commonname :    {"type":"string", "required":true}
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

    new: (config) ->
        instance = {}
        instance.id = uuid.v4()
        instance.config = config
        return instance

    getConfigByID : (id, callback) ->
        entry = @sdb.get id
        instance = {}
        if entry
            instance.id = id
            instance.config = entry
            callback (entry)
        else
            error = new Error "No entry Found by ID: #{id}"
            callback (error)

    listEntityConfig: (entityName, group, callback) ->
        list = {}
        @sdb.forEach (key, val) ->
            if val and val.entityName == entityName and val.group == group
                result.id = key
                result.config = val
                list.push result
        callback (list)

    listgroupConfig: (group, callback) ->
        list = {}
        @sdb.forEach (key, val) ->
            if val and val.group == group
                result.id = key
                result.config = val
                list.push result
        callback (list)


    updateConfig: (configAdd, group, entityName) ->
       config = ''
       @sdb.forEach (key, val) ->
           if val and val.entityName = entityName and val.group == group
               for ikey, ival of val
                 if ikey isnt 'commonname' 
                   if ikey isnt 'entityName'
                     if ikey isnt 'group'
                       config += "#{ival}"  + "\t"
               console.log 'config is update' + config
               console.log 'config is add ' + configAdd
               if config == configAdd
                 throw new Error "Same config present in file and DB !"
               else
                 return config
                   
    createConfig: (filename, body, group, entityname, entityid, callback) ->
        configtoAdd = ''
        if entityname is 'shorewall.conf'
          for key, val of body
            switch (typeof val)
              when "number", "string"
                if body.STARTUP_ENABLED isnt 'Yes'
                  throw new Error "Invalid firewall conf value of STARTUP_ENABLED  posting! "
                if key isnt 'commonname'
                    configtoAdd += key + '=' + val + "\n"
        else
          for key, val of body
            if key isnt 'commonname'  
              configtoAdd += val + "\t"

        console.log 'config is ' + configtoAdd
        config = @updateConfig configtoAdd, group, entityname
        configtoAdd += "\n"
        if entityname is 'shorewall.conf'
          fileops.updateFile filename, configtoAdd
        console.log 'config after update to file'
        fileops.fileExists filename, (result) =>
          unless result instanceof Error
            if entityname is 'shorewall.conf'
                fileops.updateFile filename, configtoAdd
                console.log 'Updated shorewall.conf file'
            else
              fs.createWriteStream(filename, flags: "a").write configtoAdd, (error) ->
                  return @next new Error "Unable to update file #{filename}!" if error
                  console.log 'Updated configs to file'

          else
              fileops.createFile filename, (result) =>
                  return @next new Error "Unable to create file #{filename}!" if result instanceof Error
                  fileops.updateFile filename, configtoAdd
                  console.log 'file create and updated the configs'

          try
                console.log 'config is in DB'
                instance = {}
                instance.id = entityid
                body.entityName = entityname
                body.group = group
                instance.config = body

                console.log 'config is in DB set'
                @sdb.set entityid, body, ->
                    console.log "#{entityid} added to the database"
                console.log 'config is in DB after set'
                callback( instance )
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
        confflag = 1
        #DB key is group. Entityname is hardcoded as shorewall for simplicity 
        @createConfig filename, body, group, "shorewall.conf", group, (result) =>
            callback (result)


    removeConfig: (group, entityName, entityid, callback) ->
        filename = "/config/shorewall/#{group}/#{entityName}"
        fileops.fileExists filename, (result) =>
            return @next new Error "Configuration does not exist!" unless result instanceof Error
            @sdb.rm entityid, =>
                console.log "removed configuration for id #{entityid}"
                config = @updateConfig "", group, entityName
                fileops.updateFile "/config/shorewall/#{group}/#{entityName}", config
                callback (true)


    run: (action, group, callback) ->
          exec ('sudo /sbin/shorewall load ' + hostname), (err, stdout, stderr) =>




module.exports = shorewall
module.exports.schemainterfaces = schemainterfaces
module.exports.schemarules = schemarules
module.exports.schemazones = schemazones
module.exports.schemapolicy = schemapolicy
module.exports.schemaconf = schemaconf
module.exports.schemaroutestopped = schemaroutestopped

