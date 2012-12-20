validate = require('json-schema').validate
shorewall = new require './shorewalllib'

#NEW API validate STARTS HERE

module.exports.Configsshorewall = validateConfigShorewallcpn = ->
    console.log 'Before validate shorewall configs JSON schema '
    validateConfigShorewall @body, (result) =>
        return @next new Error "Invalid newrules posting!: #{result.errors}" unless result.valid
        @next()

validateConfigShorewall = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming group configs of shorewall JSON'
    result = validate body, shorewall.schemaconfigshorewall
    console.log result
    callback (result)


module.exports.tcrulesConfig = validatetcrulesShorewallcpn = ->
    console.log 'Before validate tcrules configs JSON schema '
    validatetcrulesShorewall @body, (result) =>
        return @next new Error "Invalid newrules posting!: #{result.errors}" unless result.valid
        @next()

validatetcrulesShorewall = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming tcrules shorewall JSON'
    result = validate body, shorewall.schematcrules
    console.log result
    callback (result)

module.exports.rulesConfig = validatenewrulesShorewallcpn = ->
    console.log 'Before validate rules configs JSON schema '
    validatenewrulesShorewall @body, (result) =>
        return @next new Error "Invalid newrules posting!: #{result.errors}" unless result.valid
        @next()

validatenewrulesShorewall = (body, callback) ->
    console.log JSON.stringify(body)
    console.log 'performing schema validation on incoming rules shorewall JSON'
    result = validate body, shorewall.schemarules_new
    console.log result
    callback (result)


module.exports.masqConfig = validatemasqShorewallcpn = ->
    console.log 'Before validate masq configs JSON schema '
    validatemasqShorewall @body, (result) =>
        return @next new Error "Invalid newrules posting!: #{result.errors}" unless result.valid
        @next()

validatemasqShorewall = (body, callback) ->
    console.log body
    console.log 'performing schema validation on incoming masq shorewall JSON'
    result = validate body, shorewall.schemamasq
    console.log result
    callback (result)

#NEW API validate ENDS HERE


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
                return @next new Error "Invalid Interface posting!: #{result.errors}" unless result.valid
                @next()
        when 'zones'
            validateShorewallZones @body, (result) =>
                return @next new Error "Invalid zones posting!: #{result.errors}" unless result.valid
                @next()
        when 'rules'
            validateShorewallRules @body, (result) =>
                return @next new Error "Invalid rules posting!: #{result.errors}" unless result.valid
                @next()
        when 'policy'
            validateShorewallPolicy @body, (result) =>
                return @next new Error "Invalid policy posting!: #{result.errors}" unless result.valid
                @next()
        when 'routestopped'
            validateShorewallRoutestopped @body, (result) =>
                return @next new Error "Invalid routestopped posting!: #{result.errors}" unless result.valid
                @next()
        else
            return @next new Error "Invalid config posting!: #{@params.entity}"

module.exports.shorewallAction = validateAction = ->
    switch (@params.action)
        when 'start' , 'restart', 'status', 'stop', 'clear', 'capabilities', 'build', 'rebuild'
            @next()
        else
            return @next new Error "Invalid action posting!: #{@params.action}. Must be either 'start' 'stop', 'clear', 'restart', 'capabilities', 'build' or 'rebuild' "

