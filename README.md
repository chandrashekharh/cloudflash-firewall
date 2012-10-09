cloudflash-firewall (Shorewall-4.4.11)
====================================

Shorewall Central Administrative Server : 
----------------------------------------

Shorewall is a gateway/firewall/router/server/'standalone system' configuration tool for GNU/Linux systems. it is a high-level tool for configuring Netfilter on firewall requirements using entries in a set of configuration files. Shorewall has the capability to compile a Shorewall configuration and produce a runnable firewall program script. The script is a complete program which can be placed on a system with Shorewall-Lite installed and can serve as the firewall creation script for that system(Shorewall Lite), Shorewall is not a daemon/process.

Shorewall-lite(clients):
------------------------

Shorewall Lite is a companion product to Shorewall and is designed to allow you to maintain all Shorewall configuration information on a single system within our network. Also called as firewall system.

Shorewall supports JSON data serialization format. The format for both the request and the response should be specified by using the Content-Type header, the Accept header.

*List of APIs :*
----------------

<table>
  <tr>
    <th>Verb</th><th>URI</th><th>Description</th>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall</td><td>List summary of shorewall services installed in VCG identified by service ID</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall</td><td>Create a new service for shorewall in VCG</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/conf</td><td>Create a new shorewall configuaration service for shorewall in VCG</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/:shorewall-ID/conf</td><td>Describes an installed shorewall configuaration service in VCG by service ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/:shorewall-ID/conf</td><td>Delete an installed shorewall configuaration service in VCG by service ID</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/zones</td><td>Create a new shorewall zones configuartion service for shorewall in VCG</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/:shorewall-ID/zones</td><td>Describes an installed  shorewall zones configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/:shorewall-ID/zones</td><td>Delete an installed shorewall zones configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/interfaces</td><td>Create a new shorewall interfaces configuartion service for shorewall in VCG</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/:shorewall-ID/interfaces</td><td>Describes an installed shorewall interfaces configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/:shorewall-ID/interfaces</td><td>Delete an installed  shorewall interfaces configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/policy</td><td>Create a new shorewall policy configuartion service for shorewall in VCG</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/:shorewall-ID/policy</td><td>Describes an installed shorewall policy configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/:shorewall-ID/policy</td><td>Delete an installed  shorewall policy configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/rules/</td><td>Create a new shorewall rules configuartion service for shorewall in VCG</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/:shorewall-ID/rules</td><td>Describes an installed shorewall rules configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/:shorewall-ID/rules</td><td>Delete an installed  shorewall rules configuartion service in VCG by service ID</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/start/</td><td>Start a new shorewall service for shorewall-lite client from shorewall server in VCG</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/restart</td><td>Restart a new shorewall service for shorewall-lite client from shorewall server in VCG</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/status</td><td>Get the status of running shorewall rules service on shorewall-lite clients from shorewall server in VCG by service ID</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/stop</td><td>Stop the running shorewall rules service on shorewall-lite clients from shorewall server in VCG </td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/clear</td><td>Clear the running shorewall rules service on shorewall-lite clients from shorewall server in VCG</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/:shorewall-ID/routestopped</td><td>Hosts that are accessible when the firewall is stopped or is being stopped on shorewall-lite clients from shorewall server in VCG</td>
  </tr>


</table>


*Shorewall Service API's*
=======================

**Describe Service:**

    Verb  URI                                    Description
    POST /shorewall/:shorewall-ID/create         Creates the shorewall services on server /cleint

 It validates Input JSON format  by schema, downloads the  Debian/RPM packages  from the link and install on respective clients/server, It should create the shorewall service on the system

###Request JSON :

    {
        "commonname": "hostname of client/server",
        "name": "shorewall",
        "family": "remote-access",
        "version": "4.4.11",
        "pkgurl": "http://CP-url.com/shorewall_4.4.11.6-3+squeeze1_all.deb"
    }
    
###Response JSON :

Shorewall/shorewall-lite Debian/RPM packages will install and response with 
True along with the host name of system installed


    {
        "id": "61df014d-90cd-4f6f-8928-0a3aadff4658",
        "description": {
            "Hostname": "clientserverhostname",
            "version": "4.4.11",
            "name": "shorewall",
            "family": "remote-access",
            "pkgurl": "http: //CP-url.com/shorewall_4.4.11.6-3+squeeze1_all.deb",
            "id": "48c8d63e-1a3e-4f99-bf2b-a8c5c57afe8d"
        },
        "api": "shorewall_service",
        "status": {
            "installed": "true/false"
        }
    }



Get Service API:
---------------

**Describe Service:**

    Verb  URI                                    Description
    GET   /shorewall/:shorewall-ID/create	      Lists summary of create services configured in VCG identified by service ID.
    
###Request JSON :

    {
        "commonname": "hostname of client/server",
    } 
    
###Response JSON :

    {
        "commonname": "hostname of client/server",
        "Installed_status": "true/false",
        "api": "shorewall_service",
        "status": {
            "installed": "true/false"
        }
    }
    

DELETE API :
-----------

**Delete Description :**

    Verb  URI                                    Description
    DELETE   /shorewall/:shorewall-ID/create     Deletes services configured in VCG identified by service ID.
    
Delete the shorewall.conf with  respective service  ID  and hostname of client

###Request Header :
  
    DELETE /shorewall/:shorewall-ID/create

###Response JSON :

    {deleted: true }

Note: The Delete request does not require a message body.
Success: Returns JSON data with the services uninstalled on VCG.
with delete as true, Each service is identified by service ID


Shorewall  Configuration API's:
--------------------------------

  1. POST /services/service-id/shorewall/shorewall.conf
  2. POST /services/service-id/shorewall/policy/(net/loc/dmz/fw/all)
  3. POST /services/service-id/shorewall/rules/(accept/reject/drop/dnat/redirect/nonat/queue/nfqueue) 
  4. POST /services/service-id/shorewall/zones/(fw/net/loc/dmz)
  5. POST /services/service-id/shorewall/interfaces/(net/loc/dmz)
  6. POST /services/service-id/shorewall/routestopped 

POST API :
----------

**POST  /shorewall/:shorewall-ID/conf**

Conf API will configure the shorewall.conf file, which is a global configuration file for shorewall, This file sets options that apply to Shorewall as a whole.

**Describe Service:**

    Verb  URI                                             Description
    POST  /shorewall/:shorewall-ID/conf                   Creates/updates the configurations of shorewall.conf file

###Request JSON : 
  

    {
        "commonname": "hostname of client",
        "id": "48c8d63e-1a3e-4f99-bf2b-a8c5c57afe8d",
        "STARTUP_ENABLED": "Yes",
        "VERBOSITY": "1",
        "LOGFILE": "/var/log/messages",
        "STARTUP_LOG": "/var/log/shorewall-init.log",
        "LOG_VERBOSITY": "2",
        "LOGFORMAT": "Shorewall:%s:%s:",
        "LOGTAGONLY": "No",
        "LOGRATE": "",
        "LOGBURST": "",
        "LOGALLNEW": "",
        "BLACKLIST_LOGLEVEL": "",
        "MACLIST_LOG_LEVEL": "info",
        "TCP_FLAGS_LOG_LEVEL": "info",
        "SMURF_LOG_LEVEL": "info",
        "LOG_MARTIANS": "Yes",
        "IPTABLES": "",
        "IP": "",
        "TC": "",
        "IPSET": "",
        "PERL": "/usr/bin/perl",
        "PATH": "/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin",
        "SHOREWALL_SHELL": "/bin/sh",
        "SUBSYSLOCK": "",
        "MODULESDIR": "",
        "CONFIG_PATH": "/etc/shorewall:/usr/share/shorewall",
        "RESTOREFILE": "",
        "IPSECFILE": "zones",
        "LOCKFILE": "",
        "DROP_DEFAULT": "Drop",
        "REJECT_DEFAULT": "Reject",
        "ACCEPT_DEFAULT": "none",
        "QUEUE_DEFAULT": "none",
        "NFQUEUE_DEFAULT": "none",
        "RSH_COMMAND": "'ssh ${root}@${system} ${command}'",
        "RCP_COMMAND": "'scp ${files} ${root}@${system}:${destination}'",
        "IP_FORWARDING": "Keep",
        "ADD_IP_ALIASES": "No",
        "ADD_SNAT_ALIASES": "No",
        "RETAIN_ALIASES": "No",
        "TC_ENABLED": "Internal",
        "TC_EXPERT": "No",
        "TC_PRIOMAP": "2 3 3 3 2 3 1 1 2 2 2 2 2 2 2 2",
        "CLEAR_TC": "Yes",
        "MARK_IN_FORWARD_CHAIN": "No",
        "CLAMPMSS": "No",
        "ROUTE_FILTER": "Yes",
        "DETECT_DNAT_IPADDRS": "No",
        "MUTEX_TIMEOUT": "60",
        "ADMINISABSENTMINDED": "Yes",
        "BLACKLISTNEWONLY": "Yes",
        "DELAYBLACKLISTLOAD": "No",
        "MODULE_SUFFIX": "ko",
        "DISABLE_IPV6": "No",
        "BRIDGING": "No",
        "DYNAMIC_ZONES": "No",
        "PKTTYPE": "Yes",
        "NULL_ROUTE_RFC1918": "No",
        "MACLIST_TABLE": "filter",
        "MACLIST_TTL": "",
        "SAVE_IPSETS": "No",
        "MAPOLDACTIONS": "No",
        "FASTACCEPT": "No",
        "IMPLICIT_CONTINUE": "No",
        "HIGH_ROUTE_MARKS": "No",
        "USE_ACTIONS": "Yes",
        "OPTIMIZE": "0",
        "EXPORTPARAMS": "Yes",
        "EXPAND_POLICIES": "Yes",
        "KEEP_RT_TABLES": "No",
        "DELETE_THEN_ADD": "Yes",
        "MULTICAST": "No",
        "DONT_LOAD": "",
        "AUTO_COMMENT": "Yes",
        "MANGLE_ENABLED": "Yes",
        "USE_DEFAULT_RT": "No",
        "RESTORE_DEFAULT_ROUTE": "Yes",
        "AUTOMAKE": "No",
        "WIDE_TC_MARKS": "No",
        "TRACK_PROVIDERS": "No",
        "ZONE2ZONE": "2",
        "ACCOUNTING": "Yes",
        "DYNAMIC_BLACKLIST": "Yes",
        "OPTIMIZE_ACCOUNTING": "No",
        "LOAD_HELPERS_ONLY": "No",
        "REQUIRE_INTERFACE": "No",
        "FORWARD_CLEAR_MARK": "Yes",
        "BLACKLIST_DISPOSITION": "DROP",
        "MACLIST_DISPOSITION": "REJECT",
        "TCP_FLAGS_DISPOSITION": "DROP"
    } 
  

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  



DELETE API:
-----------

    Verb  URI                                             Description
    DELETE /shorewall/:shorewall-ID/conf                  Deletes the configurations on shorewall.conf file

###Request JSON:

    {
        "commonname": "hostname of client/server",
        "id": "48c8d63e-1a3e-4f99-bf2b-a8c5c57afe8d"
    } 
    
###Response JSON :

    {deleted: true }


GET API:
---------

###Request Header :

**Describe Service:**

    Verb  URI                                                                 Description
    GET /shorewall/:shorewall-ID/conf                                         Description of the API get configured

###Response JSON :

    {
       "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",
       "commonname": "hostname of client",
       "description": {
           "version": "4.4",
           "name": "shorewall.conf",
           "family": "remote-access",
           "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b7"
       },
       "status": {
             "initialized": "true",
             "result": "true"
       }
    }



**Interface API's:** 

Interfaces API's configures the shorewall interfaces file which serves to define the firewall's network interfaces to Shorewall. The order of entries in this file is not significant in determining zone composition.


  1. /shorewall/:shorewall-ID/interfaces/net
  2. /shorewall/:shorewall-ID/interfaces/loc
  3. /shorewall/:shorewall-ID/interfaces/dmz


**POST /shorewall/:shorewall-ID/interfaces/net**

**Describe Service:**

    Verb  URI                                             Description
    POST /services/service-id/shorewall/interfaces/net    Configures the net zone interfaces to apply rules 


###Request JSON:

    {
        "commonname": "hostname of client",
        "ZONE": "net",
        "INTERFACE": "",
        "BROADCAST": "",
        "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


**POST /shorewall/:shorewall-ID/interfaces/loc**

**Describe Service:**

    Verb  URI                                             Description
    POST /services/service-id/shorewall/interfaces/loc    Configures the loc zone interfaces to apply rules 

###Request JSON:

    {
        "commonname": "hostname of client",
        "ZONE": "loc",
        "INTERFACE": "",
        "BROADCAST": "",
        "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

    
**POST /shorewall/:shorewall-ID/interfaces/dmz**

**Describe Service:**

    Verb  URI                                             Description
    POST /services/service-id/shorewall/interfaces/dmz    Configures the dmz zone interfaces to apply rules     
    
    
###Request JSON:

    {
        "commonname": "hostname of client",
        "ZONE": "dmz",
        "INTERFACE": "",
        "BROADCAST": "",
        "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

    
    
**ZONES API :**   
    
Creates zones configurations files entry for zones, Zones 4 API"s available 
API's configures the zones file which declares our network zones. we can specify the hosts in each zone through entries in interfaces file or hosts

  1. /shorewall/:shorewall-ID/zones/fw
  2. /shorewall/:shorewall-ID/zones/loc
  3. /shorewall/:shorewall-ID/zones/net
  4. /shorewall/:shorewall-ID/zones/dmz


**POST /shorewall/:shorewall-ID/zones/fw**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/zones/fw                Configures the firewall zones file entry

###Request JSON:

    {
        "commonname": "hostname of client",
        "ZONES": "fw",
        "TYPE": "firewall",
        "OPTIONS": "",
        "IN-OPTIONS": "",
        "OUT-OPTIONS": ""
    }

###Response JSON :
  
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


**POST /shorewall/:shorewall-ID/zones/loc**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/zones/loc               Configures the loc zones file entry

###Request JSON:

    {
        "commonname": "hostname of client",
        "ZONES": "loc",
        "TYPE": "ipv4",
        "OPTIONS": "",
        "IN-OPTIONS": "",
        "OUT-OPTIONS": ""
    }

###Response JSON :
  
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


**POST /shorewall/:shorewall-ID/zones/net**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/zones/net               Configures the net zones file entry

###Request JSON:

    {
        "commonname": "hostname of client",
        "ZONES": "net",
        "TYPE": "ipv4",
        "OPTIONS": "",
        "IN-OPTIONS": "",
        "OUT-OPTIONS": ""
    }

###Response JSON :
  
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

    
**POST /shorewall/:shorewall-ID/zones/dmz**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/zones/dmz               Configures the dmz zones file entry

###Request JSON:

    {
        "commonname": "hostname of client",
        "ZONES": "dmz",
        "TYPE": "ipv4",
        "OPTIONS": "",
        "IN-OPTIONS": "",
        "OUT-OPTIONS": ""
    }

###Response JSON :
  
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


    
**Policy API :**  

Policy API's configures the policy file, which defines the high-level policy for connections between zones defined in shorewall-zones. The order of entries in this file is important, This file determines what to do with a new connection request if we don't get a match from the rules file . For  each source/destination pair, the file is processed in order until a match is found ("all" will match any client or server).

Policy configuration is having 5 API's,
  1. /shorewall/:shorewall-ID/policy/fw
  2. /shorewall/:shorewall-ID/policy/net
  3. /shorewall/:shorewall-ID/policy/loc
  4. /shorewall/:shorewall-ID/policy/dmz
  5. /shorewall/:shorewall-ID/policy/all


**POST /shorewall/:shorewall-ID/policy/fw**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/policy/fw               Creates Policy configurations files entry for policy 

###Request JSON:

    {
        "commonname": "hostname of client",
        "SRC_ZONE": "fw",
        "DEST_ZONE": "",
        "POLICY": "",
        "LOG_LEVEL": "",
        "LIMIT_BURST": ""
    }

###Response JSON :
    
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

    
**POST /shorewall/:shorewall-ID/policy/loc**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/policy/loc              Creates Policy configurations rules entry for local zones  

###Request JSON:

    {
        "commonname": "hostname of client",
        "SRC_ZONE": "loc",
        "DEST_ZONE": "",
        "POLICY": "",
        "LOG_LEVEL": "",
        "LIMIT_BURST": ""
    }

###Response JSON :
    
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

    
**POST /shorewall/:shorewall-ID/policy/net**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/policy/net              Creates Policy configurations rules entry for net zones

###Request JSON:

    {
        "commonname": "hostname of client",
        "SRC_ZONE": "net",
        "DEST_ZONE": "",
        "POLICY": "",
        "LOG_LEVEL": "",
        "LIMIT_BURST": ""
    }

###Response JSON :
    
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


**POST /shorewall/:shorewall-ID/policy/dmz**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/policy/dmz              Creates Policy configurations rules entry for dmz zones

###Request JSON:

    {
        "commonname": "hostname of client",
        "SRC_ZONE": "dmz",
        "DEST_ZONE": "",
        "POLICY": "",
        "LOG_LEVEL": "",
        "LIMIT_BURST": ""
    }

###Response JSON :
    
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


 
**POST /shorewall/:shorewall-ID/policy/all**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/policy/all              Creates Policy configurations rules entry for dmz zones

###Request JSON:

    {
        "commonname": "hostname of client",
        "SRC_ZONE": "all",
        "DEST_ZONE": "",
        "POLICY": "",
        "LOG_LEVEL": "",
        "LIMIT_BURST": ""
    }

###Response JSON :
    
    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

 

**Rules API :**

Rules API's will create/updates rules file configurations, Entries in this rules configuration file govern connection establishment by defining exceptions to the policies layed out in shorewall-policy. By default, subsequent requests and responses are automatically allowed using connection tracking. For any particular (source,dest) pair of zones, the rules are evaluated in the order in which they appear in this file and the first terminating match is the one that determines the disposition of the request. All rules are terminating except LOG and COUNT rules.

  1. /shorewall/service-id/shorewall/rules/accept
  2. /shorewall/service-id/shorewall/rules/drop
  3. /shorewall/service-id/shorewall/rules/reject
  4. /shorewall/service-id/shorewall/rules/dnat
  5. /shorewall/service-id/shorewall/rules/nonat
  6. /shorewall/service-id/shorewall/rules/queue
  7. /shorewall/service-id/shorewall/rules/nfqueue

**POST /shorewall/:shorewall-ID/rules/accept**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/rules/accept     Creates the shorewall rules ACCEPT configuration file entry  in rules


###Request JSON:

    {
        "commonname": "hostname of client",
        "ACTION": "ACCEPT",
        "SOURCE_zone": "",
        "DEST_zone": "",
        "PROTO": "",
        "DEST_PORT": "",
        "SOURCE_PORT": "",
        "Original_DEST": "",
        "RATE_LIMIT": "",
        "User_Group": "",
        "MARK": "",
        "CONNLIMIT": "",
        "TIME": "",
        "HEADERS": "",
        "SWITCH": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

    
**POST /shorewall/:shorewall-ID/rules/drop**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/rules/drop       Creates the shorewall rules DROP configuration file entry  in rules


###Request JSON:

    {
        "commonname": "hostname of client",
        "ACTION": "DROP",
        "SOURCE_zone": "",
        "DEST_zone": "",
        "PROTO": "",
        "DEST_PORT": "",
        "SOURCE_PORT": "",
        "Original_DEST": "",
        "RATE_LIMIT": "",
        "User_Group": "",
        "MARK": "",
        "CONNLIMIT": "",
        "TIME": "",
        "HEADERS": "",
        "SWITCH": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


**POST /shorewall/:shorewall-ID/rules/reject**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/rules/reject     Creates the shorewall rules REJECT configuration file entry 


###Request JSON:

    {
        "commonname": "hostname of client",
        "ACTION": "REJECT",
        "SOURCE_zone": "",
        "DEST_zone": "",
        "PROTO": "",
        "DEST_PORT": "",
        "SOURCE_PORT": "",
        "Original_DEST": "",
        "RATE_LIMIT": "",
        "User_Group": "",
        "MARK": "",
        "CONNLIMIT": "",
        "TIME": "",
        "HEADERS": "",
        "SWITCH": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  


**POST /shorewall/:shorewall-ID/rules/dnat**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/rules/dnat       Creates the shorewall rules DNAT configuration file entry 


###Request JSON:

    {
        "commonname": "hostname of client",
        "ACTION": "DNAT",
        "SOURCE_zone": "",
        "DEST_zone": "",
        "PROTO": "",
        "DEST_PORT": "",
        "SOURCE_PORT": "",
        "Original_DEST": "",
        "RATE_LIMIT": "",
        "User_Group": "",
        "MARK": "",
        "CONNLIMIT": "",
        "TIME": "",
        "HEADERS": "",
        "SWITCH": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  



**POST /shorewall/:shorewall-ID/rules/nonat**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/rules/nonat      Creates the shorewall rules NONAT configuration file entry 


###Request JSON:

    {
        "commonname": "hostname of client",
        "ACTION": "REJECT",
        "SOURCE_zone": "",
        "DEST_zone": "",
        "PROTO": "",
        "DEST_PORT": "",
        "SOURCE_PORT": "",
        "Original_DEST": "",
        "RATE_LIMIT": "",
        "User_Group": "",
        "MARK": "",
        "CONNLIMIT": "",
        "TIME": "",
        "HEADERS": "",
        "SWITCH": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  



**POST /shorewall/:shorewall-ID/rules/queue**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/rules/queue      Creates the shorewall rules QUEUE configuration file entry 


###Request JSON:

    {
        "commonname": "hostname of client",
        "ACTION": "QUEUE",
        "SOURCE_zone": "",
        "DEST_zone": "",
        "PROTO": "",
        "DEST_PORT": "",
        "SOURCE_PORT": "",
        "Original_DEST": "",
        "RATE_LIMIT": "",
        "User_Group": "",
        "MARK": "",
        "CONNLIMIT": "",
        "TIME": "",
        "HEADERS": "",
        "SWITCH": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  



**POST /shorewall/:shorewall-ID/rules/nfqueue**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/rules/nfqueue    Creates the shorewall rules NFQUEUE configuration file entry 


###Request JSON:

    {
        "commonname": "hostname of client",
        "ACTION": "NFQUEUE",
        "SOURCE_zone": "",
        "DEST_zone": "",
        "PROTO": "",
        "DEST_PORT": "",
        "SOURCE_PORT": "",
        "Original_DEST": "",
        "RATE_LIMIT": "",
        "User_Group": "",
        "MARK": "",
        "CONNLIMIT": "",
        "TIME": "",
        "HEADERS": "",
        "SWITCH": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  

**Routestopped API**

This file is used to define the hosts that are accessible when the firewall is stopped or is being stopped.

**POST /shorewall/:shorewall-ID/routestopped**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/service-id/shorewall/routestopped     Creates the shorewall routestopped configuration file entry 


###Request JSON:

    {
        "commonname": "",
        "INTERFACE": "eth0",
        "HOSTS": "",
        "OPTIONS": "",
        "PROTO": "",
        "DEST_PORTS": "",
        "SOURCE_PORTS": ""
    }

###Response JSON :

    { 
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",    
        "result" : "true"
    }  



    
**Start the shorewall service :**

This API  get validates Input JSON format  by schema,  check the shorewall service installed if not response with error and  check if service-id exist in DB and host name of the client to be configured else response with error, 
It downloads the capabilities files for respective client from the repository link and start the compilation of the configurations, creates firewall and firewall.conf files and copy to clients /var/lib/shorewall-lite directory  and starts the command to be executed on client 
command “/sbin/shorewall   start”

**POST /shorewall/:shorewall-ID/start :**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/restart                 Start of the firewall service on shorewall-lite

###Request JSON for start:

    {
        "commonname": "hostname of client",
        "cap_file": "http://CP-url.com/capfiles/capabilities",
        "command":"/sbin/shorewall load <client IP-ADDRESS>"
    }
###Response JSON :

    {
      "command":"success"
    }

**POST /shorewall/:shorewall-ID/restart :**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/restart                 Restart of the firewall service on shorewall-lite


###Request JSON for restart:

    {
        "commonname": "hostname of client",
        "cap_file": "http://CP-url.com/capfiles/capabilities",
        "command":"/sbin/shorewall reload <client IP-ADDRESS>"
    }
###Response JSON :

    {
      "command":"success"
    }



**Status of the shorewall service :**   

Run the shorewall status command from shorewall server through ssh, It will display the firewall runningstatus of  shorewall-lite clients.
This post display the Status of  the Shorewall service running on shorewall-lite clients

**POST /shorewall/:shorewall-ID/status :**

**Describe Service:**

    Verb  URI                                             Description    
    POST /shorewall/:shorewall-ID/status                  Get the running status of the shorewall-lite clients

###Request JSON  for shorewall STATUS :

    {
        "commonname": "hostname of client",
        "command":"ssh root@<hostname_IP-ADDRESS>  '/sbin/shorewall-lite  status'"  
    }

###Response JSON :

    {
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",
        "commonname": "hostname of client",
        "name":"shorewall",
        "command":"success",
        "status": {
                "started": true,
                "stopped": false,
                "cleared": false,
                "result": true
        }
    }


**Stop the Shorewall service :**

Run the shorewall stop command from shorewall server through ssh, It will stops the firewall running on shorewall-lite clients.


**POST /shorewall/:shorewall-ID/stop :**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/stop                    Stop the firewall service/configurations on respective shorewall-lite clients  


###Request JSON for STOP/CLEAR :

    {
        "commonname": "hostname of client",
        "command": "ssh root@<hostname_IP-ADDRESS>  '/sbin/shorewall-lite stop'"
    }
    
###Response JSON :

    {
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",
        "commonname": "hostname of client",
        "name": "shorewall",
        "command": "success"
    }
**Clear the Shorewall service :**

Run the shorewall clear command from shorewall server through ssh, It will clears the firewall running configurations on shorewall-lite clients.

**POST /shorewall/:shorewall-ID/clear :**

**Describe Service:**

    Verb  URI                                             Description
    POST /shorewall/:shorewall-ID/clear                   Clear the firewall service/configurations on respective shorewall-lite clients  


###Request JSON for STOP/CLEAR :

    {
        "commonname": "hostname of client",
        "command": "ssh root@<hostname_IP-ADDRESS>  '/sbin/shorewall-lite clear'"
    }
    
###Response JSON :

    {
        "id": "7b4c38ea-268d-4a46-9e5f-d09a59f7b78b",
        "commonname": "hostname of client",
        "name": "shorewall",
        "command": "success"
    }
        
    
