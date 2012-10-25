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
    result = validate body, shorewall.schemapolicy
    console.log result
    callback (result)

validateShorewallRules = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate body, shorewall.schemarules
    console.log result
    callback (result)


validateShorewallRoutestopped = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate body, shorewall.schemaroutestopped
    console.log result
    callback (result)

module.exports.shorewallConfig = validateShorewallconf = ->
    console.log @body
    console.log 'performing schema validation on incoming shorewall JSON'
    result = validate @body, shorewall.schemaconf
    return @next new Error "Invalid Shorewall Config posting!: #{result.errors}" if result instanceof Error
    @next()

module.exports.entityConfig = validateEntity = ->
    console.log 'validate entity ' + @params.entity
    switch (@params.entity)
        when 'interfaces'
            console.log 'Before validate entity '
            validateShorewallInterface @body, (result) =>
                return @next new Error "Invalid Interface posting!: #{result.errors}" if result instanceof Error
                @next()
        when 'zones'
            validateShorewallZones @body, (result) =>
                return @next new Error "Invalid zones posting!: #{result.errors}" if result instanceof Error
                @next()
        when 'rules'
            validateShorewallRules @body, (result) =>
                return @next new Error "Invalid rules posting!: #{result.errors}" if result instanceof Error
                @next()
        when 'policy'
            validateShorewallPolicy @body, (result) =>
                return @next new Error "Invalid policy posting!: #{result.errors}" if result instanceof Error
                @next()
        when 'routestopped'
            validateShorewallRoutestopped @body, (result) =>
                return @next new Error "Invalid routestopped posting!: #{result.errors}" if result instanceof Error
                @next()
        else
            return @next new Error "Invalid config posting!: #{@params.entity}"

                
module.exports.shorewallAction = validateAction = ->
    switch (@params.action)
        when 'start' , 'restart'
            @next()
        else
            return @next new Error "Invalid action posting!: #{@params.action}. Must be either 'start' or 'restart'"

