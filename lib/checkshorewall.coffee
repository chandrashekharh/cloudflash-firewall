validate = require('json-schema').validate
shorewall = new require './shorewalllib'

validateShorewallZones = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate body, shorewall.schemazones
    console.log result
    callback (result)

validateShorewallInterface = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate body, shorewall.schemainterfaces
    console.log result
    callback (result)

validateShorewallPolicy = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate body, shorewalllib.schemapolicy
    console.log result
    callback (result)

validateShorewallRules = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate body, shorewalllib.schemarules
    console.log result
    callback (result)


validateShorewallRoutestopped = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate body, shorewalllib.schemaroutestopped
    console.log result
    callback (result)

module.exports.shorewallConfig = validateShorewallconf = ->
    console.log @body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate @body, shorewalllib.schemaconf
    return @next new Error "Invalid Shorewall Config posting!: #{result.errors}" unless result instanceof Error
    @next()

modules.exports.entityConfig = validateEntity = ->
    console.log 'validate entity ' + @params.entity
    switch (@params.entity)
        when 'interfaces'
            validateShorewallInterface @body, (result) =>
                return @next new Error "Invalid Interface posting!: #{result.errors}" unless result instanceof Error
                @next()
        when 'zones'
            validateShorewallZones @body, (result) =>
                return @next new Error "Invalid zones posting!: #{result.errors}" unless result instanceof Error
                @next()
        when 'rules'
            validateShorewallRules @body, (result) =>
                return @next new Error "Invalid rules posting!: #{result.errors}" unless result instanceof Error
                @next()
        when 'policy'
            validateShorewallPolicy @body, (result) =>
                return @next new Error "Invalid policy posting!: #{result.errors}" unless result instanceof Error
                @next()
        when 'routestopped'
            validateShorewallRoutestopped @body, (result) =>
                return @next new Error "Invalid routestopped posting!: #{result.errors}" unless result instanceof Error
                @next()
        else
            return @next new Error "Invalid config posting!: #{@params.entity}"

                
modules.exports.shorewallAction = validateAction = ->
    switch (@params.action)
        when 'start' , 'restart'
            @next()
        else
            return @next new Error "Invalid action posting!: #{@params.action}. Must be either 'start' or 'restart'"

