cfile = require 'fileops'
validate = require('json-schema').validate
exec = require('child_process').exec
uuid = require 'node-uuid'
fs = require 'fs'
path = require 'path'


@db = db =
    shorewall4: require('dirty') '/tmp/shorewall4.db'

db.shorewall4.on 'load', ->
    console.log 'loaded shorewall4.db'
    db.shorewall4.forEach (key,val) ->
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


class shorewalllib
    constructor: ->
        console.log 'shorewalllib initialized'
        @shorewall4db = db.shorewall4

#### writeConfig: Function to add/modify configuration and update the  db with id
                                                                                                                             
    writeConfig:  (config, id, body, filename, shoreflag) ->
        console.log 'inside writeConfig'
        cfile.fileExists filename, (result) =>
          unless result instanceof Error

              if shoreflag is 1
                cfile.updateFile filename, config, =>
                  return new Error "Unable to create file #{filename}!" if result instanceof Error
                try
                    db.shorewall4.set id, body, ->
                        console.log "#{id} added to shorewall service configuration"
                    return { "result": "true" }
                catch err
                    console.log "result failed"
                    return err

              else 
                fs.createWriteStream(filename, flags: "a").write config, (error) ->
                  return new Error "Unable to update file #{filename}!" if error
                  try
                    db.shorewall4.set id, body, ->
                        console.log "#{id} added to shorewall service configuration"
                    return { "result": "true" }
                  catch err
                    console.log "result failed"
                    return err

          else
              console.log 'inside create file writeConfig'
              cfile.createFile filename, (result) =>
                  return new Error "Unable to create file #{filename}!" if result instanceof Error
                  cfile.updateFile filename, config, =>
                      return new Error "Unable to create file #{filename}!" if result instanceof Error
                      try
                        db.shorewall4.set id, body, ->
                              console.log "#{id} added to shorewall service configuration"
                        return { "result": "true" }
                      catch err
                        console.log "result failed"
                        return err


    new: (config) ->
        instance = {}
        instance.id = uuid.v4()
        instance.config = config
        return instance

    getConfigEntryByKeyparamID: (keyparam, id, callback) ->
        entry = db.shorewall4.get id
        instance = {}
        flag = 0
        if entry
          for key, val of entry
            if val is keyparam
              flag = 1
          if flag == 1
            instance.id = id
            instance.config = entry
            callback( instance )
          else
            error = new Error "Invalid Get request method posting! API entry not present in DB "
            callback (error)
        else
            error = new Error "Invalid Get request method posting! entry not present in DB "
            callback (error)


    getConfigEntryByID: (id, callback) ->
        entry = db.shorewall4.get id
        instance = {}
        if entry
            instance.id = id
            instance.config = entry
            callback( instance )
        else
            error = new Error "Invalid Get request method posting! entry not present in DB "
            callback (error)




# removeConfig: Function to remove configuration with given id

    removeConfig: (id, filename) ->
        console.log 'inside removeConfig'
        entry = db.shorewall4.get id
        if not entry
            console.log "Entry is not present in database"
            throw new Error "Invalid Delete request method posting! API ID entry not present in DB "
        newconfig = ''
        config = ''
        for key, val of entry
            switch (typeof val)
                when "number", "string"
                  if key isnt 'commonname'
                    config += val + "\t"

        console.log "config to be Deleted: " + '\n' + config
        cfile.readFile filename, (result) ->
            throw new Error result if result instanceof Error
            console.log "result: " + '\n' + result
            for line in result.toString().split '\n'
                flag = 0
                if line == config
                    console.log "Found configuration match to delete"
                    flag = 1
                if flag == 0
                    newconfig += line + '\n'
            console.log "newconfig:  " + '\n' + newconfig

            cfile.createFile filename, (result) =>
              return new Error "Unable to create file #{filename}!" if result instanceof Error
              cfile.updateFile filename, newconfig, =>
                return new Error "Unable to create file #{filename}!" if result instanceof Error
            try    
              db.shorewall4.rm id, ->
                console.log "removed config id From DB: #{id}"
              return { "Deleted": "true" }

            catch err
              console.log "result failed to remove shorewall configs!"
              return err


            
    shoreconfig: (body, keyval, typeparam, instanceid, filename, callback) ->
        console.log "am in shoreconfig filename:" + filename
        shorebody = {}
        shorebody.shorekey = keyval
        shorebody.shoreconfig = body
        config = ''
        result = @keyvalue keyval, typeparam
        throw Error new Error "Unable to create file #{filename}!" if result instanceof Error
        
        console.log "after callback"

        for key, val of body
            if key isnt 'commonname'
                  config += val + "\t"
        console.log "config: " + config
        config += "\n"
        shoreflag = 0
        result = @writeConfig config , instanceid, shorebody, filename, shoreflag
        unless result instanceof Error
            myinstance = {}
            myinstance.id = instanceid
            myinstance.config = shorebody
            callback( myinstance )
       
        else
            err = new Error "Invalid firewall method posting! #{typeparam}"
            callback err



    keyvalue: (keyval, typeparam ) ->
    
        if keyval is 'interfaces'
          console.log "in interfaces"
          switch(typeparam.toLowerCase())
            when 'net', 'loc', 'dmz'
              console.log 'am in interfaces'
              return true
            else
              console.log "in interfaces throw error"
              err = new Error "Invalid firewall method posting! #{typeparam}"
              return err

        if keyval is 'zones'
          console.log "in zones"
          switch (typeparam.toLowerCase())
            when 'net', 'loc', 'dmz', 'fw'
              console.log "in zones return true"
              return true             
            else
              err = new Error "Invalid firewall method posting! #{typeparam}"
              return err

        if keyval is 'policy'
          switch (typeparam.toLowerCase())
            when 'net', 'loc', 'dmz', 'fw', 'all'
              return true              
            else
              err = new Error "Invalid firewall method posting! #{typeparam}"
              return err

        if keyval is 'rules'
          switch (typeparam.toLowerCase())
            when 'dnat', 'nonat', 'accept', 'drop', 'reject', 'queue', 'nfqueue', 'redirect'
              return true              
            else
              err = new Error "Invalid firewall method posting! #{typeparam}"
              return err

        if keyval is 'routestopped'
          switch (typeparam.toLowerCase())
            when 'eth0', 'eth1', 'eth2', 'eth3', 'eth4', 'tun0', 'tun1', 'tap0', 'tap1'
              return true              
            else
              err = new Error "Invalid firewall method posting! #{typeparam}"
              return err
        

    listofConfig: (keyparam, cname, callback) ->
        res = {"config":[]}
        db.shorewall4.forEach (key,val) ->
            if val.shoreconfig.commonname is cname
              if val.shorekey is keyparam
                res.config.push ('id:' + key) 
                res.config.push val
        callback(res)
 

    shorewallconf: (body, instanceid, callback) ->
        config = ''
        for key, val of body
          switch (typeof val)
              when "number", "string"
                if body.STARTUP_ENABLED isnt 'Yes'
                  throw new Error "Invalid firewall conf value of STARTUP_ENABLED  posting! "
                if key isnt 'commonname'
                    config += key + '=' + val + "\n"

        filename = ('/config/shorewall/' + body.commonname + '/shorewall.conf')
        console.log "filename is :" + filename
        try
            console.log "write shorewall config to #{filename}..."
            shorebody = {}
            shorebody.shorekey = 'shorewall.conf'
            shorebody.shoreconfig = body
            shoreflag = 1
            result = @writeConfig config , instanceid, shorebody, filename, shoreflag
            unless result instanceof Error
              myinstance = {}
              myinstance.id = instanceid
              myinstance.config = shorebody
              callback( myinstance )
       
            else
              err = new Error "Invalid firewall method posting! #{typeparam}"
              callback err

        catch err
            console.log "In shorewall.conf function try-catch error"
            callback err


#### To start the shorewall on shorewall-lite clients
#### Needs to modify/integrate with webproxy personality module to send the commands to be executed

    shorestart: (body, instanceid, callback) -> 
        try
            for key, val of body
              if key isnt 'commonname'
                  console.log "am here"
                  hostname = body.commonname
                  console.log "Client IP address is: " + hostname
                  exec ('sudo /sbin/shorewall load ' + hostname), (err, stdout, stderr) =>
                      unless err
                          console.log stdout

            db.shorewall4.set instanceid, body, =>
                console.log "#{instanceid} added to shorewall service configuration"
                console.log body
                callback ({ "result" : "success" })

        catch err
            console.log "In shorestart function try-catch error"
            callback err


#### To Get the status/stop/clear the rules on shorewall-lite clients
#### Needs to modify/integrate with webproxy personality module to send the commands to be executed

    shorestat: (body, instanceid, callback) ->
        try
            for key, val of body
              if key isnt 'commonname'
                  shcmd = body.command
                  hostname = body.commonname
                  console.log "Client IP address is: " + hostname
                  exec 'ssh root@' + hostname + ' ' + '/sbin/shorewall-lite ' + shcmd, (err, stdout, stderr) =>
                      unless err
                          console.log stdout

            db.shorewall4.set instanceid, body, =>
                console.log "#{instanceid} added to shorewall service configuration"
                console.log body
                callback ({ "result" : "success" })

        catch err
            console.log "In shorestat function try-catch error"
            callback err



module.exports = shorewalllib
module.exports.schemainterfaces = schemainterfaces
module.exports.schemarules = schemarules
module.exports.schemazones = schemazones
module.exports.schemapolicy = schemapolicy
module.exports.schemaconf = schemaconf
module.exports.schemaroutestopped = schemaroutestopped

