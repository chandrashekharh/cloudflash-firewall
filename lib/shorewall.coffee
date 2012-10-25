shorewall = new require './shorewall'
check = require './checkshorewall'
shorewalllib = require './shorewalllib'

@include = ->

    shorewall = new shorewalllib
    shorewall.sdb

    @post '/shorewall/:group/:entity/:entityid', check.entityConfig, ->
        shorewall.configElement @body, @params.group, @params.entity, @params.entityid, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res

    @post '/shorewall/:group/conf', check.shorewallConfig, ->
        console.log 'config is in conf'
        shorewall.configShorewall @body, @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res


    @post '/shorewall/:group/:action', check.shorewallAction, ->
        console.log 'config is in action'
        shorewall.run @body, instance.id, @params.group, @params.action, (res) =>
            unless res instanceof Error
                console.log "/shorewall/start return"
                @send res
            else
                @next res


    @get '/shorewall/:group/:entity/:id' : ->
        console.log 'config is in group entity get'
        shorewall.getConfigByID @params.id, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"

    @get '/shorewall/shorewallconf/:group/conf' : ->
        shorewall.listEntityConfig "shorewall.conf", @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @get '/shorewall/:group/:entity' : ->
        console.log '/shorewall/:group/:entity end point'
        shorewall.listEntityConfig @params.entity, @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @get '/shorewall/:group' : ->
        console.log '/shorewall/:group end point'
        shorewall.listgroupConfig @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @del '/shorewall/:group/conf' : ->
        console.log "Am in /shorewall/:group/conf end point"
        shorewall.removeConf @params.group, "shorewall.conf", @params.group, (res) =>
            @next res if res instanceof Error
            @send 204

    @del '/shorewall/:group/:entity/:id', ->
        shorewall.removeConfig @params.group, @params.entity, @params.id, (res) =>
            @next res if res instanceof Error
            @send 204



