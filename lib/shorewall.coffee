check = require './checkshorewall'
shorewalllib = require './shorewalllib'

@include = ->

    shorewall = new shorewalllib
    shorewall.sdb

#New API's list


    @post '/firewall/:group/shorewall', check.Configsshorewall, ->
        shorewall.shorewall_config @body, @params.group, "shorewall", (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @post '/firewall/:group/rules', check.rulesConfig, ->
        shorewall.shorewallrules_config @body, @params.group, "rules", @params.entityid, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @post '/firewall/:group/tcrules', check.tcrulesConfig, ->
        shorewall.shorewallrules_config @body, @params.group, "tcrules", @params.entityid, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @post '/firewall/:group/masq', check.masqConfig, ->
        shorewall.shorewallrules_config @body, @params.group, "masq", @params.entityid, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res


    @get '/firewall/:group/:entity' : ->
        shorewall.getConfigByIDs @params.entity, @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"

    @get '/firewall/:group' : ->
        shorewall.listgroupConfigs @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @del '/firewall/:group/:entity' : ->
        shorewall.removeConfigs @params.group, @params.entity, @params.group, (res) =>
            @next res if res instanceof Error
            @send 204

    '''
    @get '/firewall/:group/:entity' : ->
        shorewall.listEntityConfig @params.entity, @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"

    '''  

#NEW API's ENDS here



    @post '/shorewall/server/:group/:entity/:entityid', check.entityConfig, ->
        shorewall.configElement @body, @params.group, @params.entity, @params.entityid, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @post '/shorewall/server/:group/conf', check.shorewallConfig, ->
        shorewall.configShorewall @body, @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res


    @post '/shorewall/server/:group/:action', check.shorewallAction, ->
        shorewall.run @params.action, @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @post '/shorewall/client/:group/:action', check.shorewallAction, ->
        shorewall.clientrun @params.action, @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @post '/shorewall/capabilities/server/:group', ->
        filename = "/config/shorewall/#{@params.group}/capabilities"
        shorewall.caprecv @body, filename, "server", (res) =>
            unless res instanceof Error
                @send res
            else
                @next res 

    @post '/shorewall/firewallfiles/client', ->               
        filedir = "/var/lib/shorewall-lite/"
        shorewall.caprecv @body, filedir, "client", (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @get '/shorewall/server/firewall/:group/scripts', ->
        shorewall.sendfile @params.group, "server", (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @get '/shorewall/client/capabilities/:group', ->
        shorewall.sendfile @params.group, "client", (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    '''
    #Yet to Implement. Configure the shorewall all the entities and shorewall.conf with one API for
    # a given group.
    @post '/shorewall/:group': ->
        shorewall.config @body, @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    '''



    @get '/shorewall/server/:group/:entity/:id' : ->
        shorewall.getConfigByID @params.id, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"

    @get '/shorewall/server/:group/conf' : ->
        shorewall.listEntityConfig "shorewall", @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @get '/shorewall/server/:group/:entity' : ->
        shorewall.listEntityConfig @params.entity, @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @get '/shorewall/server/:group' : ->
        shorewall.listgroupConfig @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @del '/shorewall/server/:group/conf' : ->
        shorewall.removeConfig @params.group, "shorewall.conf", @params.group, (res) =>
            @next res if res instanceof Error
            @send 204

    @del '/shorewall/server/:group/:entity/:id', ->
        shorewall.removeConfig @params.group, @params.entity, @params.id, (res) =>
            @next res if res instanceof Error
            @send 204



