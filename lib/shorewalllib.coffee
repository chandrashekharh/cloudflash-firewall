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
            callback (instance)
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
        list = {"first","interfaces","zones", "policies", "rules", "routestopped", "shorewall", "end"}
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
        #overwrite to have our path in the configuration 
        body.CONFIG_PATH = "/etc/shorewall:/usr/share/shorewall:/config/shorewall/#{group}"
        for key, val of body
            if entityname == 'shorewall'
                configtoAdd += "#{key}" + "=" + "#{ival}" + "\n"
                if body.STARTUP_ENABLED isnt 'Yes'
                  throw new Error "Invalid firewall conf value of STARTUP_ENABLED  posting! "
            else
                configtoAdd += val + "\t"
        configtoAdd += "\n"

        #remove the duplicate entry in DB
        entry = @sdb.get entityid
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
                callback ({config:body})
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
        return @next new Error "Configuration does not exist!" if res instanceof Error
        @sdb.rm entityid, =>
            config = @updateConfig "", group, entityName
            fileops.updateFile filename, config
            callback (true)


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
            exec ("sudo /sbin/shorewall compile  -e  #{conf_dir}  #{conf_dir}/firewall"), (err, stdout, stderr) =>
                unless err instanceof Error
                    callback ({ "result": "#{stdout}" })
                else
                    callback (err)


#Function to start the  firewall rules on shorewall-lite client

    clientrun: (action, group, callback) ->
        switch (action)
            when 'status', 'stop', 'clear', 'start', 'restart'
              exec ("sudo /sbin/shorewall   #{action}" ), (err, stdout, stderr) =>
                  unless err instanceof Error
                      callback ({ "result": "#{stdout}" })
                  else
                      callback (err)
            else
                error = new Error "Invalid action:  #{action}!"
                callback (error)


#Function to send the firewall and firewall.conf files to orchestration

    sendfile: (firewallfile, group, callback) ->
            filename = firewallfile
            reresult = {}
            result.file = "#{filename}"
            switch filename
                when 'firewall', 'firewall.conf'
                   # filepath need to be changed
                   filepath = "/config/shorewall/#{group}/#{filename}"
                   stream = fs.createReadStream filepath, encoding: 'utf8'
                   stream.on 'open', ->
                       console.log "read stream #{filename}"
                       stream.on 'data', (data) ->
                           result.content = data
                           callback (result)
                       stream.on 'end', ->
                           console.log 'end: '

                   stream.on 'error', (error) ->
                       console.log 'error: ' + error
                       @next new Error "Invalid shorewall filepath #{filepath} posting! #{error}"
                else
                   @next new Error "Invalid shorewall filename posting! #{filename}"
                   error = "Invalid shorewall filename posting! #{filename}"
                   callback (error)

#Function to copy the capabilities file to respective client groups directory

    caprecv: (body, group, callback) ->
            filename = "/config/shorewall/#{group}/#{body.file}"
            fileops.createFile filename, (result) =>
                @next new Error "Unable to create configuration file for device: #{body.file}!" if result instanceof Error
                fileops.updateFile filename, body.content
                callback ({ "result": "true" })


module.exports = shorewall
module.exports.schemainterfaces = schemainterfaces
module.exports.schemarules = schemarules
module.exports.schemazones = schemazones
module.exports.schemapolicy = schemapolicy
module.exports.schemaconf = schemaconf
module.exports.schemaroutestopped = schemaroutestopped

