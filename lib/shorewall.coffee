# validation is used by other modules
validate = require('json-schema').validate
shorewalllib = require './shorewalllib'
uuid = require 'node-uuid'
cfile = require 'fileops'
exec = require('child_process').exec

@include = ->
    shorewall = new shorewalllib
    shorewall.shorewall4db

#### Validate the shorewall configurations

    validateShorewallzones = ->
        console.log @body
        console.log 'performing schema validation on incoming shorewall JSON'
        result = validate @body, shorewalllib.schemazones
        console.log result
        return @next new Error "Invalid service posting!: #{result.errors}" unless result.valid
        @next()

    validateShorewallinterfaces = ->
        console.log @body
        console.log 'performing schema validation on incoming shorewall JSON'
        result = validate @body, shorewalllib.schemainterfaces
        console.log result
        return @next new Error "Invalid service posting!: #{result.errors}" unless result.valid
        @next()

    validateShorewallpolicy = ->
        console.log @body
        console.log 'performing schema validation on incoming shorewall JSON'
        result = validate @body, shorewalllib.schemapolicy
        console.log result
        return @next new Error "Invalid service posting!: #{result.errors}" unless result.valid
        @next()

    validateShorewallrules = ->
        console.log @body
        console.log 'performing schema validation on incoming shorewall JSON'
        result = validate @body, shorewalllib.schemarules
        console.log result
        return @next new Error "Invalid service posting!: #{result.errors}" unless result.valid
        @next()

    validateShorewallconf = ->
        console.log @body
        console.log 'performing schema validation on incoming shorewall JSON'
        result = validate @body, shorewalllib.schemaconf
        console.log result
        return @next new Error "Invalid service posting!: #{result.errors}" unless result.valid
        @next()

    validateShorewallroutestopped = ->
        console.log @body
        console.log 'performing schema validation on incoming shorewall JSON'
        result = validate @body, shorewalllib.schemaroutestopped
        console.log result
        return @next new Error "Invalid service posting!: #{result.errors}" unless result.valid
        @next()

#### POST API's


    @post '/shorewall/rules/:rulesname', validateShorewallrules, ->
        instance = shorewall.new @body
        return @next new Error "Duplicate config ID detected!" if  shorewall.shorewall4db.get instance.id
        filename = "/config/shorewall/#{@body.commonname}/rules"
        shorewall.shoreconfig @body, 'rules', @params.rulesname, instance.id, filename, (res) =>
            unless res instanceof Error
                console.log "return from shoreconfig function"
                @send res
            else
                @send res


    @post '/shorewall/zones/:zonesname', validateShorewallzones, ->
        instance = shorewall.new @body
        return @next new Error "Duplicate config ID detected!" if  shorewall.shorewall4db.get instance.id
        filename = "/config/shorewall/#{@body.commonname}/zones"
        shorewall.shoreconfig @body, 'zones', @params.zonesname, instance.id, filename, (res) =>
            unless res instanceof Error
                console.log "return from shoreconfig function"
                @send res
            else
                @send res


    @post '/shorewall/interfaces/:ifacename', validateShorewallinterfaces, ->
        instance = shorewall.new @body   
        return @next new Error "Duplicate ID detected!" if  shorewall.shorewall4db.get instance.id
        filename = "/config/shorewall/#{@body.commonname}/interfaces"
        shorewall.shoreconfig @body, 'interfaces', @params.ifacename, instance.id, filename, (res) =>
            unless res instanceof Error
                console.log "return from shoreconfig function"
                @send res
            else
                @send res


    @post '/shorewall/policy/:policyname', validateShorewallpolicy, ->
        instance = shorewall.new @body
        return @next new Error "Duplicate ID detected!" if  shorewall.shorewall4db.get instance.id
        filename = "/config/shorewall/#{@body.commonname}/policy"
        shorewall.shoreconfig @body, 'policy', @params.policyname, instance.id, filename, (res) =>
            unless res instanceof Error
                console.log "return from shoreconfig function"
                @send res
            else
                @send res


    @post '/shorewall/routestopped/:rstopped', validateShorewallroutestopped, ->
        instance = shorewall.new @body
        return @next new Error "Duplicate ID detected!" if  shorewall.shorewall4db.get instance.id
        filename = "/config/shorewall/#{@body.commonname}/routestopped"
        shorewall.shoreconfig @body, 'routestopped', @params.rstopped, instance.id, filename, (res) =>
            unless res instanceof Error
                console.log "return from shoreconfig function"
                @send res
            else
                @send res


    @post '/shorewall/conf', validateShorewallconf, ->
        console.log "inside @post shorewall/conf"
        instance = shorewall.new @body
        return @next new Error "Duplicate config ID detected!" if shorewall.shorewall4db.get instance.id
        shorewall.shorewallconf @body, instance.id, (res) =>
            unless res instanceof Error
                console.log "return from shorewall conf function"
                @send res
            else
                @send res


    @post '/shorewall/start', ->
        console.log "Inside the start API"
        instance = shorewall.new @body
        return @next new Error "Duplicate config ID detected!" if  shorewall.shorewall4db.get instance.id
        shorewall.shorestart @body, instance.id, (res) =>            
            unless res instanceof Error
                console.log "/shorewall/start return"
                @send res
            else
                @send res


    @post '/shorewall/status/:stats', ->
        console.log "Inside the stats API "
        instance = shorewall.new @body
        return @next new Error "Duplicate config ID detected!" if  shorewall.shorewall4db.get instance.id
        shorewall.shorestat @body, instance.id, (res) =>
            unless res instanceof Error
                console.log "/shorewall/status return"
                @send res
            else
                @send res


#### To get the list of configurations POST deatils for any config files like rules, interfaces, zones, routestopped, policy, etc.

    @get '/shorewall/configs/:configname/:hostname' : ->
        shorewall.listofConfig @params.configname, @params.hostname, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "Invalid configuration listing! #{res}"


#### To get the configuration of any POST deatils with respective ID from DB

    @get '/shorewall/:id' : ->
        shorewall.getConfigEntryByID @params.id, (res) =>
            unless res instanceof Error
                console.log "Get Info of /shorewall/ " + @params.id
                @send res
            else
                @next new Error "Invalid shorewall conf getting! #{res}"


#### To get the configuration of POST deatils with respective ID

    @get '/shorewall/conf/:id' : ->
        shorewall.getConfigEntryByKeyparamID 'shorewall.conf', @params.id, (res) =>
            unless res instanceof Error
                console.log "Get Info of /shorewall/conf" + @params.id
                @send res
            else
                @next new Error "Invalid shorewall conf getting! #{res}"

    @get '/shorewall/rules/:id' : ->
        shorewall.getConfigEntryByKeyparamID 'rules', @params.id, (res) =>
            unless res instanceof Error
                console.log "Get info of /shorewall/rules/" + @params.id
                @send res
            else
                @next new Error "Invalid shorewall rules getting! #{res}"
  
 
    @get '/shorewall/policy/:id' : ->
        shorewall.getConfigEntryByKeyparamID 'policy', @params.id, (res) =>
            unless res instanceof Error
                console.log "Get info of  /shorewall/policy/" + @params.id
                @send res
            else
                @next new Error "Invalid policy request getting! #{res}"


    @get '/shorewall/interfaces/:id' : ->
        shorewall.getConfigEntryByKeyparamID 'interfaces',@params.id, (res) =>
            unless res instanceof Error
                console.log "Get info of /shorewall/interfaces/" + @params.id
                @send res
            else
                @next new Error "Invalid shorewall interfaces zone getting! #{res}"


    @get '/shorewall/zones/:id' : ->
        shorewall.getConfigEntryByKeyparamID 'zones', @params.id, (res) =>
            unless res instanceof Error
                console.log "Get info of  /shorewall/zones/" + @params.id
                @send res
            else
                @next new Error "Invalid shorewall zones  getting! #{res}"


    @get '/shorewall/routestopped/:id' : ->
        shorewall.getConfigEntryByKeyparamID 'routestopped', @params.id, (res) =>
            unless res instanceof Error
                console.log "Get info of  /shorewall/routestopped/" + @params.id
                @send res
            else
                @next new Error "Invalid shorewall routestopped  getting! #{res}"



#### Delete the POST values in files and DB with respective ID request


    @del '/shorewall/rules/:cname/:id', ->
        console.log "inside @del rules"
        filename = "/config/shorewall/#{@params.cname}/rules"
        console.log filename
        result = shorewall.removeConfig @params.id, filename
        @send result

 
    @del '/shorewall/policy/:cname/:id', ->
        console.log "inside @del policy "
        filename = "/config/shorewall/#{@params.cname}/policy"
        console.log filename
        result = shorewall.removeConfig @params.id, filename
        @send result

 
    @del '/shorewall/interfaces/:cname/:id', ->
        console.log "inside @del intefaces "
        filename = "/config/shorewall/#{@params.cname}/interfaces"
        console.log filename
        result = shorewall.removeConfig @params.id, filename
        @send result


    @del '/shorewall/zones/:cname/:id', ->
        console.log "inside @del zones"
        filename = "/config/shorewall/#{@params.cname}/zones"
        console.log filename
        result = shorewall.removeConfig @params.id, filename
        @send result

 
    @del '/shorewall/conf/:cname/:id', ->
        console.log "inside @del shorewall.conf"
        filename = "/config/shorewall/#{@params.cname}/shorewall.conf"
        console.log filename
        result = shorewall.removeConfig @params.id, filename
        @send result


    @del '/shorewall/routestopped/:cname/:id', ->
        console.log "inside @del routestopped"
        filename = "/config/shorewall/#{@params.cname}/routestopped"
        console.log filename
        result = shorewall.removeConfig @params.id, filename
        @send result



