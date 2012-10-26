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
        shorewall.configShorewall @body, @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next res


    @post '/shorewall/:group/:action', check.shorewallAction, ->
        shorewall.run @body, instance.id, @params.group, @params.action, (res) =>
            unless res instanceof Error
                console.log "/shorewall/start return"
                @send res
            else
                @next res


    @get '/shorewall/:group/:entity/:id' : ->
        shorewall.getConfigByID @params.id, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"

    @get '/shorewall/:group/conf' : ->
        shorewall.listEntityConfig "shorewall", @params.group, (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @get '/shorewall/:group/:entity' : ->
        shorewall.listEntityConfig @params.entity, @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @get '/shorewall/:group' : ->
        shorewall.listgroupConfig @params.group,  (res) =>
            unless res instanceof Error
                @send res
            else
                @next new Error "No Config found. #{res}!"


    @del '/shorewall/:group/conf' : ->
        shorewall.removeConfig @params.group, "shorewall", @params.group, (res) =>
            @next res if res instanceof Error
            @send 204

    @del '/shorewall/:group/:entity/:id', ->
        shorewall.removeConfig @params.group, @params.entity, @params.id, (res) =>
            @next res if res instanceof Error
            @send 204



