cloudflash-firewall 
===================

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
    <td>POST</td><td>/firewall/:group/shorewall</td><td>Create/update a new interfaces, zones, plolicy,shorewall.conf, tcdevices, tcclasses and capabilities file configuarations in shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/firewall/:group/tcrules</td><td>Create/update a new tcrules configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/firewall/:group/masq</td><td>Create/update a new masq configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/firewall/:group/rules</td><td>Create/update a new rules configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>GET</td><td>/firewall/:group/shorewall</td><td>GET DB details of interfaces, zones, plolicy,shorewall.conf, tcdevices, tcclasses and capabilities file configuarations in shorewall server</td>
  </tr>
  <tr>
    <td>GET</td><td>/firewall/:group/tcrules</td><td>GET DB details of tcrules configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>GET</td><td>/firewall/:group/masq</td><td>GET the DB details of  masq configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>GET</td><td>/firewall/:group/rules</td><td>GET the DB details of rules configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>GET</td><td>/firewall/:group</td><td>GET the DB details of respective group configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/firewall/:group/tcrules</td><td>DELETE the  DB details and tcrules files  configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/firewall/:group/masq</td><td>DELETE the  DB details and masq files configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/firewall/:group/rules</td><td>DELETE the  DB details and rules files configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/firewall/:group/shorewall</td><td>DELETE the DB details and respective group configuartions files on shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/conf</td><td>Create/update a new shorewall.conf file configuarations for shorewall in shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/zones/:id</td><td>Create/update a new shorewall zones configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/interfaces/:id</td><td>Create/update a new shorewall interfaces configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/policy/:id</td><td>Create/update a new shorewall policy configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/rules/:id</td><td>Create/update a new shorewall rules configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/routestopped/:id</td><td>Create/update a new shorewall routestopped configuartions on shorewall server</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/conf</td><td>Describes an installed shorewall.conf file configuarations in shorewall server </td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/zones/:id</td><td>Describes the configurations of the  shorewall  zones file and DB by shorewall ID </td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/interfaces/:id</td><td>Describes the configurations of the shorewall interfaces file and DB by shorewall ID </td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/policy/:id</td><td>Describes the configurations of the shorewall policy file and DB by shorewall ID </td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/rules/:id</td><td>Describes the configurations of the shorewall rules file and DB by shorewall ID </td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/routestopped/:id</td><td>Describes the configurations of the shorewall routestopped file and DB by shorewall ID </td>
  </tr>

  <tr>
    <td>GET</td><td>/shorewall/server/:group/zones</td><td>Describes the installed shorewall zones files configuartions of  cpn-client1</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/interfaces</td><td>Describes the installed shorewall interfaces files configuartions  of  cpn-client1</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/policy</td><td>Describes the installed shorewall policy files configuartions of  cpn-client1</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/rules</td><td>Describes the installed shorewall rules files configuartions of  cpn-client1</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group/routestopped</td><td>Describes the installed shorewall routestopped file configuartions of cpn-client1</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/:group</td><td>Describes the installed shorewall configuartions of a shorewall-lite client</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/client/:group/capabilities</td><td>To create capabilities file on shorewall-lite clients</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/client/capabilities/:group</td><td>To get the capabilities file from shorewall-lite clients to orchestration </td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/capabilities/server/:group</td><td>Get the capabilities configs from  orchestration to shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/build</td><td>To compile(build) for firewall, firewall.conf files  for clients  in shorewall server</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/server/:group/rebuild</td><td>To compile(rebuild) for firewall, firewall.conf files  for clients  in shorewall server</td>
  </tr>
  <tr>
    <td>GET</td><td>/shorewall/server/firewall/:group/scripts</td><td>To get firewall and firewall.conf files from shorewall server to orchestration</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/firewallfiles/client</td><td>To send the firewall and firewall.conf files from orchestration to shorewall-lite clients</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/client/:group/start</td><td>To start the firewall rules on shorewall-lite clients</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/client/:group/status</td><td>To get the status of firewall rules on shorewall-lite clients</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/client/:group/stop</td><td>To stop the firewall rules on shorewall-lite clients</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/client/:group/clear</td><td>To clear the firewall rules on shorewall-lite clients</td>
  </tr>
  <tr>
    <td>POST</td><td>/shorewall/client/:group/restart</td><td>To restart the firewall rules on shorewall-lite clients</td>
  </tr>

  <tr>
    <td>DELETE</td><td>/shorewall/server/:group/conf</td><td>Deletes the configurations of shorewall.conf file and entry in DB</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/server/:group/zones/:id</td><td>Deletes the configurations of respective  clients-groups shorewall ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/server/:group/interfaces/:id</td><td>Deletes the configurations of respective  clients-groups shorewall ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/server/:group/policy/:id</td><td>Deletes the configurations of respective  clients-groups shorewall ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/server/:group/rules/:id</td><td>Deletes the configurations of respective  clients-groups shorewall ID</td>
  </tr>
  <tr>
    <td>DELETE</td><td>/shorewall/server/:group/routestopped/:id</td><td>Deletes the configurations of respective  clients-groups shorewall ID</td>
  </tr>

</table>



NEW API's LIST
--------------

  1.  POST /firewall/:group/shorewall
  2.  POST /firewall/:group/masq
  3.  POST /firewall/:group/tcrules
  4.  POST /firewall/:group/rules
  5.  GET /firewall/:group/shorewall
  6.  GET /firewall/:group/masq
  7.  GET /firewall/:group/tcrules
  8.  GET /firewall/:group/rules
  9.  GET /firewall/:group
  10. DELETE /firewall/:group/masq
  11. DELETE /firewall/:group/tcrules
  12. DELETE /firewall/:group/rules
  13. DELETE /firewall/:group/shorewall


**POST /firewall/:group/shorewall**

This API configures the shorewall.conf, interfaces, zones, policy, tcdevices, tcclasses, tunnels and capabilities

**Describe Service:**

    Verb  URI                                             Description
    POST  /firewall/cpn-client1/shorewall                 Creates/updates the configurations of shorewall config files for cpn-client1

###Request JSON : 

       {
           "interfaces":
           [
               {
                   "ZONE": "net",
                   "INTERFACE": "wan0",
                   "BROADCAST": "detect",
                   "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
               }
           ],
           "zones":
           [
               {
                   "ZONES": "fw",
                   "TYPE": "firewall",
                   "OPTIONS": "-",
                   "IN-OPTIONS": "-",
                   "OUT-OPTIONS": "-"
               },
               {
                   "ZONES": "net",
                   "TYPE": "ipv4",
                   "OPTIONS": "-",
                   "IN-OPTIONS": "-",
                   "OUT-OPTIONS": "-"
               }
           ],
           "policy":
           [
               {
                   "SRC_ZONE": "$FW",
                   "DEST_ZONE": "net",
                   "POLICY": "ACCEPT",
                   "LOG_LEVEL": "info",
                   "LIMIT_BURST": "-"
               },
               {
                   "SRC_ZONE": "net",
                   "DEST_ZONE": "all",
                   "POLICY": "ACCEPT",
                   "LOG_LEVEL": "info",
                   "LIMIT_BURST": "-"
               }
           ],
           "tcdevices":
           [
               {
                   "INTERFACE": "wan0",
                   "IN_BANDWIDTH": "0",
                   "OUT_BANDWIDTH": "100mbit"
               }
           ],
           "tcclasses":
           [
               {
                   "INTERFACE": "wan0",
                   "MARK": "2",
                   "RATE": "full*5/100",
                   "CEIL": "full*100/100",
                   "PRIORITY": "4",
                   "OPTIONS": "default"
               }
           ],
           "tunnels":
           [
               {
                   "TYPE": "openvpnserver:6000",
                   "ZONE": "net",
                   "GATEWAY": "0.0.0.0/0"
               }
           ],
           "capabilities":
           [
               {
                   "content": "IwojIFNob3Jld2FsbCA0LjQuMjYuMSBkZXRlY3RlZCB0aGUgZm9sbG93aW5nIGlwdGFibGVzL25ldGZpbHRlciBjYXBhYmlsaXRpZXMgLSBUdWUgT2N0IDMwIDE3OjAzOjUyIElTVCAyMDEyCiMKTkFUX0VOQUJMRUQ9WWVzCk1BTkdMRV9FTkFCTEVEPVllcwpNVUxUSVBPUlQ9WWVzClhNVUxUSVBPUlQ9WWVzCkNPTk5UUkFDS19NQVRDSD1ZZXMKTkVXX0NPTk5UUkFDS19NQVRDSD1ZZXMKT0xEX0NPTk5UUkFDS19NQVRDSD0KVVNFUEtUVFlQRT1ZZXMKUE9MSUNZX01BVENIPVllcwpQSFlTREVWX01BVENIPVllcwpQSFlTREVWX0JSSURHRT1ZZXMKTEVOR1RIX01BVENIPVllcwpJUFJBTkdFX01BVENIPVllcwpSRUNFTlRfTUFUQ0g9WWVzCk9XTkVSX01BVENIPVllcwpJUFNFVF9NQVRDSD0KT0xEX0lQU0VUX01BVENIPQpDT05OTUFSSz1ZZXMKWENPTk5NQVJLPVllcwpDT05OTUFSS19NQVRDSD1ZZXMKWENPTk5NQVJLX01BVENIPVllcwpSQVdfVEFCTEU9WWVzClJBV1BPU1RfVEFCTEU9CklQUDJQX01BVENIPQpPTERfSVBQMlBfTUFUQ0g9CkNMQVNTSUZZX1RBUkdFVD1ZZXMKRU5IQU5DRURfUkVKRUNUPVllcwpLTFVER0VGUkVFPVllcwpNQVJLPVllcwpYTUFSSz1ZZXMKRVhNQVJLPVllcwpNQU5HTEVfRk9SV0FSRD1ZZXMKQ09NTUVOVFM9WWVzCkFERFJUWVBFPVllcwpUQ1BNU1NfTUFUQ0g9WWVzCkhBU0hMSU1JVF9NQVRDSD1ZZXMKT0xEX0hMX01BVENIPQpORlFVRVVFX1RBUkdFVD1ZZXMKUkVBTE1fTUFUQ0g9WWVzCkhFTFBFUl9NQVRDSD1ZZXMKQ09OTkxJTUlUX01BVENIPVllcwpUSU1FX01BVENIPVllcwpHT1RPX1RBUkdFVD1ZZXMKTE9HTUFSS19UQVJHRVQ9CklQTUFSS19UQVJHRVQ9CkxPR19UQVJHRVQ9WWVzClVMT0dfVEFSR0VUPVllcwpORkxPR19UQVJHRVQ9WWVzClBFUlNJU1RFTlRfU05BVD1ZZXMKVFBST1hZX1RBUkdFVD1ZZXMKRkxPV19GSUxURVI9WWVzCkZXTUFSS19SVF9NQVNLPVllcwpNQVJLX0FOWVdIRVJFPVllcwpIRUFERVJfTUFUQ0g9CkFDQ09VTlRfVEFSR0VUPQpBVURJVF9UQVJHRVQ9WWVzCklQU0VUX1Y1PQpDT05ESVRJT05fTUFUQ0g9CklQVEFCTEVTX1M9WWVzCkJBU0lDX0ZJTFRFUj1ZZXMKQ0FQVkVSU0lPTj00MDQyNgpLRVJORUxWRVJTSU9OPTMwMjAwCg=="
               }
           ],
           "shorewallconf":
           [
               {
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
           ]
       }
    }



**GET /shorewall/server/:group/conf**


This API get the configurations of shorewall.conf, interfaces, zones, policy, tcdevices, tcclasses, tunnels and capabilities

###Request Header :

**Describe Service:**

    Verb  URI                                                                 Description
    GET   /shorewall/server/cpn-client1/conf                                  Describes the shorewall config files configurations 

###Response JSON :



    {
       "entityid": "shorewallcpn-client1",
       "entityName": "shorewall",
       "group": "cpn-client1",
       "config":
       {
           "interfaces":
           [
               {
                   "ZONE": "net",
                   "INTERFACE": "wan0",
                   "BROADCAST": "detect",
                   "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
               }
           ],
           "zones":
           [
               {
                   "ZONES": "fw",
                   "TYPE": "firewall",
                   "OPTIONS": "-",
                   "IN-OPTIONS": "-",
                   "OUT-OPTIONS": "-"
               },
               {
                   "ZONES": "net",
                   "TYPE": "ipv4",
                   "OPTIONS": "-",
                   "IN-OPTIONS": "-",
                   "OUT-OPTIONS": "-"
               }
           ],
           "policy":
           [
               {
                   "SRC_ZONE": "$FW",
                   "DEST_ZONE": "net",
                   "POLICY": "ACCEPT",
                   "LOG_LEVEL": "info",
                   "LIMIT_BURST": "-"
               },
               {
                   "SRC_ZONE": "net",
                   "DEST_ZONE": "all",
                   "POLICY": "ACCEPT",
                   "LOG_LEVEL": "info",
                   "LIMIT_BURST": "-"
               }
           ],
           "tcdevices":
           [
               {
                   "INTERFACE": "wan0",
                   "IN_BANDWIDTH": "0",
                   "OUT_BANDWIDTH": "100mbit"
               }
           ],
           "tcclasses":
           [
               {
                   "INTERFACE": "wan0",
                   "MARK": "2",
                   "RATE": "full*5/100",
                   "CEIL": "full*100/100",
                   "PRIORITY": "4",
                   "OPTIONS": "default"
               }
           ],
           "tunnels":
           [
               {
                   "TYPE": "openvpnserver:6000",
                   "ZONE": "net",
                   "GATEWAY": "0.0.0.0/0"
               }
           ],
           "capabilities":
           [
               {
                   "content": "IwojIFNob3Jld2FsbCA0LjQuMjYuMSBkZXRlY3RlZCB0aGUgZm9sbG93aW5nIGlwdGFibGVzL25ldGZpbHRlciBjYXBhYmlsaXRpZXMgLSBUdWUgT2N0IDMwIDE3OjAzOjUyIElTVCAyMDEyCiMKTkFUX0VOQUJMRUQ9WWVzCk1BTkdMRV9FTkFCTEVEPVllcwpNVUxUSVBPUlQ9WWVzClhNVUxUSVBPUlQ9WWVzCkNPTk5UUkFDS19NQVRDSD1ZZXMKTkVXX0NPTk5UUkFDS19NQVRDSD1ZZXMKT0xEX0NPTk5UUkFDS19NQVRDSD0KVVNFUEtUVFlQRT1ZZXMKUE9MSUNZX01BVENIPVllcwpQSFlTREVWX01BVENIPVllcwpQSFlTREVWX0JSSURHRT1ZZXMKTEVOR1RIX01BVENIPVllcwpJUFJBTkdFX01BVENIPVllcwpSRUNFTlRfTUFUQ0g9WWVzCk9XTkVSX01BVENIPVllcwpJUFNFVF9NQVRDSD0KT0xEX0lQU0VUX01BVENIPQpDT05OTUFSSz1ZZXMKWENPTk5NQVJLPVllcwpDT05OTUFSS19NQVRDSD1ZZXMKWENPTk5NQVJLX01BVENIPVllcwpSQVdfVEFCTEU9WWVzClJBV1BPU1RfVEFCTEU9CklQUDJQX01BVENIPQpPTERfSVBQMlBfTUFUQ0g9CkNMQVNTSUZZX1RBUkdFVD1ZZXMKRU5IQU5DRURfUkVKRUNUPVllcwpLTFVER0VGUkVFPVllcwpNQVJLPVllcwpYTUFSSz1ZZXMKRVhNQVJLPVllcwpNQU5HTEVfRk9SV0FSRD1ZZXMKQ09NTUVOVFM9WWVzCkFERFJUWVBFPVllcwpUQ1BNU1NfTUFUQ0g9WWVzCkhBU0hMSU1JVF9NQVRDSD1ZZXMKT0xEX0hMX01BVENIPQpORlFVRVVFX1RBUkdFVD1ZZXMKUkVBTE1fTUFUQ0g9WWVzCkhFTFBFUl9NQVRDSD1ZZXMKQ09OTkxJTUlUX01BVENIPVllcwpUSU1FX01BVENIPVllcwpHT1RPX1RBUkdFVD1ZZXMKTE9HTUFSS19UQVJHRVQ9CklQTUFSS19UQVJHRVQ9CkxPR19UQVJHRVQ9WWVzClVMT0dfVEFSR0VUPVllcwpORkxPR19UQVJHRVQ9WWVzClBFUlNJU1RFTlRfU05BVD1ZZXMKVFBST1hZX1RBUkdFVD1ZZXMKRkxPV19GSUxURVI9WWVzCkZXTUFSS19SVF9NQVNLPVllcwpNQVJLX0FOWVdIRVJFPVllcwpIRUFERVJfTUFUQ0g9CkFDQ09VTlRfVEFSR0VUPQpBVURJVF9UQVJHRVQ9WWVzCklQU0VUX1Y1PQpDT05ESVRJT05fTUFUQ0g9CklQVEFCTEVTX1M9WWVzCkJBU0lDX0ZJTFRFUj1ZZXMKQ0FQVkVSU0lPTj00MDQyNgpLRVJORUxWRVJTSU9OPTMwMjAwCg=="
               }
           ],
           "shorewallconf":
           [
               {
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
           ]
       }
    }

**POST /firewall/:group/masq**

This API configures the  masq configurations

**Describe Service:**

    Verb  URI                                             Description
    POST  /firewall/cpn-client1/masq                      Creates/updates the configurations of masq file

###Request JSON :

       {
           "masq":
           [
               {
                   "INTERFACE_DEST": "wan0",
                   "SOURCE": "lan0",
                   "ADDRESS_OPT": "",
                   "PROTO": ""
               }
           ]
       }
    }


**GET /firewall/:group/masq**

This API to get the  masq file configurations

**Describe Service:**

    Verb  URI                                             Description
    GET  /firewall/cpn-client1/masq                       Get the configurations of masq file

###Response JSON :
 

    {
       "id": "masqcpn-client1",
       "entityName": "masq",
       "group": "cpn-client1",
       "config":
       {
           "masq":
           [
               {
                   "INTERFACE_DEST": "wan0",
                   "SOURCE": "lan0",
                   "ADDRESS_OPT": "",
                   "PROTO": ""
               }
           ]
       }
    }


**POST /firewall/:group/tcrules**

This API configures the  tcrules file configurations

**Describe Service:**

    Verb  URI                                             Description
    POST  /firewall/cpn-client1/tcrules                   Creates/updates the configurations of tcrules file

###Request JSON :


       {
           "tcrules":
           [
               {
                   "MARK": "1:F",
                   "SOURCE": "209.182.96.0/19",
                   "DEST": "wan0",
                   "PROTO": "tcp",
                   "PORTS": "-",
                   "CLIENT_PORTS": "-",
                   "USER": "-",
                   "TEST": "-"
               },
               {
                   "MARK": "1:T",
                   "SOURCE": "0.0.0.0/0",
                   "DEST": "0.0.0.0/0",
                   "PROTO": "icmp",
                   "PORTS": "echo-request",
                   "CLIENT_PORTS": "-",
                   "USER": "-",
                   "TEST": "-"
               }
           ]
       }

**GET /firewall/:group/tcrules**

This API to get the  tcrules file configurations

**Describe Service:**

    Verb  URI                                             Description
    GET  /firewall/cpn-client1/tcrules                    Get the configurations of tcrules file

###Response JSON :

    {
       "id": "tcrulescpn-client1",
       "entityName": "tcrules",
       "group": "cpn-client1",
       "config":
       {
           "tcrules":
           [
               {
                   "MARK": "1:F",
                   "SOURCE": "209.182.96.0/19",
                   "DEST": "wan0",
                   "PROTO": "tcp",
                   "PORTS": "-",
                   "CLIENT_PORTS": "-",
                   "USER": "-",
                   "TEST": "-"
               },
               {
                   "MARK": "1:T",
                   "SOURCE": "0.0.0.0/0",
                   "DEST": "0.0.0.0/0",
                   "PROTO": "icmp",
                   "PORTS": "echo-request",
                   "CLIENT_PORTS": "-",
                   "USER": "-",
                   "TEST": "-"
               }
           ]
       }
    }

**POST /firewall/:group/rules**

This API configures the rules file configurations

**Describe Service:**

    Verb  URI                                             Description
    POST  /firewall/cpn-client1/rules                     Creates/updates the configurations of rules file

###Request JSON :


       {
           "rules":
           [
               {
                   "ACTION": "DROP:info",
                   "SOURCE_zone":
                   [
                       {
                           "all": "",
                           "all+": "",
                           "all-": "",
                           "all+-": "",
                           "any": "",
                           "WAN": "net",
                           "LAN": "",
                           "DMZ": "",
                           "VPN": "",
                           "HSB": "",
                           "WAN:": "",
                           "LAN:": "",
                           "DMZ:": "",
                           "VPN:": "",
                           "HSB:": ""
                       }
                   ],
                   "DEST_zone":
                   [
                       {
                           "all": "",
                           "all+": "",
                           "all-": "",
                           "all+-": "",
                           "any": "",
                           "WAN": "",
                           "LAN": "$FW",
                           "DMZ": "",
                           "VPN": "",
                           "HSB": "",
                           "WAN:": "",
                           "LAN:": "",
                           "DMZ:": "",
                           "VPN:": "",
                           "HSB:": ""
                       }
                   ],
                   "PROTO":
                   [
                       {
                           "tcp": "",
                           "udp": "",
                           "protocol-name": "icmp",
                           "protocol-number": "",
                           "tcp:sync": "",
                           "tcp:ipp2p": "",
                           "tcp:sync:ipp2p": "",
                           "tcp:sync:udp": "",
                           "tcp:ipp2p:udp": "",
                           "tcp:ipp2p:ipp2p": "",
                           "all": "",
                           "tcp:sync:ipp2p:all": "",
                           "tcp:sync:udp:all": "",
                           "tcp:ipp2p:udp:all": "",
                           "tcp:ipp2p:ipp2p:all": "",
                           "tcp:sync:ipp2p:protocol-name": "",
                           "tcp:sync:udp:protocol-name": "",
                           "tcp:ipp2p:ipp2p:protocol-name": "",
                           "tcp:ipp2p:udp:protocol-name": "",
                           "tcp:sync:ipp2p:protocol-number": "",
                           "tcp:sync:udp:protocol-number": "",
                           "tcp:ipp2p:ipp2p:protocol-number": "",
                           "tcp:ipp2p:udp:protocol-number": ""
                       }
                   ],
                   "DEST_PORT":
                   [
                       {
                           "port-name-number": "",
                           "port-number-range": ""
                       }
                   ],
                   "SOURCE_PORT":
                   [
                       {
                           "port-name-number": "",
                           "port-number-range": ""
                       }
                   ],
                   "Original_DEST": "",
                   "RATE_LIMIT":
                   [
                       {
                           "s": "",
                           "d": "",
                           "s:proto-name": "",
                           "d:proto-name": "",
                           "s:proto-name:rate-per-sec": "",
                           "s:proto-name:rate-per-min": "",
                           "s:proto-name:rate-per-hour": "",
                           "s:proto-name:rate-per-day": "",
                           "d:proto-name:rate-per-sec": "",
                           "d:proto-name:rate-per-min": "",
                           "d:proto-name:rate-per-hour": "",
                           "d:proto-name:rate-per-day": "",
                           "s:proto-name:rate-per-sec:burst": "",
                           "s:proto-name:rate-per-min:burst": "",
                           "s:proto-name:rate-per-hour:burst": "",
                           "s:proto-name:rate-per-day:burst": "",
                           "d:proto-name:rate-per-sec:burst": "",
                           "d:proto-name:rate-per-min:burst": "",
                           "d:proto-name:rate-per-hour:burst": "",
                           "d:proto-name:rate-per-day:burst": ""
                       }
                   ],
                   "User_Group":
                   [
                       {
                           "user-name-or-number": "",
                           ":group-name-or-number": "",
                           "user-name-or-number:group-name-or-number": "",
                           "program-name": ""
                       }
                   ]
               }
           ]
       }

**GET /firewall/:group/rules**

This API to get the rules file configurations

**Describe Service:**

    Verb  URI                                             Description
    GET  /firewall/cpn-client1/rules                      Get the configurations of rules file

###Response JSON :
    {
       "id": "rulescpn-client1",
       "entityName": "rules",
       "group": "cpn-client1",
       "config":
       {
           "rules":
           [
               {
                   "ACTION": "DROP:info",
                   "SOURCE_zone":
                   [
                       {
                           "all": "",
                           "all+": "",
                           "all-": "",
                           "all+-": "",
                           "any": "",
                           "WAN": "net",
                           "LAN": "",
                           "DMZ": "",
                           "VPN": "",
                           "HSB": "",
                           "WAN:": "",
                           "LAN:": "",
                           "DMZ:": "",
                           "VPN:": "",
                           "HSB:": ""
                       }
                   ],
                   "DEST_zone":
                   [
                       {
                           "all": "",
                           "all+": "",
                           "all-": "",
                           "all+-": "",
                           "any": "",
                           "WAN": "",
                           "LAN": "$FW",
                           "DMZ": "",
                           "VPN": "",
                           "HSB": "",
                           "WAN:": "",
                           "LAN:": "",
                           "DMZ:": "",
                           "VPN:": "",
                           "HSB:": ""
                       }
                   ],
                   "PROTO":
                   [
                       {
                           "tcp": "",
                           "udp": "",
                           "protocol-name": "icmp",
                           "protocol-number": "",
                           "tcp:sync": "",
                           "tcp:ipp2p": "",
                           "tcp:sync:ipp2p": "",
                           "tcp:sync:udp": "",
                           "tcp:ipp2p:udp": "",
                           "tcp:ipp2p:ipp2p": "",
                           "all": "",
                           "tcp:sync:ipp2p:all": "",
                           "tcp:sync:udp:all": "",
                           "tcp:ipp2p:udp:all": "",
                           "tcp:ipp2p:ipp2p:all": "",
                           "tcp:sync:ipp2p:protocol-name": "",
                           "tcp:sync:udp:protocol-name": "",
                           "tcp:ipp2p:ipp2p:protocol-name": "",
                           "tcp:ipp2p:udp:protocol-name": "",
                           "tcp:sync:ipp2p:protocol-number": "",
                           "tcp:sync:udp:protocol-number": "",
                           "tcp:ipp2p:ipp2p:protocol-number": "",
                           "tcp:ipp2p:udp:protocol-number": ""
                       }
                   ],
                   "DEST_PORT":
                   [
                       {
                           "port-name-number": "",
                           "port-number-range": ""
                       }
                   ],
                   "SOURCE_PORT":
                   [
                       {
                           "port-name-number": "",
                           "port-number-range": ""
                       }
                   ],
                   "Original_DEST": "",
                   "RATE_LIMIT":
                   [
                       {
                           "s": "",
                           "d": "",
                           "s:proto-name": "",
                           "d:proto-name": "",
                           "s:proto-name:rate-per-sec": "",
                           "s:proto-name:rate-per-min": "",
                           "s:proto-name:rate-per-hour": "",
                           "s:proto-name:rate-per-day": "",
                           "d:proto-name:rate-per-sec": "",
                           "d:proto-name:rate-per-min": "",
                           "d:proto-name:rate-per-hour": "",
                           "d:proto-name:rate-per-day": "",
                           "s:proto-name:rate-per-sec:burst": "",
                           "s:proto-name:rate-per-min:burst": "",
                           "s:proto-name:rate-per-hour:burst": "",
                           "s:proto-name:rate-per-day:burst": "",
                           "d:proto-name:rate-per-sec:burst": "",
                           "d:proto-name:rate-per-min:burst": "",
                           "d:proto-name:rate-per-hour:burst": "",
                           "d:proto-name:rate-per-day:burst": ""
                       }
                   ],
                   "User_Group":
                   [
                       {
                           "user-name-or-number": "",
                           ":group-name-or-number": "",
                           "user-name-or-number:group-name-or-number": "",
                           "program-name": ""
                       }
                   ]
               }
           ]
       }
    }


**DELETE /firewall/:group/rules**

**Describe Service:**

    Verb     URI                                                           Description
    DELETE   /firewall/cpn-client1/rules                                   Deletes the configurations of rules in DB with respective config file


###Response code :
 
    204
    
**DELETE /firewall/:group/tcrules**

**Describe Service:**

    Verb     URI                                                           Description
    DELETE   /firewall/cpn-client1/tcrules                                 Deletes the configurations of tcrules in DB with respective config file


###Response code :
 
    204

**DELETE /firewall/:group/masq**

**Describe Service:**

    Verb     URI                                                           Description
    DELETE   /firewall/cpn-client1/masq                                    Deletes the configurations of masq in DB with respective config file


###Response code :
 
    204
    
**DELETE /firewall/:group/shorewall**

This API is basic API to configure firewall rules so while deleteing the DB configurations, this API delete all the configuration files of respective group(cname)

**Describe Service:**

    Verb     URI                                                           Description
    DELETE   /firewall/cpn-client1/shorewall                               Deletes the configurations of shorewall in DB with respective config file


###Response code :
 
    204


Shorewall  Configuration API's:
--------------------------------

  1. POST /shorewall/server/:group/conf
  2. POST /shorewall/server/:group/policy/:id
  3. POST /shorewall/server/:group/rules/:id
  4. POST /shorewall/server/:group/zones/:id
  5. POST /shorewall/server/:group/interfaces/:id
  6. POST /shorewall/server/:group/routestopped/:id 

POST API :
----------

**POST  /shorewall/server/:group/conf**

Conf API will configure the shorewall.conf file, which is a global configuration file for shorewall, This file sets options that apply to Shorewall as a whole.

**Describe Service:**

    Verb  URI                                             Description
    POST  /shorewall/server/cpn-client1/conf              Creates/updates the configurations of shorewall.conf file

###Request JSON : 
  

    {
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
       "id": "cpn-client1",
       "entityName": "shorewall",
       "group": "cpn-client1",
       "config":
       {
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
            "CONFIG_PATH": "/etc/shorewall:/usr/share/shorewall:/config/shorewall/cpn-client1",
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
  
    } 


**GET /shorewall/server/:group/conf**

###Request Header :

**Describe Service:**

    Verb  URI                                                                 Description
    GET   /shorewall/server/cpn-client1/conf                                  Describes the shorewall.conf configurations 

###Response JSON :

    [
       {
           "id": "cpn-client1",
           "config":
           {
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
               "CONFIG_PATH": "/etc/shorewall:/usr/share/shorewall:/config/shorewall/cpn-client1",
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
       }
    ]



**DELETE /shorewall/server/:group/conf**


    Verb   URI                                             Description
    DELETE /shorewall/server/cpn-client1/conf              Deletes the configurations on shorewall.conf file

Note: The Delete request does not require a message body. on success returns JSON data with the shorewall configuartions deleted on VCG. with deleted as true, Each delete shorewall service is identified by ID
    
###Response code :

    204

**Interface API's:** 

Interfaces API's configures the shorewall interfaces file which serves to define the firewall's network interfaces to Shorewall. The order of entries in this file is not significant in determining zone composition.



**POST /shorewall/server/:group/interfaces/:id**

**Describe Service:**

    Verb  URI                                                       Description
    POST /shorewall/server/cpn-client1/interfaces/0559950bd0bc0     Configures the interfaces file configs 


###Request JSON:

    {
        "ZONE": "net",
        "INTERFACE": "eth0",
        "BROADCAST": "detect",
        "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
    }

###Response JSON :

    {
       "id": "0559950bd0bc0",
       "entityName": "interfaces",
       "group": "cpn-client1",
       "config":
       {
           "ZONE": "net",
           "INTERFACE": "eth0",
           "BROADCAST": "detect",
           "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
       }
    }

**GET /shorewall/server/:group/interfaces/:id**

**Describe Service:**

    Verb  URI                                                       Description
    GET   /shorewall/server/cpn-client1/interfaces/0559950bd0bc0    Describes the configurations in interfaces DB with respective ID 


###Response JSON :

    {
       "id": "0559950bd0bc0",
       "entityName": "interfaces",
       "group": "cpn-client1",
       "config":
       {
           "ZONE": "net",
           "INTERFACE": "eth0",
           "BROADCAST": "detect",
           "OPTIONS": "dhcp,tcpflags,logmartians,nosmurfs"
       }
    }


**DELETE /shorewall/server/:group/interfaces/:id**

**Describe Service:**

    Verb     URI                                                           Description
    DELETE   /shorewall/server/cpn-client1/interfaces/0559950bd0bc0        Deletes the configurations of interfaces in DB with respective ID 


###Response code :
 
    204
    
    
**ZONES API :**
    
Creates zones configurations files entry for zones, Zones 4 API"s available 
API's configures the zones file which declares our network zones. we can specify the hosts in each zone through entries in interfaces file or hosts

  1. /shorewall/server/:group/zones/:id

**POST /shorewall/server/:group/zones/:id**

**Describe Service:**

    Verb  URI                                                 Description
    POST  /shorewall/server/cpn-client1/zones/0559950bd0bc1   Configures the firewall zones file entry

###Request JSON:

    {
        "ZONES": "$FW",
        "TYPE": "firewall",
        "OPTIONS": "",
        "IN-OPTIONS": "",
        "OUT-OPTIONS": ""
    }

###Response JSON :
  
    {
       "id": "0559950bd0bc1",
       "entityName": "zones",
       "group": "cpn-client1",
       "config":
       {
           "ZONES": "$FW",
           "TYPE": "firewall",
           "OPTIONS": "",
           "IN-OPTIONS": "",
           "OUT-OPTIONS": ""
       }
    }

**GET /shorewall/server/:group/zones/:id**

**Describe Service:**

    Verb  URI                                                Description
    GET  /shorewall/server/cpn-client1/zones/0559950bd0bc1   Describes configurations of the firewall zones file entry


###Response JSON :
  
    {
       "id": "0559950bd0bc1",
       "entityName": "zones",
       "group": "cpn-client1",
       "config":
       {
           "ZONES": "$FW",
           "TYPE": "firewall",
           "OPTIONS": "",
           "IN-OPTIONS": "",
           "OUT-OPTIONS": ""
       }
    }


    
**Policy API :** 

Policy API's configures the policy file, which defines the high-level policy for connections between zones defined in shorewall-zones. The order of entries in this file is important, This file determines what to do with a new connection request if we don't get a match from the rules file . For  each source/destination pair, the file is processed in order until a match is found ("all" will match any client or server).



**POST /shorewall/server/:group/policy/:id**

**Describe Service:**

    Verb  URI                                                  Description
    POST  /shorewall/server/cpn-client1/policy/0559950bd0bc2   Creates Policy configurations files entry for policy 

###Request JSON:

    {
        "SRC_ZONE": "$FW",
        "DEST_ZONE": "net",
        "POLICY": "ACCEPT",
        "LOG_LEVEL": "info",
        "LIMIT_BURST": ""
    }

###Response JSON :
    
    {
       "id": "0559950bd0bc2",
       "entityName": "policy",
       "group": "cpn-client1",
       "config":
       {
           "SRC_ZONE": "$FW",
           "DEST_ZONE": "net",
           "POLICY": "ACCEPT",
           "LOG_LEVEL": "info",
           "LIMIT_BURST": ""
       }
    }


**GET /shorewall/server/:group/policy/:id**

**Describe Service:**

    Verb  URI                                                 Description
    GET  /shorewall/server/cpn-client1/policy/0559950bd0bc2   Describes the configurations files entry for policy 

###Response JSON :
    
    {
       "id": "0559950bd0bc2",
       "entityName": "policy",
       "group": "cpn-client1",
       "config":
       {
           "SRC_ZONE": "$FW",
           "DEST_ZONE": "net",
           "POLICY": "ACCEPT",
           "LOG_LEVEL": "info",
           "LIMIT_BURST": ""
       }
    }




**Rules API :**

Rules API's will create/updates rules file configurations, Entries in this rules configuration file govern connection establishment by defining exceptions to the policies layed out in shorewall-policy. By default, subsequent requests and responses are automatically allowed using connection tracking. For any particular (source,dest) pair of zones, the rules are evaluated in the order in which they appear in this file and the first terminating match is the one that determines the disposition of the request. All rules are terminating except LOG and COUNT rules.


**POST /shorewall/server/:group/rules/:id**

**Describe Service:**

    Verb  URI                                                  Description
    POST  /shorewall/server/cpn-client1/rules/0559950bd0bc3    Creates the shorewall rules ACCEPT configuration file entry  in rules


###Request JSON:


    {
        "ACTION": "ACCEPT",
        "SOURCE_zone": "$FW",
        "DEST_zone": "net",
        "PROTO": "icmp",
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
       "id": "0559950bd0bc3",
       "entityName": "rules",
       "group": "cpn-client1",
       "config":
       {
           "ACTION": "ACCEPT",
           "SOURCE_zone": "$FW",
           "DEST_zone": "net",
           "PROTO": "icmp",
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
    }

    
**GET /shorewall/server/:group/rules/:id**

**Describe Service:**

    Verb  URI                                                 Description
    GET   /shorewall/server/cpn-client1/rules/0559950bd0bc3   Describes the shorewall rules ACCEPT configuration file entry  in rules

###Response JSON :

    {
       "id": "0559950bd0bc3",
       "entityName": "rules",
       "group": "cpn-client1",
       "config":
       {
           "ACTION": "ACCEPT",
           "SOURCE_zone": "$FW",
           "DEST_zone": "net",
           "PROTO": "icmp",
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
    }
    
    
    

**Routestopped API**

This file is used to define the hosts that are accessible when the firewall is stopped or is being stopped.


**POST /shorewall/server/:group/routestopped/:id**


**Describe Service:**

    Verb  URI                                                        Description
    POST  /shorewall/server/cpn-client1/routestopped/0559950bd0bc4   Creates the shorewall routestopped configuration file entry 


###Request JSON:

    {
        "INTERFACE": "eth0",
        "HOSTS": "192.168.8.140",
        "OPTIONS": "",
        "PROTO": "",
        "DEST_PORTS": "",
        "SOURCE_PORTS": ""
    }

###Response JSON :

    {
       "id": "0559950bd0bc4",
       "entityName": "routestopped",
       "group": "cpn-client1",
       "config":
       {
           "INTERFACE": "eth0",
           "HOSTS": "192.168.8.140",
           "OPTIONS": "",
           "PROTO": "",
           "DEST_PORTS": "",
           "SOURCE_PORTS": ""
       }
    }


**GET /shorewall/server/:group/routestopped/:id **

**Describe Service:**

    Verb  URI                                                        Description 
    GET   /shorewall/server/cpn-client1/routestopped/0559950bd0bc4   Describes the shorewall routestopped configuration file entry 


###Response JSON :

    {
       "id": "0559950bd0bc4",
       "entityName": "routestopped",
       "group": "cpn-client1",
       "config":
       {
           "INTERFACE": "eth0",
           "HOSTS": "192.168.8.140",
           "OPTIONS": "",
           "PROTO": "",
           "DEST_PORTS": "",
           "SOURCE_PORTS": ""
       }
    }

**POST /shorewall/client/:group/:action**

**Describe Service:**

    Verb  URI                                            Description
    POST  /shorewall/client/cpn-client1/capabilities     Creates the shorewall capabilities configuration file entry in shorewall-lite client


**GET /shorewall/client/capabilities/:group**

**Describe Service:**

    Verb  URI                                               Description
    GET   /shorewall/client/capabilities/cpn-client1        Describes the shorewall capabilities configuration file entry to orchestration 

###Response JSON :

    {
       "content": "IwojIFNob3Jld2FsbCA0LjQuMjYuMSBkZXRlY3RlZCB0aGUgZm9sbG93aW5nIGlwdGFibGVzL25ldGZpbHRlciBjYXBhYmlsaXRpZXMgLSBUdWUgT2N0IDMwIDE3OjAzOjUyIElTVCAyMDEyCiMKTkFUX0VOQUJMRUQ9WWVzCk1BTkdMRV9FTkFCTEVEPVllcwpNVUxUSVBPUlQ9WWVzClhNVUxUSVBPUlQ9WWVzCkNPTk5UUkFDS19NQVRDSD1ZZXMKTkVXX0NPTk5UUkFDS19NQVRDSD1ZZXMKT0xEX0NPTk5UUkFDS19NQVRDSD0KVVNFUEtUVFlQRT1ZZXMKUE9MSUNZX01BVENIPVllcwpQSFlTREVWX01BVENIPVllcwpQSFlTREVWX0JSSURHRT1ZZXMKTEVOR1RIX01BVENIPVllcwpJUFJBTkdFX01BVENIPVllcwpSRUNFTlRfTUFUQ0g9WWVzCk9XTkVSX01BVENIPVllcwpJUFNFVF9NQVRDSD0KT0xEX0lQU0VUX01BVENIPQpDT05OTUFSSz1ZZXMKWENPTk5NQVJLPVllcwpDT05OTUFSS19NQVRDSD1ZZXMKWENPTk5NQVJLX01BVENIPVllcwpSQVdfVEFCTEU9WWVzClJBV1BPU1RfVEFCTEU9CklQUDJQX01BVENIPQpPTERfSVBQMlBfTUFUQ0g9CkNMQVNTSUZZX1RBUkdFVD1ZZXMKRU5IQU5DRURfUkVKRUNUPVllcwpLTFVER0VGUkVFPVllcwpNQVJLPVllcwpYTUFSSz1ZZXMKRVhNQVJLPVllcwpNQU5HTEVfRk9SV0FSRD1ZZXMKQ09NTUVOVFM9WWVzCkFERFJUWVBFPVllcwpUQ1BNU1NfTUFUQ0g9WWVzCkhBU0hMSU1JVF9NQVRDSD1ZZXMKT0xEX0hMX01BVENIPQpORlFVRVVFX1RBUkdFVD1ZZXMKUkVBTE1fTUFUQ0g9WWVzCkhFTFBFUl9NQVRDSD1ZZXMKQ09OTkxJTUlUX01BVENIPVllcwpUSU1FX01BVENIPVllcwpHT1RPX1RBUkdFVD1ZZXMKTE9HTUFSS19UQVJHRVQ9CklQTUFSS19UQVJHRVQ9CkxPR19UQVJHRVQ9WWVzClVMT0dfVEFSR0VUPVllcwpORkxPR19UQVJHRVQ9WWVzClBFUlNJU1RFTlRfU05BVD1ZZXMKVFBST1hZX1RBUkdFVD1ZZXMKRkxPV19GSUxURVI9WWVzCkZXTUFSS19SVF9NQVNLPVllcwpNQVJLX0FOWVdIRVJFPVllcwpIRUFERVJfTUFUQ0g9CkFDQ09VTlRfVEFSR0VUPQpBVURJVF9UQVJHRVQ9WWVzCklQU0VUX1Y1PQpDT05ESVRJT05fTUFUQ0g9CklQVEFCTEVTX1M9WWVzCkJBU0lDX0ZJTFRFUj1ZZXMKQ0FQVkVSU0lPTj00MDQyNgpLRVJORUxWRVJTSU9OPTMwMjAwCg=="
    }

**POST /shorewall/capabilities/server/:group**

    Verb  URI                                             Description
    POST  /shorewall/capabilities/server/cpn-client1      Post the shorewall capabilities configuration file entry to shorewall server 


###Request JSON:

    {
       "content": "IwojIFNob3Jld2FsbCA0LjQuMjYuMSBkZXRlY3RlZCB0aGUgZm9sbG93aW5nIGlwdGFibGVzL25ldGZpbHRlciBjYXBhYmlsaXRpZXMgLSBUdWUgT2N0IDMwIDE3OjAzOjUyIElTVCAyMDEyCiMKTkFUX0VOQUJMRUQ9WWVzCk1BTkdMRV9FTkFCTEVEPVllcwpNVUxUSVBPUlQ9WWVzClhNVUxUSVBPUlQ9WWVzCkNPTk5UUkFDS19NQVRDSD1ZZXMKTkVXX0NPTk5UUkFDS19NQVRDSD1ZZXMKT0xEX0NPTk5UUkFDS19NQVRDSD0KVVNFUEtUVFlQRT1ZZXMKUE9MSUNZX01BVENIPVllcwpQSFlTREVWX01BVENIPVllcwpQSFlTREVWX0JSSURHRT1ZZXMKTEVOR1RIX01BVENIPVllcwpJUFJBTkdFX01BVENIPVllcwpSRUNFTlRfTUFUQ0g9WWVzCk9XTkVSX01BVENIPVllcwpJUFNFVF9NQVRDSD0KT0xEX0lQU0VUX01BVENIPQpDT05OTUFSSz1ZZXMKWENPTk5NQVJLPVllcwpDT05OTUFSS19NQVRDSD1ZZXMKWENPTk5NQVJLX01BVENIPVllcwpSQVdfVEFCTEU9WWVzClJBV1BPU1RfVEFCTEU9CklQUDJQX01BVENIPQpPTERfSVBQMlBfTUFUQ0g9CkNMQVNTSUZZX1RBUkdFVD1ZZXMKRU5IQU5DRURfUkVKRUNUPVllcwpLTFVER0VGUkVFPVllcwpNQVJLPVllcwpYTUFSSz1ZZXMKRVhNQVJLPVllcwpNQU5HTEVfRk9SV0FSRD1ZZXMKQ09NTUVOVFM9WWVzCkFERFJUWVBFPVllcwpUQ1BNU1NfTUFUQ0g9WWVzCkhBU0hMSU1JVF9NQVRDSD1ZZXMKT0xEX0hMX01BVENIPQpORlFVRVVFX1RBUkdFVD1ZZXMKUkVBTE1fTUFUQ0g9WWVzCkhFTFBFUl9NQVRDSD1ZZXMKQ09OTkxJTUlUX01BVENIPVllcwpUSU1FX01BVENIPVllcwpHT1RPX1RBUkdFVD1ZZXMKTE9HTUFSS19UQVJHRVQ9CklQTUFSS19UQVJHRVQ9CkxPR19UQVJHRVQ9WWVzClVMT0dfVEFSR0VUPVllcwpORkxPR19UQVJHRVQ9WWVzClBFUlNJU1RFTlRfU05BVD1ZZXMKVFBST1hZX1RBUkdFVD1ZZXMKRkxPV19GSUxURVI9WWVzCkZXTUFSS19SVF9NQVNLPVllcwpNQVJLX0FOWVdIRVJFPVllcwpIRUFERVJfTUFUQ0g9CkFDQ09VTlRfVEFSR0VUPQpBVURJVF9UQVJHRVQ9WWVzCklQU0VUX1Y1PQpDT05ESVRJT05fTUFUQ0g9CklQVEFCTEVTX1M9WWVzCkJBU0lDX0ZJTFRFUj1ZZXMKQ0FQVkVSU0lPTj00MDQyNgpLRVJORUxWRVJTSU9OPTMwMjAwCg=="
    }

###Response JSON :

    {
       "result": "true"
    }


**/shorewall/server/:group/:action**

This API  compiles the configurations for the respective clients directory and creates firewall and firewall.conf in /config/shorewall/:group/ directory
we can call by three API's as below.

**POST /shorewall/server/:group/capabilities**
This API will be called only if we dont have capabilities file from respective clients, since it is generic capabilities file for all clients

**Describe Service:**

    Verb  URI                                             Description
    POST  /shorewall/server/cpn-client1/capabilities      Creates the capabilities on  shorewall server on respective client directory 

###Response JSON :

    {
       "result": "true"
    }
    
**POST /shorewall/server/:group/build**


**Describe Service:**

    Verb  URI                                             Description
    POST  /shorewall/server/cpn-client1/build             Starts the compilation of firewall service on shorewall server to create friewall and firewall.conf files

###Response JSON :

    {
       "result": "Compiling... Processing /config/shorewall/cpn-client1/shorewall.conf... Compiling /config/shorewall/cpn-client1/zones... Compiling /config/shorewall/cpn-client1/interfaces... Determining Hosts in Zones... Preprocessing Action Files... Compiling ... Pre-processing /usr/share/shorewall/action.Drop... Pre-processing /usr/share/shorewall/action.Reject... Compiling /config/shorewall/cpn-client1/policy... Adding Anti-smurf Rules Adding rules for DHCP Compiling TCP Flags filtering... Compiling Kernel Route Filtering... Compiling Martian Logging... Compiling MAC Filtration -- Phase 1... Compiling /config/shorewall/cpn-client1/rules... Generating Transitive Closure of Used-action List... Processing /usr/share/shorewall/action.Reject for chain Reject... Compiling ... Processing /usr/share/shorewall/action.Drop for chain Drop... Compiling MAC Filtration -- Phase 2... Applying Policies... Generating Rule Matrix... Creating iptables-restore input... Compiling iptables-restore input for chain mangle:... Compiling /config/shorewall/cpn-client1/routestopped... Shorewall configuration compiled to /config/shorewall/cpn-client1/firewall "
    }

**POST /shorewall/server/:group/rebuild**
    
**Describe Service:**

    Verb  URI                                             Description
    POST  /shorewall/server/cpn-client1/rebuild           Restarts the compilation of firewall service on shorewall server to create friewall and firewall.conf files

###Response JSON :

    {
       "result": "Compiling... Processing /config/shorewall/cpn-client1/shorewall.conf... Compiling /config/shorewall/cpn-client1/zones... Compiling /config/shorewall/cpn-client1/interfaces... Determining Hosts in Zones... Preprocessing Action Files... Compiling ... Pre-processing /usr/share/shorewall/action.Drop... Pre-processing /usr/share/shorewall/action.Reject... Compiling /config/shorewall/cpn-client1/policy... Adding Anti-smurf Rules Adding rules for DHCP Compiling TCP Flags filtering... Compiling Kernel Route Filtering... Compiling Martian Logging... Compiling MAC Filtration -- Phase 1... Compiling /config/shorewall/cpn-client1/rules... Generating Transitive Closure of Used-action List... Processing /usr/share/shorewall/action.Reject for chain Reject... Compiling ... Processing /usr/share/shorewall/action.Drop for chain Drop... Compiling MAC Filtration -- Phase 2... Applying Policies... Generating Rule Matrix... Creating iptables-restore input... Compiling iptables-restore input for chain mangle:... Compiling /config/shorewall/cpn-client1/routestopped... Shorewall configuration compiled to /config/shorewall/cpn-client1/firewall "
    }

**GET /shorewall/server/firewall/:group/scripts**

This API get Firewall and firewall.conf from server to orchestration

**Describe Service:**

    Verb  URI                                                  Description
    GET   /shorewall/server/firewall/cpn-client1/scripts       Describes to get the friewall and firewall.conf files from shorewall server to orchestration

###Response JSON :


    {
       "firewall": "IwojIFNob3Jld2FsbCBhdXhpbGlhcnkgY29uZmlndXJhdGlvbiBmaWxlIGNyZWF0ZWQgYnkgU2hvcmV3YWxsIHZlcnNpb24gNC40LjExLjYgLSBXZWQgT2N0IDMxIDIwOjI4OjM3IDIwMTIKIwpbIC1uICIke1ZFUkJPU0lUWTo9MX0iIF0KWyAtbiAiJHtMT0dGSUxFOj0vdmFyL2xvZy9tZXNzYWdlc30iIF0KWyAtbiAiJHtMT0dGT1JNQVQ6PVNob3Jld2FsbDolczolczp9IiBdClsgLW4gIiR7UEFUSDo9L3NiaW46L2JpbjovdXNyL3NiaW46L3Vzci9iaW46L3Vzci9sb2NhbC9iaW46L3Vzci9sb2NhbC9zYmlufSIgXQpbIC1uICIke1NIT1JFV0FMTF9TSEVMTDo9L2Jpbi9zaH0iIF0KWyAtbiAiJHtSRVNUT1JFRklMRTo9cmVzdG9yZX0iIF0KVENfRU5BQkxFRD0iSW50ZXJuYWwiCg==",
       "firewallconf": "IyEvYmluL3NoCiMKIyBDb21waWxlZCBmaXJld2FsbCBzY3JpcHQgZ2VuZXJhdGVkIGJ5IFNob3Jld2FsbCA0LjQuMTEuNiAtIFdlZCBPY3QgMzEgMjA6Mjg6MzcgMjAxMgojCiMhL2Jpbi9zaAojCiMgICAgIFRoaXMgcHJvZ3JhbSBpcyB1bmRlciBHUEwgW2h0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy9vbGQtbGljZW5zZXMvZ3BsLTIuMC50eHRdCiMKIyAgICAgKGMpIDE5OTktMjAxMCAtIFRvbSBFYXN0ZXAgKHRlYXN0ZXBAc2hvcmV3YWxsLm5ldCkKIwojCU9wdGlvbnMgYXJlOgojCiMJICAgIC1uCQkJCSAgRG9uJ3QgYWx0ZXIgUm91dGluZwojCSAgICAtdiBhbmQgLXEJCQkgIFN0YW5kYXJkIFNob3Jld2FsbCBWZXJib3NpdHkgY29udHJvbAojICAgICAgICAgICAtdCAgICAgICAgICAgICAgICAgICAgICAgICAgICBUaW1lc3RhbXAgcHJvZ3Jlc3MgbWVzc2FnZXMKIyAgICAgICAgICAgLXAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUHVyZ2UgY29ubnRyYWNrIHRhYmxlCiMgICAgICAgICAgIC1yICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlY292ZXIgZnJvbSBmYWlsZWQgc3RhcnQvcmVzdGFydAojICAgICAgICAgICAtViA8dmVyYm9zaXR5PiAgICAgICAgICAgICAgICBTZXQgdmVyYm9zaXR5IGxldmVsIGV4cGxpY2l0bHkKIyAgICAgICAgICAgLVIgPHJlc3RvcmU+ICAgICAgICAgICAgICAgICAgT3ZlcnJpZGVzIFJFU1RPUkVGSUxFIHNldHRpbmcKIwojCUNvbW1hbmRzIGFyZToKIwojCSAgIHN0YXJ0CQkJICBTdGFydHMgdGhlIGZpcmV3YWxsCiMgICAgICAgICAgcmVmcmVzaCAgICAgICAgICAgICAgICAgICAgICAgIFJlZnJlc2ggdGhlIGZpcmV3YWxsCiMJICAgcmVzdGFydAkJCSAgUmVzdGFydHMgdGhlIGZpcmV3YWxsCiMJICAgcmVsb2FkCQkJICBSZWxvYWQgdGhlIGZpcmV3YWxsCiMJICAgY2xlYXIJCQkgIFJlbW92ZXMgYWxsIGZpcmV3YWxsIHJ1bGVzCiMJICAgc3RvcAkJCQkgIFN0b3BzIHRoZSBmaXJld2FsbAojCSAgIHN0YXR1cwkJCSAgRGlzcGxheXMgZmlyZXdhbGwgc3RhdHVzCiMJICAgdmVyc2lvbgkJCSAgRGlzcGxheXMgdGhlIHZlcnNpb24gb2YgU2hvcmV3YWxsIHRoYXQKIwkgICAJCQkJICBnZW5lcmF0ZWQgdGhpcyBwcm9ncmFtCiMKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyBGdW5jdGlvbnMgaW1wb3J0ZWQgZnJvbSAvdXNyL3NoYXJlL3Nob3Jld2FsbC9wcm9nLmhlYWRlcgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojCiMgQ29uZGl0aW9uYWxseSBwcm9kdWNlIG1lc3NhZ2UKIwpwcm9ncmVzc19tZXNzYWdlKCkgIyAkKiA9IE1lc3NhZ2UKewogICAgbG9jYWwgdGltZXN0YW1wCiAgICB0aW1lc3RhbXA9CgogICAgaWYgWyAkVkVSQk9TSVRZIC1ndCAxIF07IHRoZW4KCVsgLW4gIiRnX3RpbWVzdGFtcCIgXSAmJiB0aW1lc3RhbXA9IiQoZGF0ZSArJUg6JU06JVMpICIKCWVjaG8gIiR7dGltZXN0YW1wfSRAIgogICAgZmkKCiAgICBpZiBbICRMT0dfVkVSQk9TSVRZIC1ndCAxIF07IHRoZW4KICAgICAgICB0aW1lc3RhbXA9IiQoZGF0ZSArJyViICVfZCAlVCcpICIKICAgICAgICBlY2hvICIke3RpbWVzdGFtcH0kQCIgPj4gJFNUQVJUVVBfTE9HCiAgICBmaQp9Cgpwcm9ncmVzc19tZXNzYWdlMigpICMgJCogPSBNZXNzYWdlCnsKICAgIGxvY2FsIHRpbWVzdGFtcAogICAgdGltZXN0YW1wPQoKICAgIGlmIFsgJFZFUkJPU0lUWSAtZ3QgMCBdOyB0aGVuCglbIC1uICIkZ190aW1lc3RhbXAiIF0gJiYgdGltZXN0YW1wPSIkKGRhdGUgKyVIOiVNOiVTKSAiCgllY2hvICIke3RpbWVzdGFtcH0kQCIKICAgIGZpCgogICAgaWYgWyAkTE9HX1ZFUkJPU0lUWSAtZ3QgMCBdOyB0aGVuCiAgICAgICAgdGltZXN0YW1wPSIkKGRhdGUgKyclYiAlX2QgJVQnKSAiCiAgICAgICAgZWNobyAiJHt0aW1lc3RhbXB9JEAiID4+ICRTVEFSVFVQX0xPRwogICAgZmkKfQoKcHJvZ3Jlc3NfbWVzc2FnZTMoKSAjICQqID0gTWVzc2FnZQp7CiAgICBsb2NhbCB0aW1lc3RhbXAKICAgIHRpbWVzdGFtcD0KCiAgICBpZiBbICRWRVJCT1NJVFkgLWdlIDAgXTsgdGhlbgoJWyAtbiAiJGdfdGltZXN0YW1wIiBdICYmIHRpbWVzdGFtcD0iJChkYXRlICslSDolTTolUykgIgoJZWNobyAiJHt0aW1lc3RhbXB9JEAiCiAgICBmaQoKICAgIGlmIFsgJExPR19WRVJCT1NJVFkgLWdlIDAgXTsgdGhlbgogICAgICAgIHRpbWVzdGFtcD0iJChkYXRlICsnJWIgJV9kICVUJykgIgogICAgICAgIGVjaG8gIiR7dGltZXN0YW1wfSRAIiA+PiAkU1RBUlRVUF9MT0cKICAgIGZpCn0KCiMKIyBTZXQgYSBzdGFuZGFyZCBjaGFpbidzIHBvbGljeQojCnNldHBvbGljeSgpICMgJDEgPSBuYW1lIG9mIGNoYWluLCAkMiA9IHBvbGljeQp7CiAgICBydW5faXB0YWJsZXMgLVAgJDEgJDIKfQoKIwojIFNldCBhIHN0YW5kYXJkIGNoYWluIHRvIGVuYWJsZSBlc3RhYmxpc2hlZCBhbmQgcmVsYXRlZCBjb25uZWN0aW9ucwojCnNldGNvbnRpbnVlKCkgIyAkMSA9IG5hbWUgb2YgY2hhaW4KewogICAgcnVuX2lwdGFibGVzIC1BICQxIC1tIHN0YXRlIC0tc3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKfQoKIwojIEZsdXNoIG9uZSBvZiB0aGUgTkFUIHRhYmxlIGNoYWlucwojCmZsdXNobmF0KCkgIyAkMSA9IG5hbWUgb2YgY2hhaW4KewogICAgcnVuX2lwdGFibGVzIC10IG5hdCAtRiAkMQp9CgojCiMgRmx1c2ggb25lIG9mIHRoZSBNYW5nbGUgdGFibGUgY2hhaW5zCiMKZmx1c2htYW5nbGUoKSAjICQxID0gbmFtZSBvZiBjaGFpbgp7CiAgICBydW5faXB0YWJsZXMgLXQgbWFuZ2xlIC1GICQxCn0KCiMKIyBGbHVzaCBhbmQgZGVsZXRlIGFsbCB1c2VyLWRlZmluZWQgY2hhaW5zIGluIHRoZSBmaWx0ZXIgdGFibGUKIwpkZWxldGVhbGxjaGFpbnMoKSB7CiAgICBydW5faXB0YWJsZXMgLUYKICAgIHJ1bl9pcHRhYmxlcyAtWAp9CgojCiMgR2VuZXJhdGUgYSBsaXN0IG9mIGFsbCBuZXR3b3JrIGludGVyZmFjZXMgb24gdGhlIHN5c3RlbQojCmZpbmRfYWxsX2ludGVyZmFjZXMoKSB7CiAgICAke0lQOi1pcH0gbGluayBsaXN0IHwgZWdyZXAgJ15bWzpkaWdpdDpdXSs6JyB8IGN1dCAtZCAnICcgLWYyIHwgc2VkICdzLzokLy8nCn0KCiMKIyBGaW5kIHRoZSB2YWx1ZSAnZGV2JyBpbiB0aGUgcGFzc2VkIGFyZ3VtZW50cyB0aGVuIGVjaG8gdGhlIG5leHQgdmFsdWUKIwoKZmluZF9kZXZpY2UoKSB7CiAgICB3aGlsZSBbICQjIC1ndCAxIF07IGRvCglbICJ4JDEiID0geGRldiBdICYmIGVjaG8gJDIgJiYgcmV0dXJuCglzaGlmdAogICAgZG9uZQp9CgojCiMgRmluZCB0aGUgdmFsdWUgJ3ZpYScgaW4gdGhlIHBhc3NlZCBhcmd1bWVudHMgdGhlbiBlY2hvIHRoZSBuZXh0IHZhbHVlCiMKCmZpbmRfZ2F0ZXdheSgpIHsKICAgIHdoaWxlIFsgJCMgLWd0IDEgXTsgZG8KCVsgIngkMSIgPSB4dmlhIF0gJiYgZWNobyAkMiAmJiByZXR1cm4KCXNoaWZ0CiAgICBkb25lCn0KCiMKIyBGaW5kIHRoZSB2YWx1ZSAnbXR1JyBpbiB0aGUgcGFzc2VkIGFyZ3VtZW50cyB0aGVuIGVjaG8gdGhlIG5leHQgdmFsdWUKIwoKZmluZF9tdHUoKSB7CiAgICB3aGlsZSBbICQjIC1ndCAxIF07IGRvCglbICJ4JDEiID0geG10dSBdICYmIGVjaG8gJDIgJiYgcmV0dXJuCglzaGlmdAogICAgZG9uZQp9CgojCiMgRmluZCB0aGUgdmFsdWUgJ3BlZXInIGluIHRoZSBwYXNzZWQgYXJndW1lbnRzIHRoZW4gZWNobyB0aGUgbmV4dCB2YWx1ZSB1cCB0bwojICIvIgojCgpmaW5kX3BlZXIoKSB7CiAgICB3aGlsZSBbICQjIC1ndCAxIF07IGRvCglbICJ4JDEiID0geHBlZXIgXSAmJiBlY2hvICR7MiUvKn0gJiYgcmV0dXJuCglzaGlmdAogICAgZG9uZQp9CgojCiMgRmluZCB0aGUgaW50ZXJmYWNlcyB0aGF0IGhhdmUgYSByb3V0ZSB0byB0aGUgcGFzc2VkIGFkZHJlc3MgLSB0aGUgZGVmYXVsdAojIHJvdXRlIGlzIG5vdCB1c2VkLgojCgpmaW5kX3J0X2ludGVyZmFjZSgpIHsKICAgICRJUCAtNCByb3V0ZSBsaXN0IHwgd2hpbGUgcmVhZCBhZGRyIHJlc3Q7IGRvCgljYXNlICRhZGRyIGluCgkgICAgKi8qKQoJCWluX25ldHdvcmsgJHsxJS8qfSAkYWRkciAmJiBlY2hvICQoZmluZF9kZXZpY2UgJHJlc3QpCgkJOzsKCSAgICBkZWZhdWx0KQoJCTs7CgkgICAgKikKCQlpZiBbICIkYWRkciIgPSAiJDEiIC1vICIkYWRkci8zMiIgPSAiJDEiIF07IHRoZW4KCQkgICAgZWNobyAkKGZpbmRfZGV2aWNlICRyZXN0KQoJCWZpCgkJOzsKCWVzYWMKICAgIGRvbmUKfQoKIwojIFRyeSB0byBmaW5kIHRoZSBnYXRld2F5IHRocm91Z2ggYW4gaW50ZXJmYWNlIGxvb2tpbmcgZm9yICduZXh0aG9wJwoKZmluZF9uZXh0aG9wKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICBlY2hvICQoZmluZF9nYXRld2F5IGAkSVAgLTQgcm91dGUgbGlzdCB8IGdyZXAgIltbOnNwYWNlOl1dbmV4dGhvcC4qICQxImApCn0KCiMKIyBGaW5kIHRoZSBkZWZhdWx0IHJvdXRlJ3MgaW50ZXJmYWNlCiMKZmluZF9kZWZhdWx0X2ludGVyZmFjZSgpIHsKICAgICRJUCAtNCByb3V0ZSBsaXN0IHwgd2hpbGUgcmVhZCBmaXJzdCByZXN0OyBkbwoJWyAiJGZpcnN0IiA9IGRlZmF1bHQgXSAmJiBlY2hvICQoZmluZF9kZXZpY2UgJHJlc3QpICYmIHJldHVybgogICAgZG9uZQp9CgojCiMgRWNobyB0aGUgbmFtZSBvZiB0aGUgaW50ZXJmYWNlKHMpIHRoYXQgd2lsbCBiZSB1c2VkIHRvIHNlbmQgdG8gdGhlCiMgcGFzc2VkIGFkZHJlc3MKIwoKZmluZF9pbnRlcmZhY2VfYnlfYWRkcmVzcygpIHsKICAgIGxvY2FsIGRldgogICAgZGV2PSIkKGZpbmRfcnRfaW50ZXJmYWNlICQxKSIKICAgIGxvY2FsIGZpcnN0CiAgICBsb2NhbCByZXN0CgogICAgWyAteiAiJGRldiIgXSAmJiBkZXY9JChmaW5kX2RlZmF1bHRfaW50ZXJmYWNlKQoKICAgIFsgLW4gIiRkZXYiIF0gJiYgZWNobyAkZGV2Cn0KCiMKIyBEZXRlcm1pbmUgaWYgSW50ZXJmYWNlIGlzIHVwCiMKaW50ZXJmYWNlX2lzX3VwKCkgewogICAgWyAtbiAiJCgkSVAgbGluayBsaXN0IGRldiAkMSAyPiAvZGV2L251bGwgfCBncmVwIC1lICdbPCxdVVBbLD5dJykiIF0KfQoKIwojIERldGVybWluZSBpZiBpbnRlcmZhY2UgaXMgdXNhYmxlIGZyb20gYSBOZXRmaWx0ZXIgcHJlc3BlY3RpdmUKIwppbnRlcmZhY2VfaXNfdXNhYmxlKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICBbICIkMSIgPSBsbyBdICYmIHJldHVybiAwCiAgICBpbnRlcmZhY2VfaXNfdXAgJDEgJiYgWyAiJChmaW5kX2ZpcnN0X2ludGVyZmFjZV9hZGRyZXNzX2lmX2FueSAkMSkiICE9IDAuMC4wLjAgXSAmJiBydW5faXN1c2FibGVfZXhpdCAkMQp9CgojCiMgRmluZCBpbnRlcmZhY2UgYWRkcmVzc2VzLS1yZXR1cm5zIHRoZSBzZXQgb2YgYWRkcmVzc2VzIGFzc2lnbmVkIHRvIHRoZSBwYXNzZWQKIyBkZXZpY2UKIwpmaW5kX2ludGVyZmFjZV9hZGRyZXNzZXMoKSAjICQxID0gaW50ZXJmYWNlCnsKICAgICRJUCAtZiBpbmV0IGFkZHIgc2hvdyAkMSAyPiAvZGV2L251bGwgfCBncmVwIGluZXRcICB8IHNlZCAncy9ccyppbmV0IC8vO3MvXC8uKi8vO3MvIHBlZXIuKi8vJwp9CgojCiMgIGVjaG8gdGhlIGxpc3Qgb2YgbmV0d29ya3Mgcm91dGVkIG91dCBvZiBhIGdpdmVuIGludGVyZmFjZQojCmdldF9yb3V0ZWRfbmV0d29ya3MoKSAjICQxID0gaW50ZXJmYWNlIG5hbWUsICQyLW4gPSBGYXRhbCBlcnJvciBtZXNzYWdlCnsKICAgIGxvY2FsIGFkZHJlc3MKICAgIGxvY2FsIHJlc3QKCiAgICAkSVAgLTQgcm91dGUgc2hvdyBkZXYgJDEgMj4gL2Rldi9udWxsIHwKCXdoaWxlIHJlYWQgYWRkcmVzcyByZXN0OyBkbwoJICAgIGNhc2UgIiRhZGRyZXNzIiBpbgoJCWRlZmF1bHQpCgkJICAgIGlmIFsgJCMgLWd0IDEgXTsgdGhlbgoJCQlzaGlmdAoJCQlmYXRhbF9lcnJvciAiJEAiCgkJICAgIGVsc2UKCQkJZWNobyAiV0FSTklORzogZGVmYXVsdCByb3V0ZSBpZ25vcmVkIG9uIGludGVyZmFjZSAkMSIgPiYyCgkJICAgIGZpCgkJICAgIDs7CgkJbXVsdGljYXN0fGJyb2FkY2FzdHxwcm9oaWJpdHxuYXR8dGhyb3d8bmV4dGhvcCkKCQkgICAgOzsKCQkqKQoJCSAgICBbICIkYWRkcmVzcyIgPSAiJHthZGRyZXNzJS8qfSIgXSAmJiBhZGRyZXNzPSIke2FkZHJlc3N9LzMyIgoJCSAgICBlY2hvICRhZGRyZXNzCgkJICAgIDs7CgkgICAgZXNhYwogICAgICAgIGRvbmUKfQoKIwojIEdldCB0aGUgYnJvYWRjYXN0IGFkZHJlc3NlcyBhc3NvY2lhdGVkIHdpdGggYW4gaW50ZXJmYWNlCiMKZ2V0X2ludGVyZmFjZV9iY2FzdHMoKSAjICQxID0gaW50ZXJmYWNlCnsKICAgIGxvY2FsIGFkZHJlc3NlcwogICAgYWRkcmVzc2VzPQoKICAgICRJUCAtZiBpbmV0IGFkZHIgc2hvdyBkZXYgJDEgMj4gL2Rldi9udWxsIHwgZ3JlcCAnaW5ldC4qYnJkJyB8IHNlZCAncy9pbmV0LipicmQgLy87IHMvc2NvcGUuKi8vOycgfCBzb3J0IC11Cn0KCiMKIyBEZWxldGUgSVAgYWRkcmVzcwojCmRlbF9pcF9hZGRyKCkgIyAkMSA9IGFkZHJlc3MsICQyID0gaW50ZXJmYWNlCnsKICAgIFsgJChmaW5kX2ZpcnN0X2ludGVyZmFjZV9hZGRyZXNzX2lmX2FueSAkMikgPSAkMSBdIHx8IHF0ICRJUCBhZGRyIGRlbCAkMSBkZXYgJDIKfQoKIyBBZGQgSVAgQWxpYXNlcwojCmFkZF9pcF9hbGlhc2VzKCkgIyAkKiA9IExpc3Qgb2YgYWRkcmVzc2VzCnsKICAgIGxvY2FsIGxvY2FsCiAgICBsb2NhbCBhZGRyZXNzZXMKICAgIGxvY2FsIGV4dGVybmFsCiAgICBsb2NhbCBpbnRlcmZhY2UKICAgIGxvY2FsIGluZXQKICAgIGxvY2FsIGNpZHIKICAgIGxvY2FsIHJlc3QKICAgIGxvY2FsIHZhbAogICAgbG9jYWwgYXJwaW5nCiAgICBhcnBpbmc9JChteXdoaWNoIGFycGluZykKCiAgICBhZGRyZXNzX2RldGFpbHMoKQogICAgewoJIwoJIyBGb2xrcyBmZWVsIHVuZWFzeSBpZiB0aGV5IGRvbid0IHNlZSBhbGwgb2YgdGhlIHNhbWUKCSMgZGVjb3JhdGlvbiBvbiB0aGVzZSBJUCBhZGRyZXNzZXMgdGhhdCB0aGV5IHNlZSB3aGVuIHRoZWlyCgkjIGRpc3RybydzIG5ldCBjb25maWcgdG9vbCBhZGRzIHRoZW0uIEluIGFuIGF0dGVtcHQgdG8gcmVkdWNlCgkjIHRoZSBhbnhpZXR5IGxldmVsLCB3ZSBoYXZlIHRoZSBmb2xsb3dpbmcgY29kZSB3aGljaCBzZXRzCgkjIHRoZSBWTFNNIGFuZCBCUkQgZnJvbSBhbiBleGlzdGluZyBhZGRyZXNzIGluIHRoZSBzYW1lIG5ldHdvcmtzCgkjCgkjIEdldCBhbGwgb2YgdGhlIGxpbmVzIHRoYXQgY29udGFpbiBpbmV0IGFkZHJlc3NlcyB3aXRoIGJyb2FkY2FzdAoJIwoJJElQIC1mIGluZXQgYWRkciBzaG93ICRpbnRlcmZhY2UgMj4gL2Rldi9udWxsIHwgZ3JlcCAnaW5ldC4qYnJkJyB8IHdoaWxlIHJlYWQgaW5ldCBjaWRyIHJlc3QgOyBkbwoJICAgIGNhc2UgJGNpZHIgaW4KCQkqLyopCgkJICAgIGlmIGluX25ldHdvcmsgJGV4dGVybmFsICRjaWRyOyB0aGVuCgkJCWVjaG8gIi8ke2NpZHIjKi99IGJyZCAkKGJyb2FkY2FzdGFkZHJlc3MgJGNpZHIpIgoJCQlicmVhawoJCSAgICBmaQoJCSAgICA7OwoJICAgIGVzYWMKCWRvbmUKICAgIH0KCiAgICBkb19vbmUoKQogICAgewoJdmFsPSQoYWRkcmVzc19kZXRhaWxzKQoKCSRJUCBhZGRyIGFkZCAke2V4dGVybmFsfSR7dmFsfSBkZXYgJGludGVyZmFjZSAkbGFiZWwKCVsgLW4gIiRhcnBpbmciIF0gJiYgcXQgJGFycGluZyAtVSAtYyAyIC1JICRpbnRlcmZhY2UgJGV4dGVybmFsCgllY2hvICIkZXh0ZXJuYWwgJGludGVyZmFjZSIgPj4gJFZBUkRJUi9uYXQKCVsgLW4gIiRsYWJlbCIgXSAmJiBsYWJlbD0id2l0aCAkbGFiZWwiCglwcm9ncmVzc19tZXNzYWdlICIgICBJUCBBZGRyZXNzICRleHRlcm5hbCBhZGRlZCB0byBpbnRlcmZhY2UgJGludGVyZmFjZSAkbGFiZWwiCiAgICB9CgogICAgcHJvZ3Jlc3NfbWVzc2FnZSAiQWRkaW5nIElQIEFkZHJlc3Nlcy4uLiIKCiAgICB3aGlsZSBbICQjIC1ndCAwIF07IGRvCglleHRlcm5hbD0kMQoJaW50ZXJmYWNlPSQyCglsYWJlbD0KCglpZiBbICIkaW50ZXJmYWNlIiAhPSAiJHtpbnRlcmZhY2UlOip9IiBdOyB0aGVuCgkgICAgbGFiZWw9IiR7aW50ZXJmYWNlIyo6fSIKCSAgICBpbnRlcmZhY2U9IiR7aW50ZXJmYWNlJToqfSIKCSAgICBsYWJlbD0ibGFiZWwgJGludGVyZmFjZTokbGFiZWwiCglmaQoKCXNoaWZ0IDIKCglsaXN0X3NlYXJjaCAkZXh0ZXJuYWwgJChmaW5kX2ludGVyZmFjZV9hZGRyZXNzZXMgJGludGVyZmFjZSkgfHwgZG9fb25lCiAgICBkb25lCn0KCiMKIyBEZXRlY3QgdGhlIGdhdGV3YXkgdGhyb3VnaCBhIFBQUCBvciBESENQLWNvbmZpZ3VyZWQgaW50ZXJmYWNlCiMKZGV0ZWN0X2R5bmFtaWNfZ2F0ZXdheSgpIHsgIyAkMSA9IGludGVyZmFjZQogICAgbG9jYWwgaW50ZXJmYWNlCiAgICBpbnRlcmZhY2U9JDEKICAgIGxvY2FsIEdBVEVXQVlTCiAgICBHQVRFV0FZUz0KICAgIGxvY2FsIGdhdGV3YXkKCiAgICBnYXRld2F5PSQocnVuX2ZpbmRnd19leGl0ICQxKTsKCiAgICBpZiBbIC16ICIkZ2F0ZXdheSIgXTsgdGhlbgoJZ2F0ZXdheT0kKCBmaW5kX3BlZXIgJCgkSVAgYWRkciBsaXN0ICRpbnRlcmZhY2UgKSApCiAgICBmaQoKICAgIGlmIFsgLXogIiRnYXRld2F5IiAtYSAtZiAvdmFyL2xpYi9kaGNwY2QvZGhjcGNkLSR7MX0uaW5mbyBdOyB0aGVuCglldmFsICQoZ3JlcCBeR0FURVdBWVM9ICAvdmFyL2xpYi9kaGNwY2QvZGhjcGNkLSR7MX0uaW5mbyAyPiAvZGV2L251bGwpCglbIC1uICIkR0FURVdBWVMiIF0gJiYgR0FURVdBWVM9JHtHQVRFV0FZUyUsKn0gJiYgZ2F0ZXdheT0kR0FURVdBWVMKICAgIGZpCgogICAgaWYgWyAteiAiJGdhdGV3YXkiIC1hIC1mIC92YXIvbGliL2RoY3AvZGhjbGllbnQtJHsxfS5sZWFzZSBdOyB0aGVuCglnYXRld2F5PSQoZ3JlcCAnb3B0aW9uIHJvdXRlcnMnIC92YXIvbGliL2RoY3AvZGhjbGllbnQtJHsxfS5sZWFzZSB8IHRhaWwgLW4gMSB8IHdoaWxlIHJlYWQgajEgajIgZ2F0ZXdheTsgZG8gZWNobyAkZ2F0ZXdheSA7IHJldHVybiAwOyBkb25lKQogICAgZmkKCiAgICBbIC1uICIkZ2F0ZXdheSIgXSAmJiBlY2hvICRnYXRld2F5Cn0KCiMKIyBEZXRlY3QgdGhlIGdhdGV3YXkgdGhyb3VnaCBhbiBpbnRlcmZhY2UKIwpkZXRlY3RfZ2F0ZXdheSgpICMgJDEgPSBpbnRlcmZhY2UKewogICAgbG9jYWwgaW50ZXJmYWNlCiAgICBpbnRlcmZhY2U9JDEKICAgIGxvY2FsIGdhdGV3YXkKICAgICMKICAgICMgRmlyc3QgYXNzdW1lIHRoYXQgdGhpcyBpcyBzb21lIHNvcnQgb2YgZHluYW1pYyBpbnRlcmZhY2UKICAgICMKICAgIGdhdGV3YXk9JCggZGV0ZWN0X2R5bmFtaWNfZ2F0ZXdheSAkaW50ZXJmYWNlICkKICAgICMKICAgICMgTWF5YmUgdGhlcmUncyBhIGRlZmF1bHQgcm91dGUgdGhyb3VnaCB0aGlzIGdhdGV3YXkgYWxyZWFkeQogICAgIwogICAgWyAtbiAiJGdhdGV3YXkiIF0gfHwgZ2F0ZXdheT0kKGZpbmRfZ2F0ZXdheSAkKCRJUCAtNCByb3V0ZSBsaXN0IGRldiAkaW50ZXJmYWNlIHwgZ3JlcCBeZGVmYXVsdCkpCiAgICAjCiAgICAjIExhc3QgaG9wZSAtLSBpcyB0aGVyZSBhIGxvYWQtYmFsYW5jaW5nIHJvdXRlIHRocm91Z2ggdGhlIGludGVyZmFjZT8KICAgICMKICAgIFsgLW4gIiRnYXRld2F5IiBdIHx8IGdhdGV3YXk9JChmaW5kX25leHRob3AgJGludGVyZmFjZSkKICAgICMKICAgICMgQmUgc3VyZSB3ZSBmb3VuZCBvbmUKICAgICMKICAgIFsgLW4gIiRnYXRld2F5IiBdICYmIGVjaG8gJGdhdGV3YXkKfQoKIwojIERpc2FibGUgSVBWNgojCmRpc2FibGVfaXB2NigpIHsKICAgIGxvY2FsIGZvbwogICAgZm9vPSIkKCRJUCAtZiBpbmV0NiBhZGRyIGxpc3QgMj4gL2Rldi9udWxsKSIKCiAgICBpZiBbIC1uICIkZm9vIiBdOyB0aGVuCglpZiBbIC14ICIkSVA2VEFCTEVTIiBdOyB0aGVuCgkgICAgJElQNlRBQkxFUyAtUCBGT1JXQVJEIERST1AKCSAgICAkSVA2VEFCTEVTIC1QIElOUFVUIERST1AKCSAgICAkSVA2VEFCTEVTIC1QIE9VVFBVVCBEUk9QCgkgICAgJElQNlRBQkxFUyAtRgoJICAgICRJUDZUQUJMRVMgLVgKCSAgICAkSVA2VEFCTEVTIC1BIE9VVFBVVCAtbyBsbyAtaiBBQ0NFUFQKCSAgICAkSVA2VEFCTEVTIC1BIElOUFVUIC1pIGxvIC1qIEFDQ0VQVAoJZWxzZQoJICAgIGVycm9yX21lc3NhZ2UgIldBUk5JTkc6IERJU0FCTEVfSVBWNj1ZZXMgaW4gc2hvcmV3YWxsLmNvbmYgYnV0IHRoaXMgc3lzdGVtIGRvZXMgbm90IGFwcGVhciB0byBoYXZlIGlwNnRhYmxlcyIKCWZpCiAgICBmaQp9CgojCiMgQ2xlYXIgdGhlIGN1cnJlbnQgdHJhZmZpYyBzaGFwaW5nIGNvbmZpZ3VyYXRpb24KIwoKZGVsZXRlX3RjMSgpCnsKICAgIGNsZWFyX29uZV90YygpIHsKICAgICAgICAkVEMgcWRpc2MgZGVsIGRldiAkMSByb290IDI+IC9kZXYvbnVsbAogICAgICAgICRUQyBxZGlzYyBkZWwgZGV2ICQxIGluZ3Jlc3MgMj4gL2Rldi9udWxsCgogICAgfQoKICAgIHJ1bl90Y2NsZWFyX2V4aXQKCiAgICBydW5faXAgbGluayBsaXN0IHwgXAogICAgd2hpbGUgcmVhZCBpbnggaW50ZXJmYWNlIGRldGFpbHM7IGRvCiAgICAgICAgY2FzZSAkaW54IGluCiAgICAgICAgICAgIFswLTldKikKICAgICAgICAgICAgICAgIGNsZWFyX29uZV90YyAke2ludGVyZmFjZSU6fQogICAgICAgICAgICAgICAgOzsKICAgICAgICAgICAgKikKICAgICAgICAgICAgICAgIDs7CiAgICAgICAgZXNhYwogICAgZG9uZQp9CgojCiMgRGV0ZWN0IGEgZGV2aWNlJ3MgTVRVIC0tIGVjaG9zIHRoZSBwYXNzZWQgZGV2aWNlJ3MgTVRVCiMKZ2V0X2RldmljZV9tdHUoKSAjICQxID0gZGV2aWNlCnsKICAgIGxvY2FsIG91dHB1dAogICAgb3V0cHV0PSIkKCRJUCBsaW5rIGxpc3QgZGV2ICQxIDI+IC9kZXYvbnVsbCkiICMgcXVvdGVzIHJlcXVpcmVkIGZvciAvYmluL2FzaAoKICAgIGlmIFsgLW4gIiRvdXRwdXQiIF07IHRoZW4KCWVjaG8gJChmaW5kX210dSAkb3V0cHV0KQogICAgZWxzZQoJZWNobyAxNTAwCiAgICBmaQp9CgojCiMgVmVyc2lvbiBvZiB0aGUgYWJvdmUgdGhhdCBkb2Vzbid0IGdlbmVyYXRlIGFueSBvdXRwdXQgZm9yIE1UVSAxNTAwLgojIEdlbmVyYXRlcyAnbXR1IDxtdHUrPicgb3RoZXJ3aXNlLCB3aGVyZSA8bXR1Kz4gaXMgdGhlIGRldmljZSdzIE1UVSArIDEwMAojCmdldF9kZXZpY2VfbXR1MSgpICMgJDEgPSBkZXZpY2UKewogICAgbG9jYWwgb3V0cHV0CiAgICBvdXRwdXQ9IiQoJElQIGxpbmsgbGlzdCBkZXYgJDEgMj4gL2Rldi9udWxsKSIgIyBxdW90ZXMgcmVxdWlyZWQgZm9yIC9iaW4vYXNoCiAgICBsb2NhbCBtdHUKCiAgICBpZiBbIC1uICIkb3V0cHV0IiBdOyB0aGVuCgltdHU9JChmaW5kX210dSAkb3V0cHV0KQoJaWYgWyAtbiAiJG10dSIgXTsgdGhlbgoJICAgIFsgJG10dSA9IDE1MDAgXSB8fCBlY2hvIG10dSAkKCgkbXR1ICsgMTAwKSkKCWZpCiAgICBmaQoKfQoKIwojIFVuZG8gY2hhbmdlcyB0byByb3V0aW5nCiMKdW5kb19yb3V0aW5nKCkgewoKICAgIGlmIFsgLXogIiRnX25vcm91dGVzIiAgXTsgdGhlbgoJIwoJIyBSZXN0b3JlIHJ0X3RhYmxlcyBkYXRhYmFzZQoJIwoJaWYgWyAtZiAke1ZBUkRJUn0vcnRfdGFibGVzIF07IHRoZW4KCSAgICBbIC13IC9ldGMvaXByb3V0ZTIvcnRfdGFibGUgLWEgLXogIiRLRUVQX1JUX1RBQkxFUyIgXSAmJiBjcCAtZiAke1ZBUkRJUn0vcnRfdGFibGVzIC9ldGMvaXByb3V0ZTIvICYmIHByb2dyZXNzX21lc3NhZ2UgIi9ldGMvaXByb3V0ZTIvcnRfdGFibGVzIGRhdGFiYXNlIHJlc3RvcmVkIgoJICAgIHJtIC1mICR7VkFSRElSfS9ydF90YWJsZXMKCWZpCgkjCgkjIFJlc3RvcmUgdGhlIHJlc3Qgb2YgdGhlIHJvdXRpbmcgdGFibGUKCSMKCWlmIFsgLWYgJHtWQVJESVJ9L3VuZG9fcm91dGluZyBdOyB0aGVuCgkgICAgLiAke1ZBUkRJUn0vdW5kb19yb3V0aW5nCgkgICAgcHJvZ3Jlc3NfbWVzc2FnZSAiU2hvcmV3YWxsLWdlbmVyYXRlZCByb3V0aW5nIHRhYmxlcyBhbmQgcm91dGluZyBydWxlcyByZW1vdmVkIgoJICAgIHJtIC1mICR7VkFSRElSfS91bmRvX3JvdXRpbmcKCWZpCiAgICBmaQoKfQoKIwojIFJlc3RvcmUgdGhlIGRlZmF1bHQgcm91dGUgdGhhdCB3YXMgaW4gcGxhY2UgYmVmb3JlIHRoZSBpbml0aWFsICdzaG9yZXdhbGwgc3RhcnQnCiMKcmVzdG9yZV9kZWZhdWx0X3JvdXRlKCkgewogICAgaWYgWyAteiAiJGdfbm9yb3V0ZXMiIC1hIC1mICR7VkFSRElSfS9kZWZhdWx0X3JvdXRlIF07IHRoZW4KCWxvY2FsIGRlZmF1bHRfcm91dGUKCWRlZmF1bHRfcm91dGU9Cglsb2NhbCByb3V0ZQoJbG9jYWwgcmVzdWx0CglyZXN1bHQ9MQoKCXdoaWxlIHJlYWQgcm91dGUgOyBkbwoJICAgIGNhc2UgJHJvdXRlIGluCgkJZGVmYXVsdCopCgkJICAgIGlmIFsgLW4gIiRkZWZhdWx0X3JvdXRlIiBdOyB0aGVuCgkJCWNhc2UgIiRkZWZhdWx0X3JvdXRlIiBpbgoJCQkgICAgKm1ldHJpYyopCgkJICAgICAgICAgICAgICAgICMKCQkgICAgICAgICAgICAgICAgIyBEb24ndCByZXN0b3JlIGEgcm91dGUgd2l0aCBhIG1ldHJpYyAtLSB3ZSBvbmx5IHJlcGxhY2UgdGhlIG9uZSB3aXRoIG1ldHJpYyA9PSAwCgkJICAgICAgICAgICAgICAgICMKCQkJCXF0ICRJUCAtNCByb3V0ZSBkZWxldGUgZGVmYXVsdCBtZXRyaWMgMCAmJiBcCgkJCQkgICAgcHJvZ3Jlc3NfbWVzc2FnZSAiRGVmYXVsdCBSb3V0ZSB3aXRoIG1ldHJpYyAwIGRlbGV0ZWQiCgkJCQk7OwoJCQkgICAgKikKCQkJCXF0ICRJUCAtNCByb3V0ZSByZXBsYWNlICRkZWZhdWx0X3JvdXRlICYmIFwKCQkJCSAgICByZXN1bHQ9MCAmJiBcCgkJCQkgICAgcHJvZ3Jlc3NfbWVzc2FnZSAiRGVmYXVsdCBSb3V0ZSAoJHtkZWZhdWx0X3JvdXRlIyB9KSByZXN0b3JlZCIKCQkJCTs7CgkJCWVzYWMKCgkJCWJyZWFrCgkJICAgIGZpCgoJCSAgICBkZWZhdWx0X3JvdXRlPSIkZGVmYXVsdF9yb3V0ZSAkcm91dGUiCgkJICAgIDs7CgkJKikKCQkgICAgZGVmYXVsdF9yb3V0ZT0iJGRlZmF1bHRfcm91dGUgJHJvdXRlIgoJCSAgICA7OwoJICAgIGVzYWMKCWRvbmUgPCAke1ZBUkRJUn0vZGVmYXVsdF9yb3V0ZQoKCXJtIC1mICR7VkFSRElSfS9kZWZhdWx0X3JvdXRlCiAgICBmaQoKICAgIHJldHVybiAkcmVzdWx0Cn0KCiMKIyBEZXRlcm1pbmUgdGhlIE1BQyBhZGRyZXNzIG9mIHRoZSBwYXNzZWQgSVAgdGhyb3VnaCB0aGUgcGFzc2VkIGludGVyZmFjZQojCmZpbmRfbWFjKCkgIyAkMSA9IElQIGFkZHJlc3MsICQyID0gaW50ZXJmYWNlCnsKICAgIGlmIGludGVyZmFjZV9pc191c2FibGUgJDIgOyB0aGVuCglxdCBwaW5nIC1uYyAxIC10IDIgLUkgJDIgJDEKCglsb2NhbCByZXN1bHQKCXJlc3VsdD0kKCRJUCBuZWlnaCBsaXN0IHwgIGF3ayAiL14kMSAvIHtwcmludCBcJDV9IikKCgljYXNlICRyZXN1bHQgaW4KCSAgICBcPCpcPikKCQk7OwoJICAgICopCgkJWyAtbiAiJHJlc3VsdCIgXSAmJiBlY2hvICRyZXN1bHQKCQk7OwoJZXNhYwogICAgZmkKfQoKIwojIEZsdXNoIHRoZSBjb25udHJhY2sgdGFibGUgaWYgJGdfcHVyZ2UgaXMgbm9uLWVtcHR5CiMKY29uZGl0aW9uYWxseV9mbHVzaF9jb25udHJhY2soKSB7CgogICAgaWYgWyAtbiAiJGdfcHVyZ2UiIF07IHRoZW4KCWlmIFsgLW4gJChteXdoaWNoIGNvbm50cmFjaykgXTsgdGhlbgogICAgICAgICAgICBjb25udHJhY2sgLUYKCWVsc2UKICAgICAgICAgICAgZXJyb3JfbWVzc2FnZSAiV0FSTklORzogVGhlICctcCcgb3B0aW9uIHJlcXVpcmVzIHRoZSBjb25udHJhY2sgdXRpbGl0eSB3aGljaCBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgaW5zdGFsbGVkIG9uIHRoaXMgc3lzdGVtIgoJZmkKICAgIGZpCn0KCiMKIyBDbGVhciBQcm94eSBBcnAKIwpkZWxldGVfcHJveHlhcnAoKSB7CiAgICBpZiBbIC1mICR7VkFSRElSfS9wcm94eWFycCBdOyB0aGVuCgl3aGlsZSByZWFkIGFkZHJlc3MgaW50ZXJmYWNlIGV4dGVybmFsIGhhdmVyb3V0ZTsgZG8KCSAgICBxdCBhcnAgLWkgJGV4dGVybmFsIC1kICRhZGRyZXNzIHB1YgoJICAgIFsgLXogIiR7aGF2ZXJvdXRlfSR7Z19ub3JvdXRlc30iIF0gJiYgcXQgJElQIC00IHJvdXRlIGRlbCAkYWRkcmVzcyBkZXYgJGludGVyZmFjZQoJICAgIGY9L3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvJGludGVyZmFjZS9wcm94eV9hcnAKCSAgICBbIC1mICRmIF0gJiYgZWNobyAwID4gJGYKCWRvbmUgPCAke1ZBUkRJUn0vcHJveHlhcnAKICAgIGZpCgogICAgcm0gLWYgJHtWQVJESVJ9L3Byb3h5YXJwCn0KCiMKIyBSZW1vdmUgYWxsIFNob3Jld2FsbC1hZGRlZCBydWxlcwojCmNsZWFyX2ZpcmV3YWxsKCkgewogICAgc3RvcF9maXJld2FsbAoKICAgIHNldHBvbGljeSBJTlBVVCBBQ0NFUFQKICAgIHNldHBvbGljeSBGT1JXQVJEIEFDQ0VQVAogICAgc2V0cG9saWN5IE9VVFBVVCBBQ0NFUFQKCiAgICBydW5faXB0YWJsZXMgLUYKCiAgICBlY2hvIDEgPiAvcHJvYy9zeXMvbmV0L2lwdjQvaXBfZm9yd2FyZAoKICAgIGlmIFsgLW4gIiRESVNBQkxFX0lQVjYiIF07IHRoZW4KCWlmIFsgLXggJElQNlRBQkxFUyBdOyB0aGVuCiAgICAJICAgICRJUDZUQUJMRVMgLVAgSU5QVVQgICBBQ0NFUFQgMj4gL2Rldi9udWxsCgkgICAgJElQNlRBQkxFUyAtUCBPVVRQVVQgIEFDQ0VQVCAyPiAvZGV2L251bGwKCSAgICAkSVA2VEFCTEVTIC1QIEZPUldBUkQgQUNDRVBUIDI+IC9kZXYvbnVsbAoJZmkKICAgIGZpCgogICAgcnVuX2NsZWFyX2V4aXQKCiAgICBzZXRfc3RhdGUgIkNsZWFyZWQiCgogICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCBDbGVhcmVkIgp9CgojCiMgSXNzdWUgYSBtZXNzYWdlIGFuZCBzdG9wL3Jlc3RvcmUgdGhlIGZpcmV3YWxsCiMKZmF0YWxfZXJyb3IoKQp7CiAgICBlY2hvICIgICBFUlJPUjogJEAiID4mMgoKICAgIGlmIFsgJExPR19WRVJCT1NJVFkgLWdlIDAgXTsgdGhlbgogICAgICAgIHRpbWVzdGFtcD0iJChkYXRlICsnJV9iICVkICVUJykgIgogICAgICAgIGVjaG8gIiR7dGltZXN0YW1wfSAgRVJST1I6ICRAIiA+PiAkU1RBUlRVUF9MT0cKICAgIGZpCgogICAgc3RvcF9maXJld2FsbAogICAgWyAtbiAiJFRFTVBGSUxFIiBdICYmIHJtIC1mICRURU1QRklMRQogICAgZXhpdCAyCn0KCiMKIyBJc3N1ZSBhIG1lc3NhZ2UgYW5kIHN0b3AKIwpzdGFydHVwX2Vycm9yKCkgIyAkKiA9IEVycm9yIE1lc3NhZ2UKewogICAgZWNobyAiICAgRVJST1I6ICRAOiBGaXJld2FsbCBzdGF0ZSBub3QgY2hhbmdlZCIgPiYyCgogICAgaWYgWyAkTE9HX1ZFUkJPU0lUWSAtZ2UgMCBdOyB0aGVuCiAgICAgICAgdGltZXN0YW1wPSIkKGRhdGUgKyclX2IgJWQgJVQnKSAiCiAgICAgICAgZWNobyAiJHt0aW1lc3RhbXB9ICBFUlJPUjogJEAiID4+ICRTVEFSVFVQX0xPRwogICAgZmkKCiAgICBjYXNlICRDT01NQU5EIGluCiAgICAgICAgc3RhcnQpCgkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHN0YXJ0IGZhaWxlZDpGaXJld2FsbCBzdGF0ZSBub3QgY2hhbmdlZCIKCSAgICA7OwoJcmVzdGFydCkKCSAgICBsb2dnZXIgLXAga2Vybi5lcnIgIkVSUk9SOiRnX3Byb2R1Y3QgcmVzdGFydCBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiCgkgICAgOzsKCXJlc3RvcmUpCgkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHJlc3RvcmUgZmFpbGVkOkZpcmV3YWxsIHN0YXRlIG5vdCBjaGFuZ2VkIgoJICAgIDs7CiAgICBlc2FjCgogICAgaWYgWyAkTE9HX1ZFUkJPU0lUWSAtZ2UgMCBdOyB0aGVuCiAgICAgICAgdGltZXN0YW1wPSIkKGRhdGUgKyclX2IgJWQgJVQnKSAiCgoJY2FzZSAkQ09NTUFORCBpbgoJICAgIHN0YXJ0KQoJCWVjaG8gIiR7dGltZXN0YW1wfSAgRVJST1I6JGdfcHJvZHVjdCBzdGFydCBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiID4+ICRTVEFSVFVQX0xPRwoJCTs7CgkgICAgcmVzdGFydCkKCQllY2hvICIke3RpbWVzdGFtcH0gIEVSUk9SOiRnX3Byb2R1Y3QgcmVzdGFydCBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiID4+ICRTVEFSVFVQX0xPRwoJCTs7CgkgICAgcmVzdG9yZSkKCQllY2hvICIke3RpbWVzdGFtcH0gIEVSUk9SOiRnX3Byb2R1Y3QgcmVzdG9yZSBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiID4+ICRTVEFSVFVQX0xPRwoJCTs7Cgllc2FjCiAgICBmaQoKICAgIGtpbGwgJCQKICAgIGV4aXQgMgp9CgojCiMgUnVuIGlwdGFibGVzIGFuZCBpZiBhbiBlcnJvciBvY2N1cnMsIHN0b3AvcmVzdG9yZSB0aGUgZmlyZXdhbGwKIwpydW5faXB0YWJsZXMoKQp7CiAgICBsb2NhbCBzdGF0dXMKCiAgICB3aGlsZSBbIDEgXTsgZG8KCSRJUFRBQkxFUyAkQAoJc3RhdHVzPSQ/CglbICRzdGF0dXMgLW5lIDQgXSAmJiBicmVhawogICAgZG9uZQoKICAgIGlmIFsgJHN0YXR1cyAtbmUgMCBdOyB0aGVuCiAgICAgICAgZXJyb3JfbWVzc2FnZSAiRVJST1I6IENvbW1hbmQgXCIkSVBUQUJMRVMgJEBcIiBGYWlsZWQiCglzdG9wX2ZpcmV3YWxsCiAgICAgICAgZXhpdCAyCiAgICBmaQp9CgojCiMgUnVuIGlwdGFibGVzIHJldHJ5aW5nIGV4aXQgc3RhdHVzIDQKIwpkb19pcHRhYmxlcygpCnsKICAgIGxvY2FsIHN0YXR1cwoKICAgIHdoaWxlIFsgMSBdOyBkbwoJJElQVEFCTEVTICRACglzdGF0dXM9JD8KCVsgJHN0YXR1cyAtbmUgNCBdICYmIHJldHVybiAkc3RhdHVzOwogICAgZG9uZQp9CgojCiMgUnVuIGlwdGFibGVzIGFuZCBpZiBhbiBlcnJvciBvY2N1cnMsIHN0b3AvcmVzdG9yZSB0aGUgZmlyZXdhbGwKIwpydW5faXAoKQp7CiAgICBpZiAhICRJUCAtNCAkQDsgdGhlbgoJZXJyb3JfbWVzc2FnZSAiRVJST1I6IENvbW1hbmQgXCIkSVAgLTQgJEBcIiBGYWlsZWQiCglzdG9wX2ZpcmV3YWxsCglleGl0IDIKICAgIGZpCn0KCiMKIyBSdW4gdGMgYW5kIGlmIGFuIGVycm9yIG9jY3Vycywgc3RvcC9yZXN0b3JlIHRoZSBmaXJld2FsbAojCnJ1bl90YygpIHsKICAgIGlmICEgJFRDICRAIDsgdGhlbgoJZXJyb3JfbWVzc2FnZSAiRVJST1I6IENvbW1hbmQgXCIkVEMgJEBcIiBGYWlsZWQiCglzdG9wX2ZpcmV3YWxsCglleGl0IDIKICAgIGZpCn0KCiMKIyBHZXQgYSBsaXN0IG9mIGFsbCBjb25maWd1cmVkIGJyb2FkY2FzdCBhZGRyZXNzZXMgb24gdGhlIHN5c3RlbQojCmdldF9hbGxfYmNhc3RzKCkKewogICAgJElQIC1mIGluZXQgYWRkciBzaG93IDI+IC9kZXYvbnVsbCB8IGdyZXAgJ2luZXQuKmJyZCcgfCBncmVwIC12ICcvMzIgJyB8IHNlZCAncy9pbmV0LipicmQgLy87IHMvc2NvcGUuKi8vOycgfCBzb3J0IC11Cn0KCiMKIyBSdW4gdGhlIC5pcHRhYmxlc19yZXN0b3JlX2lucHV0IGFzIGEgc2V0IG9mIGRpc2NyZXRlIGlwdGFibGVzIGNvbW1hbmRzCiMKZGVidWdfcmVzdG9yZV9pbnB1dCgpIHsKICAgIGxvY2FsIGZpcnN0IHNlY29uZCByZXN0IHRhYmxlIGNoYWluCiAgICAjCiAgICAjIENsZWFyIHRoZSBydWxlc2V0CiAgICAjCiAgICBxdDEgJElQVEFCTEVTIC10IG1hbmdsZSAtRgogICAgcXQxICRJUFRBQkxFUyAtdCBtYW5nbGUgLVgKCiAgICBmb3IgY2hhaW4gaW4gUFJFUk9VVElORyBJTlBVVCBGT1JXQVJEIFBPU1RST1VUSU5HOyBkbwoJcXQxICRJUFRBQkxFUyAtdCBtYW5nbGUgLVAgJGNoYWluIEFDQ0VQVAogICAgZG9uZQoKICAgIHF0MSAkSVBUQUJMRVMgLXQgcmF3ICAgIC1GCiAgICBxdDEgJElQVEFCTEVTIC10IHJhdyAgICAtWAoKICAgIGZvciBjaGFpbiBpbiBQUkVST1VUSU5HIE9VVFBVVDsgZG8KCXF0MSAkSVBUQUJMRVMgLXQgcmF3IC1QICRjaGFpbiBBQ0NFUFQKICAgIGRvbmUKCiAgICBydW5faXB0YWJsZXMgLXQgbmF0IC1GCiAgICBydW5faXB0YWJsZXMgLXQgbmF0IC1YCgogICAgZm9yIGNoYWluIGluIFBSRVJPVVRJTkcgUE9TVFJPVVRJTkcgT1VUUFVUOyBkbwoJcXQxICRJUFRBQkxFUyAtdCBuYXQgLVAgJGNoYWluIEFDQ0VQVAogICAgZG9uZQoKICAgIHF0MSAkSVBUQUJMRVMgLXQgZmlsdGVyIC1GCiAgICBxdDEgJElQVEFCTEVTIC10IGZpbHRlciAtWAoKICAgIGZvciBjaGFpbiBpbiBJTlBVVCBGT1JXQVJEIE9VVFBVVDsgZG8KCXF0MSAkSVBUQUJMRVMgLXQgZmlsdGVyIC1QICRjaGFpbiAtUCBBQ0NFUFQKICAgIGRvbmUKCiAgICB3aGlsZSByZWFkIGZpcnN0IHNlY29uZCByZXN0OyBkbwoJY2FzZSAkZmlyc3QgaW4KCSAgICAtKikKCQkjCgkJIyBXZSBjYW4ndCBjYWxsIHJ1bl9pcHRhYmxlcygpIGhlcmUgYmVjYXVzZSB0aGUgcnVsZXMgbWF5IGNvbnRhaW4gcXVvdGVkIHN0cmluZ3MKCQkjCgkJZXZhbCAkSVBUQUJMRVMgLXQgJHRhYmxlICRmaXJzdCAkc2Vjb25kICRyZXN0CgoJCWlmIFsgJD8gLW5lIDAgXTsgdGhlbgoJCSAgICBlcnJvcl9tZXNzYWdlICJFUlJPUjogQ29tbWFuZCBcIiRJUFRBQkxFUyAkZmlyc3QgJHNlY29uZCAkcmVzdFwiIEZhaWxlZCIKCQkgICAgc3RvcF9maXJld2FsbAoJCSAgICBleGl0IDIKCQlmaQoJCTs7CgkgICAgOiopCgkJY2hhaW49JHtmaXJzdCM6fQoKCQlpZiBbICJ4JHNlY29uZCIgPSB4LSBdOyB0aGVuCgkJICAgIGRvX2lwdGFibGVzIC10ICR0YWJsZSAtTiAkY2hhaW4KCQllbHNlCgkJICAgIGRvX2lwdGFibGVzIC10ICR0YWJsZSAtUCAkY2hhaW4gJHNlY29uZAoJCWZpCgoJCWlmIFsgJD8gLW5lIDAgXTsgdGhlbgoJCSAgICBlcnJvcl9tZXNzYWdlICJFUlJPUjogQ29tbWFuZCBcIiRJUFRBQkxFUyAkZmlyc3QgJHNlY29uZCAkcmVzdFwiIEZhaWxlZCIKCQkgICAgc3RvcF9maXJld2FsbAoJCSAgICBleGl0IDIKCQlmaQoJCTs7CgkgICAgIwoJICAgICMgVGhpcyBncm90ZXNxdWUgaGFjayB3aXRoIHRoZSB0YWJsZSBuYW1lcyB3b3JrcyBhcm91bmQgYSBidWcvZmVhdHVyZSB3aXRoIGFzaAoJICAgICMKCSAgICAnKidyYXcpCgkJdGFibGU9cmF3CgkJOzsKCSAgICAnKidtYW5nbGUpCgkJdGFibGU9bWFuZ2xlCgkJOzsKCSAgICAnKiduYXQpCgkJdGFibGU9bmF0CgkJOzsKCSAgICAnKidmaWx0ZXIpCgkJdGFibGU9ZmlsdGVyCgkJOzsKCWVzYWMKICAgIGRvbmUKfQoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyBFbmQgb2YgZnVuY3Rpb25zIGluIC91c3Ivc2hhcmUvc2hvcmV3YWxsL3Byb2cuaGVhZGVyCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMgICBGdW5jdGlvbnMgaW1wb3J0ZWQgZnJvbSAvdXNyL3NoYXJlL3Nob3Jld2FsbC9saWIuY29tbW9uCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCgojCiMgR2V0IHRoZSBTaG9yZXdhbGwgdmVyc2lvbiBvZiB0aGUgcGFzc2VkIHNjcmlwdAojCmdldF9zY3JpcHRfdmVyc2lvbigpIHsgIyAkMSA9IHNjcmlwdAogICAgbG9jYWwgdGVtcAogICAgbG9jYWwgdmVyc2lvbgogICAgbG9jYWwgaWZzCiAgICBsb2NhbCBkaWdpdHMKCiAgICB0ZW1wPSQoICRTSE9SRVdBTExfU0hFTEwgJDEgdmVyc2lvbiB8IHNlZCAncy8tLiovLycgKQoKICAgIGlmIFsgJD8gLW5lIDAgXTsgdGhlbgoJdmVyc2lvbj0wCiAgICBlbHNlCglpZnM9JElGUwoJSUZTPS4KCXRlbXA9JChlY2hvICR0ZW1wKQoJSUZTPSRpZnMKCWRpZ2l0cz0wCgoJZm9yIHRlbXAgaW4gJHRlbXA7IGRvCgkgICAgdmVyc2lvbj0ke3ZlcnNpb259JChwcmludGYgJyUwMmQnICR0ZW1wKQoJICAgIGRpZ2l0cz0kKCgkZGlnaXRzICsgMSkpCgkgICAgWyAkZGlnaXRzIC1lcSAzIF0gJiYgYnJlYWsKCWRvbmUKICAgIGZpCgogICAgZWNobyAkdmVyc2lvbgp9CgojCiMgRG8gcmVxdWlyZWQgZXhwb3J0cyBvciBjcmVhdGUgdGhlIHJlcXVpcmVkIG9wdGlvbiBzdHJpbmcgYW5kIHJ1biB0aGUgcGFzc2VkIHNjcmlwdCB1c2luZwojICRTSE9SRVdBTExfU0hFTEwKIwpydW5faXQoKSB7CiAgICBsb2NhbCBzY3JpcHQKICAgIGxvY2FsIG9wdGlvbnMKICAgIGxvY2FsIHZlcnNpb24KCiAgICBleHBvcnQgVkFSRElSCgogICAgc2NyaXB0PSQxCiAgICBzaGlmdAoKICAgIHZlcnNpb249JChnZXRfc2NyaXB0X3ZlcnNpb24gJHNjcmlwdCkKCiAgICBpZiBbICR2ZXJzaW9uIC1sdCAwNDA0MDggXTsgdGhlbgoJIwoJIyBPbGQgc2NyaXB0IHRoYXQgZG9lc24ndCB1bmRlcnN0YW5kIDQuNC44IHNjcmlwdCBvcHRpb25zCgkjCglleHBvcnQgUkVTVE9SRUZJTEUKCWV4cG9ydCBWRVJCT1NJVFkKCWV4cG9ydCBOT1JPVVRFUz0kZ19ub3JvdXRlcwoJZXhwb3J0IFBVUkdFPSRnX3B1cmdlCglleHBvcnQgVElNRVNUQU1QPSRnX3RpbWVzdGFtcAoJZXhwb3J0IFJFQ09WRVJJTkc9JGdfcmVjb3ZlcmluZwoKCWlmIFsgIiRnX3Byb2R1Y3QiICE9IFNob3Jld2FsbCBdOyB0aGVuCgkgICAgIwoJICAgICMgU2hvcmV3YWxsIExpdGUKCSAgICAjCgkgICAgZXhwb3J0IExPR0ZPUk1BVAoJICAgIGV4cG9ydCBJUFRBQkxFUwoJZmkKICAgIGVsc2UKCSMKCSMgNC40Ljggb3IgbGF0ZXIgLS0gbm8gYWRkaXRpb25hbCBleHBvcnRzIHJlcXVpcmVkCgkjCglpZiBbIHgkMSA9IHh0cmFjZSAtbyB4JDEgPSB4ZGVidWcgXTsgdGhlbgoJICAgIG9wdGlvbnM9IiQxIC0iCgkgICAgc2hpZnQ7CgllbHNlCgkgICAgb3B0aW9ucz0nLScKCWZpCgoJWyAtbiAiJGdfbm9yb3V0ZXMiIF0gICAmJiBvcHRpb25zPSR7b3B0aW9uc31uCglbIC1uICIkZ190aW1lc3RhbXAiIF0gICYmIG9wdGlvbnM9JHtvcHRpb25zfXQKCVsgLW4gIiRnX3B1cmdlIiBdICAgICAgJiYgb3B0aW9ucz0ke29wdGlvbnN9cAoJWyAtbiAiJGdfcmVjb3ZlcmluZyIgXSAmJiBvcHRpb25zPSR7b3B0aW9uc31yCgoJb3B0aW9ucz0iJHtvcHRpb25zfVYgJFZFUkJPU0lUWSIKCglbIC1uICIkUkVTVE9SRUZJTEUiIF0gJiYgb3B0aW9ucz0iJHtvcHRpb25zfSAtUiAkUkVTVE9SRUZJTEUiCiAgICBmaQoKICAgICRTSE9SRVdBTExfU0hFTEwgJHNjcmlwdCAkb3B0aW9ucyAkQAp9CgojCiMgTWVzc2FnZSB0byBzdGRlcnIKIwplcnJvcl9tZXNzYWdlKCkgIyAkKiA9IEVycm9yIE1lc3NhZ2UKewogICBlY2hvICIgICAkQCIgPiYyCn0KCiMKIyBTcGxpdCBhIGNvbG9uLXNlcGFyYXRlZCBsaXN0IGludG8gYSBzcGFjZS1zZXBhcmF0ZWQgbGlzdAojCnNwbGl0KCkgewogICAgbG9jYWwgaWZzCiAgICBpZnM9JElGUwogICAgSUZTPToKICAgIGVjaG8gJCoKICAgIElGUz0kaWZzCn0KCiMKIyBTZWFyY2ggYSBsaXN0IGxvb2tpbmcgZm9yIGEgbWF0Y2ggLS0gcmV0dXJucyB6ZXJvIGlmIGEgbWF0Y2ggZm91bmQKIyAxIG90aGVyd2lzZQojCmxpc3Rfc2VhcmNoKCkgIyAkMSA9IGVsZW1lbnQgdG8gc2VhcmNoIGZvciAsICQyLSRuID0gbGlzdAp7CiAgICBsb2NhbCBlCiAgICBlPSQxCgogICAgd2hpbGUgWyAkIyAtZ3QgMSBdOyBkbwoJc2hpZnQKCVsgIngkZSIgPSAieCQxIiBdICYmIHJldHVybiAwCiAgICBkb25lCgogICAgcmV0dXJuIDEKfQoKIwojIFN1cHByZXNzIGFsbCBvdXRwdXQgZm9yIGEgY29tbWFuZAojCnF0KCkKewogICAgIiRAIiA+L2Rldi9udWxsIDI+JjEKfQoKcXQxKCkKewogICAgbG9jYWwgc3RhdHVzCgogICAgd2hpbGUgWyAxIF07IGRvCgkiJEAiID4vZGV2L251bGwgMj4mMQoJc3RhdHVzPSQ/CglbICRzdGF0dXMgLW5lIDQgXSAmJiByZXR1cm4gJHN0YXR1cwogICAgZG9uZQp9CgojCiMgRGV0ZXJtaW5lIGlmIFNob3Jld2FsbCBpcyAicnVubmluZyIKIwpzaG9yZXdhbGxfaXNfc3RhcnRlZCgpIHsKICAgIHF0ICRJUFRBQkxFUyAtTCBzaG9yZXdhbGwgLW4KfQoKIwojIEVjaG9zIHRoZSBmdWxseS1xdWFsaWZpZWQgbmFtZSBvZiB0aGUgY2FsbGluZyBzaGVsbCBwcm9ncmFtCiMKbXlfcGF0aG5hbWUoKSB7CiAgICBjZCAkKGRpcm5hbWUgJDApCiAgICBlY2hvICRQV0QvJChiYXNlbmFtZSAkMCkKfQoKIwojIFNvdXJjZSBhIHVzZXIgZXhpdCBmaWxlIGlmIGl0IGV4aXN0cwojCnJ1bl91c2VyX2V4aXQoKSAjICQxID0gZmlsZSBuYW1lCnsKICAgIGxvY2FsIHVzZXJfZXhpdAogICAgdXNlcl9leGl0PSQoZmluZF9maWxlICQxKQoKICAgIGlmIFsgLWYgJHVzZXJfZXhpdCBdOyB0aGVuCglwcm9ncmVzc19tZXNzYWdlICJQcm9jZXNzaW5nICR1c2VyX2V4aXQgLi4uIgoJLiAkdXNlcl9leGl0CiAgICBmaQp9CgojCiMgTG9hZCBhIEtlcm5lbCBNb2R1bGUgLS0gYXNzdW1lcyB0aGF0IHRoZSB2YXJpYWJsZSAnbW9kdWxlZGlyZWN0b3JpZXMnIGNvbnRhaW5zCiMgICAgICAgICAgICAgICAgICAgICAgICAgYSBzcGFjZS1zZXBhcmF0ZWQgbGlzdCBvZiBkaXJlY3RvcmllcyB0byBzZWFyY2ggZm9yCiMgICAgICAgICAgICAgICAgICAgICAgICAgdGhlIG1vZHVsZSBhbmQgdGhhdCAnbW9kdWxlbG9hZGVyJyBjb250YWlucyB0aGUKIyAgICAgICAgICAgICAgICAgICAgICAgICBtb2R1bGUgbG9hZGVyIGNvbW1hbmQuCiMKbG9hZG1vZHVsZSgpICMgJDEgPSBtb2R1bGUgbmFtZSwgJDIgLSAqIGFyZ3VtZW50cwp7CiAgICBsb2NhbCBtb2R1bGVuYW1lCiAgICBtb2R1bGVuYW1lPSQxCiAgICBsb2NhbCBtb2R1bGVmaWxlCiAgICBsb2NhbCBzdWZmaXgKCiAgICBpZiAhIGxpc3Rfc2VhcmNoICRtb2R1bGVuYW1lICRET05UX0xPQUQgJE1PRFVMRVM7IHRoZW4KCXNoaWZ0CgoJZm9yIHN1ZmZpeCBpbiAkTU9EVUxFX1NVRkZJWCA7IGRvCgkgICAgZm9yIGRpcmVjdG9yeSBpbiAkbW9kdWxlZGlyZWN0b3JpZXM7IGRvCgkJbW9kdWxlZmlsZT0kZGlyZWN0b3J5LyR7bW9kdWxlbmFtZX0uJHtzdWZmaXh9CgoJCWlmIFsgLWYgJG1vZHVsZWZpbGUgXTsgdGhlbgoJCSAgICBjYXNlICRtb2R1bGVsb2FkZXIgaW4KCQkJaW5zbW9kKQoJCQkgICAgaW5zbW9kICRtb2R1bGVmaWxlICQqCgkJCSAgICA7OwoJCQkqKQoJCQkgICAgbW9kcHJvYmUgJG1vZHVsZW5hbWUgJCoKCQkJICAgIDs7CgkJICAgIGVzYWMKCQkgICAgYnJlYWsgMgoJCWZpCgkgICAgZG9uZQoJZG9uZQogICAgZmkKfQoKIwojIFJlbG9hZCB0aGUgTW9kdWxlcwojCnJlbG9hZF9rZXJuZWxfbW9kdWxlcygpIHsKCiAgICBsb2NhbCBzYXZlX21vZHVsZXNfZGlyCiAgICBzYXZlX21vZHVsZXNfZGlyPSRNT0RVTEVTRElSCiAgICBsb2NhbCBkaXJlY3RvcnkKICAgIGxvY2FsIG1vZHVsZWRpcmVjdG9yaWVzCiAgICBtb2R1bGVkaXJlY3Rvcmllcz0KICAgIGxvY2FsIG1vZHVsZWxvYWRlcgogICAgbW9kdWxlbG9hZGVyPW1vZHByb2JlCiAgICBsb2NhbCB1bmFtZQoKICAgIGlmICEgcXQgbXl3aGljaCBtb2Rwcm9iZTsgdGhlbgoJbW9kdWxlbG9hZGVyPWluc21vZAogICAgZmkKCiAgICBbIC1uICIke01PRFVMRV9TVUZGSVg6PW8gZ3oga28gby5neiBrby5nen0iIF0KCiAgICBbIC16ICIkTU9EVUxFU0RJUiIgXSAmJiBcCgl1bmFtZT0kKHVuYW1lIC1yKSAmJiBcCglNT0RVTEVTRElSPS9saWIvbW9kdWxlcy8kdW5hbWUva2VybmVsL25ldC9pcHY0L25ldGZpbHRlcjovbGliL21vZHVsZXMvJHVuYW1lL2tlcm5lbC9uZXQvbmV0ZmlsdGVyOi9saWIvbW9kdWxlcy8kdW5hbWUva2VybmVsL25ldC9zY2hlZDovbGliL21vZHVsZXMvJHVuYW1lL2V4dHJhOi9saWIvbW9kdWxlcy8kdW5hbWUvZXh0cmEvaXBzZXQKCiAgICBNT0RVTEVTPSQobHNtb2QgfCBjdXQgLWQgJyAnIC1mMSkKCiAgICBmb3IgZGlyZWN0b3J5IGluICQoc3BsaXQgJE1PRFVMRVNESVIpOyBkbwoJWyAtZCAkZGlyZWN0b3J5IF0gJiYgbW9kdWxlZGlyZWN0b3JpZXM9IiRtb2R1bGVkaXJlY3RvcmllcyAkZGlyZWN0b3J5IgogICAgZG9uZQoKICAgIFsgLW4gIiRtb2R1bGVkaXJlY3RvcmllcyIgXSAmJiB3aGlsZSByZWFkIGNvbW1hbmQ7IGRvCglldmFsICRjb21tYW5kCiAgICBkb25lCgogICAgTU9EVUxFU0RJUj0kc2F2ZV9tb2R1bGVzX2Rpcgp9CgojCiMgTG9hZCBrZXJuZWwgbW9kdWxlcyByZXF1aXJlZCBmb3IgU2hvcmV3YWxsCiMKbG9hZF9rZXJuZWxfbW9kdWxlcygpICMgJDEgPSBZZXMsIGlmIHdlIGFyZSB0byBzYXZlIG1vZHVsZWluZm8gaW4gJFZBUkRJUgp7CiAgICBsb2NhbCBzYXZlX21vZHVsZXNfZGlyCiAgICBzYXZlX21vZHVsZXNfZGlyPSRNT0RVTEVTRElSCiAgICBsb2NhbCBkaXJlY3RvcnkKICAgIGxvY2FsIG1vZHVsZWRpcmVjdG9yaWVzCiAgICBtb2R1bGVkaXJlY3Rvcmllcz0KICAgIGxvY2FsIG1vZHVsZWxvYWRlcgogICAgbW9kdWxlbG9hZGVyPW1vZHByb2JlCiAgICBsb2NhbCBzYXZlbW9kdWxlaW5mbwogICAgc2F2ZW1vZHVsZWluZm89JHsxOi1ZZXN9ICMgU28gb2xkIGNvbXBpbGVkIHNjcmlwdHMgc3RpbGwgd29yawogICAgbG9jYWwgdW5hbWUKCiAgICBpZiAhIHF0IG15d2hpY2ggbW9kcHJvYmU7IHRoZW4KCW1vZHVsZWxvYWRlcj1pbnNtb2QKICAgIGZpCgogICAgWyAtbiAiJHtNT0RVTEVfU1VGRklYOj1vIGd6IGtvIG8uZ3oga28uZ3p9IiBdCgogICAgWyAteiAiJE1PRFVMRVNESVIiIF0gJiYgXAoJdW5hbWU9JCh1bmFtZSAtcikgJiYgXAoJTU9EVUxFU0RJUj0vbGliL21vZHVsZXMvJHVuYW1lL2tlcm5lbC9uZXQvaXB2NC9uZXRmaWx0ZXI6L2xpYi9tb2R1bGVzLyR1bmFtZS9rZXJuZWwvbmV0L25ldGZpbHRlcjovbGliL21vZHVsZXMvJHVuYW1lL2tlcm5lbC9uZXQvc2NoZWQ6L2xpYi9tb2R1bGVzLyR1bmFtZS9leHRyYTovbGliL21vZHVsZXMvJHVuYW1lL2V4dHJhL2lwc2V0CgogICAgZm9yIGRpcmVjdG9yeSBpbiAkKHNwbGl0ICRNT0RVTEVTRElSKTsgZG8KCVsgLWQgJGRpcmVjdG9yeSBdICYmIG1vZHVsZWRpcmVjdG9yaWVzPSIkbW9kdWxlZGlyZWN0b3JpZXMgJGRpcmVjdG9yeSIKICAgIGRvbmUKCiAgICBbIC1uICIkTE9BRF9IRUxQRVJTX09OTFkiIF0gJiYgbW9kdWxlcz0kKGZpbmRfZmlsZSBoZWxwZXJzKSB8fCBtb2R1bGVzPSQoZmluZF9maWxlIG1vZHVsZXMpCgogICAgaWYgWyAtZiAkbW9kdWxlcyAtYSAtbiAiJG1vZHVsZWRpcmVjdG9yaWVzIiBdOyB0aGVuCglNT0RVTEVTPSQobHNtb2QgfCBjdXQgLWQgJyAnIC1mMSkKCXByb2dyZXNzX21lc3NhZ2UgIkxvYWRpbmcgTW9kdWxlcy4uLiIKCS4gJG1vZHVsZXMKCWlmIFsgJHNhdmVtb2R1bGVpbmZvID0gWWVzIF07IHRoZW4KCSAgICBbIC1kICR7VkFSRElSfSBdIHx8IG1rZGlyIC1wICR7VkFSRElSfQoJICAgIGVjaG8gTU9EVUxFU0RJUj0iJE1PRFVMRVNESVIiID4gJHtWQVJESVJ9Ly5tb2R1bGVzZGlyCgkgICAgY3AgLWYgJG1vZHVsZXMgJHtWQVJESVJ9Ly5tb2R1bGVzCglmaQogICAgZWxpZiBbICRzYXZlbW9kdWxlaW5mbyA9IFllcyBdOyB0aGVuCglbIC1kICR7VkFSRElSfSBdIHx8IG1rZGlyIC1wICR7VkFSRElSfQoJPiAke1ZBUkRJUn0vLm1vZHVsZXNkaXIKCT4gJHtWQVJESVJ9Ly5tb2R1bGVzCiAgICBmaQoKICAgIE1PRFVMRVNESVI9JHNhdmVfbW9kdWxlc19kaXIKfQoKIwojICBOb3RlOiBUaGUgZm9sbG93aW5nIHNldCBvZiBJUCBhZGRyZXNzIG1hbmlwdWxhdGlvbiBmdW5jdGlvbnMgaGF2ZSBhbm9tYWxvdXMKIyAgICAgICAgYmVoYXZpb3Igd2hlbiB0aGUgc2hlbGwgb25seSBzdXBwb3J0cyAzMi1iaXQgc2lnbmVkIGFyaXRobWV0aWMgYW5kCiMgICAgICAgIHRoZSBJUCBhZGRyZXNzIGlzIDEyOC4wLjAuMCBvciAxMjguMC4wLjEuCiMKCkxFRlRTSElGVD0nPDwnCgojCiMgQ29udmVydCBhbiBJUCBhZGRyZXNzIGluIGRvdCBxdWFkIGZvcm1hdCB0byBhbiBpbnRlZ2VyCiMKZGVjb2RlYWRkcigpIHsKICAgIGxvY2FsIHgKICAgIGxvY2FsIHRlbXAKICAgIHRlbXA9MAogICAgbG9jYWwgaWZzCiAgICBpZnM9JElGUwoKICAgIElGUz0uCgogICAgZm9yIHggaW4gJDE7IGRvCgl0ZW1wPSQoKCAkKCggJHRlbXAgJExFRlRTSElGVCA4ICkpIHwgJHggKSkKICAgIGRvbmUKCiAgICBlY2hvICR0ZW1wCgogICAgSUZTPSRpZnMKfQoKIwojIGNvbnZlcnQgYW4gaW50ZWdlciB0byBkb3QgcXVhZCBmb3JtYXQKIwplbmNvZGVhZGRyKCkgewogICAgYWRkcj0kMQogICAgbG9jYWwgeAogICAgbG9jYWwgeQogICAgeT0kKCgkYWRkciAmIDI1NSkpCgogICAgZm9yIHggaW4gMSAyIDMgOyBkbwoJYWRkcj0kKCgkYWRkciA+PiA4KSkKCXk9JCgoJGFkZHIgJiAyNTUpKS4keQogICAgZG9uZQoKICAgIGVjaG8gJHkKfQoKIwojIE5ldG1hc2sgZnJvbSBDSURSCiMKaXBfbmV0bWFzaygpIHsKICAgIGxvY2FsIHZsc20KICAgIHZsc209JHsxIyovfQoKICAgIFsgJHZsc20gLWVxIDAgXSAmJiBlY2hvIDAgfHwgZWNobyAkKCggLTEgJExFRlRTSElGVCAkKCggMzIgLSAkdmxzbSApKSApKQp9CgojCiMgTmV0d29yayBhZGRyZXNzIGZyb20gQ0lEUgojCmlwX25ldHdvcmsoKSB7CiAgICBsb2NhbCBkZWNvZGVkYWRkcgogICAgZGVjb2RlZGFkZHI9JChkZWNvZGVhZGRyICR7MSUvKn0pCiAgICBsb2NhbCBuZXRtYXNrCiAgICBuZXRtYXNrPSQoaXBfbmV0bWFzayAkMSkKCiAgICBlY2hvICQoZW5jb2RlYWRkciAkKCgkZGVjb2RlZGFkZHIgJiAkbmV0bWFzaykpKQp9CgojCiMgVGhlIGZvbGxvd2luZyBoYWNrIGlzIHN1cHBsaWVkIHRvIGNvbXBlbnNhdGUgZm9yIHRoZSBmYWN0IHRoYXQgbWFueSBvZgojIHRoZSBwb3B1bGFyIGxpZ2h0LXdlaWdodCBCb3VybmUgc2hlbGwgZGVyaXZhdGl2ZXMgZG9uJ3Qgc3VwcG9ydCBYT1IgKCJeIikuCiMKaXBfYnJvYWRjYXN0KCkgewogICAgbG9jYWwgeAogICAgeD0kKCggMzIgLSAkezEjKi99ICkpCgogICAgWyAkeCAtZXEgMzIgXSAmJiBlY2hvIC0xIHx8IGVjaG8gJCgoICQoKCAxICRMRUZUU0hJRlQgJHggKSkgLSAxICkpCn0KCiMKIyBDYWxjdWxhdGUgYnJvYWRjYXN0IGFkZHJlc3MgZnJvbSBDSURSCiMKYnJvYWRjYXN0YWRkcmVzcygpIHsKICAgIGxvY2FsIGRlY29kZWRhZGRyCiAgICBkZWNvZGVkYWRkcj0kKGRlY29kZWFkZHIgJHsxJS8qfSkKICAgIGxvY2FsIG5ldG1hc2sKICAgIG5ldG1hc2s9JChpcF9uZXRtYXNrICQxKQogICAgbG9jYWwgYnJvYWRjYXN0CiAgICBicm9hZGNhc3Q9JChpcF9icm9hZGNhc3QgJDEpCgogICAgZWNobyAkKGVuY29kZWFkZHIgJCgoICQoKCRkZWNvZGVkYWRkciAmICRuZXRtYXNrKSkgfCAkYnJvYWRjYXN0ICkpKQp9CgojCiMgVGVzdCBmb3IgbmV0d29yayBtZW1iZXJzaGlwCiMKaW5fbmV0d29yaygpICMgJDEgPSBJUCBhZGRyZXNzLCAkMiA9IENJRFIgbmV0d29yawp7CiAgICBsb2NhbCBuZXRtYXNrCiAgICBuZXRtYXNrPSQoaXBfbmV0bWFzayAkMikKICAgICMKICAgICMgVXNlIHN0cmluZyBjb21wYXJpc29uIHRvIHdvcmsgYXJvdW5kIGEgYnJva2VuIEJ1c3lCb3ggYXNoIGluIE9wZW5XUlQKICAgICMKICAgIHRlc3QgJCgoICQoZGVjb2RlYWRkciAkMSkgJiAkbmV0bWFzaykpID0gJCgoICQoZGVjb2RlYWRkciAkezIlLyp9KSAmICRuZXRtYXNrICkpCn0KCiMKIyBGaW5kIGludGVyZmFjZSBhZGRyZXNzLS1yZXR1cm5zIHRoZSBmaXJzdCBJUCBhZGRyZXNzIGFzc2lnbmVkIHRvIHRoZSBwYXNzZWQKIyBkZXZpY2UKIwpmaW5kX2ZpcnN0X2ludGVyZmFjZV9hZGRyZXNzKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICAjCiAgICAjIGdldCB0aGUgbGluZSBvZiBvdXRwdXQgY29udGFpbmluZyB0aGUgZmlyc3QgSVAgYWRkcmVzcwogICAgIwogICAgYWRkcj0kKCR7SVA6LWlwfSAtZiBpbmV0IGFkZHIgc2hvdyAkMSAyPiAvZGV2L251bGwgfCBncmVwICdpbmV0IC4qIGdsb2JhbCcgfCBoZWFkIC1uMSkKICAgICMKICAgICMgSWYgdGhlcmUgd2Fzbid0IG9uZSwgYmFpbCBvdXQgbm93CiAgICAjCiAgICBbIC1uICIkYWRkciIgXSB8fCBzdGFydHVwX2Vycm9yICJDYW4ndCBkZXRlcm1pbmUgdGhlIElQIGFkZHJlc3Mgb2YgJDEiCiAgICAjCiAgICAjIFN0cmlwIG9mZiB0aGUgdHJhaWxpbmcgVkxTTSBtYXNrIChvciB0aGUgcGVlciBJUCBpbiBjYXNlIG9mIGEgUC10LVAgbGluaykKICAgICMgYWxvbmcgd2l0aCBldmVyeXRoaW5nIGVsc2Ugb24gdGhlIGxpbmUKICAgICMKICAgIGVjaG8gJGFkZHIgfCBzZWQgJ3MvXHMqaW5ldCAvLztzL1wvLiovLztzLyBwZWVyLiovLycKfQoKZmluZF9maXJzdF9pbnRlcmZhY2VfYWRkcmVzc19pZl9hbnkoKSAjICQxID0gaW50ZXJmYWNlCnsKICAgICMKICAgICMgZ2V0IHRoZSBsaW5lIG9mIG91dHB1dCBjb250YWluaW5nIHRoZSBmaXJzdCBJUCBhZGRyZXNzCiAgICAjCiAgICBhZGRyPSQoJHtJUDotaXB9IC1mIGluZXQgYWRkciBzaG93ICQxIDI+IC9kZXYvbnVsbCB8IGdyZXAgJ2luZXQgLiogZ2xvYmFsJyB8IGhlYWQgLW4xKQogICAgIwogICAgIyBTdHJpcCBvZmYgdGhlIHRyYWlsaW5nIFZMU00gbWFzayAob3IgdGhlIHBlZXIgSVAgaW4gY2FzZSBvZiBhIFAtdC1QIGxpbmspCiAgICAjIGFsb25nIHdpdGggZXZlcnl0aGluZyBlbHNlIG9uIHRoZSBsaW5lCiAgICAjCiAgICBbIC1uICIkYWRkciIgXSAmJiBlY2hvICRhZGRyIHwgc2VkICdzL1xzKmluZXQgLy87cy9cLy4qLy87cy8gcGVlci4qLy8nIHx8IGVjaG8gMC4wLjAuMAp9CgojCiMgSW50ZXJuYWwgdmVyc2lvbiBvZiAnd2hpY2gnCiMKbXl3aGljaCgpIHsKICAgIGxvY2FsIGRpcgoKICAgIGZvciBkaXIgaW4gJChzcGxpdCAkUEFUSCk7IGRvCglpZiBbIC14ICRkaXIvJDEgXTsgdGhlbgoJICAgIGVjaG8gJGRpci8kMQoJICAgIHJldHVybiAwCglmaQogICAgZG9uZQoKICAgIHJldHVybiAyCn0KCiMKIyBRdWVyeSBOZXRGaWx0ZXIgYWJvdXQgdGhlIGV4aXN0ZW5jZSBvZiBhIGZpbHRlciBjaGFpbgojCmNoYWluX2V4aXN0cygpICMgJDEgPSBjaGFpbiBuYW1lCnsKICAgIHF0MSAkSVBUQUJMRVMgLUwgJDEgLW4KfQoKIwojIEZpbmQgYSBGaWxlIC0tIEZvciByZWxhdGl2ZSBmaWxlIG5hbWUsIGxvb2sgaW4gZWFjaCAke0NPTkZJR19QQVRIfSB0aGVuICR7Q09ORkRJUn0KIwpmaW5kX2ZpbGUoKQp7CiAgICBsb2NhbCBzYXZlaWZzCiAgICBzYXZlaWZzPQogICAgbG9jYWwgZGlyZWN0b3J5CgogICAgY2FzZSAkMSBpbgoJLyopCgkgICAgZWNobyAkMQoJICAgIDs7CgkqKQoJICAgIGZvciBkaXJlY3RvcnkgaW4gJChzcGxpdCAkQ09ORklHX1BBVEgpOyBkbwoJCWlmIFsgLWYgJGRpcmVjdG9yeS8kMSBdOyB0aGVuCgkJICAgIGVjaG8gJGRpcmVjdG9yeS8kMQoJCSAgICByZXR1cm4KCQlmaQoJICAgIGRvbmUKCgkgICAgZWNobyAke0NPTkZESVJ9LyQxCgkgICAgOzsKICAgIGVzYWMKfQoKIwojIFNldCB0aGUgU2hvcmV3YWxsIHN0YXRlCiMKc2V0X3N0YXRlICgpICMgJDEgPSBzdGF0ZQp7CiAgICBlY2hvICIkMSAoJChkYXRlKSkiID4gJHtWQVJESVJ9L3N0YXRlCn0KCiMKIyBQZXJmb3JtIHZhcmlhYmxlIHN1YnN0aXR1dGlvbiBvbiB0aGUgcGFzc2VkIGFyZ3VtZW50IGFuZCBlY2hvIHRoZSByZXN1bHQKIwpleHBhbmQoKSAjICRAID0gY29udGVudHMgb2YgdmFyaWFibGUgd2hpY2ggbWF5IGJlIHRoZSBuYW1lIG9mIGFub3RoZXIgdmFyaWFibGUKewogICAgZXZhbCBlY2hvIFwiJEBcIgp9CgojCiMgRnVuY3Rpb24gZm9yIGluY2x1ZGluZyBvbmUgZmlsZSBpbnRvIGFub3RoZXIKIwpJTkNMVURFKCkgewogICAgLiAkKGZpbmRfZmlsZSAkKGV4cGFuZCAkQCkpCn0KCiMgRnVuY3Rpb24gdG8gdHJ1bmNhdGUgYSBzdHJpbmcgLS0gSXQgdXNlcyAnY3V0IC1iIC08bj4nCiMgcmF0aGVyIHRoYW4gJHt2OmZpcnN0Omxhc3R9IGJlY2F1c2UgbGlnaHQtd2VpZ2h0IHNoZWxscyBsaWtlIGFzaCBhbmQKIyBkYXNoIGRvIG5vdCBzdXBwb3J0IHRoYXQgZm9ybSBvZiBleHBhbnNpb24uCiMKCnRydW5jYXRlKCkgIyAkMSA9IGxlbmd0aAp7CiAgICBjdXQgLWIgLSR7MX0KfQoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyAgIEVuZCBvZiBpbXBvcnRzIGZyb20gL3Vzci9zaGFyZS9zaG9yZXdhbGwvbGliLmNvbW1vbgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIEZ1bmN0aW9ucyB0byBleGVjdXRlIHRoZSB2YXJpb3VzIHVzZXIgZXhpdHMgKGV4dGVuc2lvbiBzY3JpcHRzKQojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwoKcnVuX2luaXRfZXhpdCgpIHsKICAgIHRydWUKfQoKcnVuX3N0YXJ0X2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl90Y2NsZWFyX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9zdGFydGVkX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9zdG9wX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9zdG9wcGVkX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9jbGVhcl9leGl0KCkgewogICAgdHJ1ZQp9CgpydW5fcmVmcmVzaF9leGl0KCkgewogICAgdHJ1ZQp9CgpydW5fcmVmcmVzaGVkX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9yZXN0b3JlZF9leGl0KCkgewogICAgdHJ1ZQp9CgpydW5faXN1c2FibGVfZXhpdCgpIHsKICAgIHRydWUKfQoKcnVuX2ZpbmRnd19leGl0KCkgewogICAgdHJ1ZQp9CiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMgRW5kIHVzZXIgZXhpdCBmdW5jdGlvbnMKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKCiMKIyBTZXR1cCBDb21tb24gUnVsZXMgKC9wcm9jKQojCnNldHVwX2NvbW1vbl9ydWxlcygpIHsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgU2V0dGluZyB1cCBSb3V0ZSBGaWx0ZXJpbmcuLi4KCiAgICBmb3IgZmlsZSBpbiAvcHJvYy9zeXMvbmV0L2lwdjQvY29uZi8qOyBkbwoJWyAtZiAkZmlsZS9ycF9maWx0ZXIgXSAmJiBlY2hvIDEgPiAkZmlsZS9ycF9maWx0ZXIKICAgIGRvbmUKCiAgICBlY2hvIDEgPiAvcHJvYy9zeXMvbmV0L2lwdjQvY29uZi9hbGwvcnBfZmlsdGVyCiAgICBlY2hvIDEgPiAvcHJvYy9zeXMvbmV0L2lwdjQvY29uZi9kZWZhdWx0L3JwX2ZpbHRlcgogICAgWyAtbiAiJGdfbm9yb3V0ZXMiIF0gfHwgJElQIC00IHJvdXRlIGZsdXNoIGNhY2hlCiAgICAKICAgIHByb2dyZXNzX21lc3NhZ2UyIFNldHRpbmcgdXAgTWFydGlhbiBMb2dnaW5nLi4uCgogICAgZm9yIGZpbGUgaW4gL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvKjsgZG8KCVsgLWYgJGZpbGUvbG9nX21hcnRpYW5zIF0gJiYgZWNobyAxID4gJGZpbGUvbG9nX21hcnRpYW5zCiAgICBkb25lCgogICAgZWNobyAwID4gL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvYWxsL2xvZ19tYXJ0aWFucwoKICAgIGlmIFsgLWYgL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvZXRoMC9sb2dfbWFydGlhbnMgXTsgdGhlbgoJZWNobyAxID4gL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvZXRoMC9sb2dfbWFydGlhbnMKICAgIGVsc2UKCWVycm9yX21lc3NhZ2UgIldBUk5JTkc6IENhbm5vdCBzZXQgTWFydGlhbiBsb2dnaW5nIG9uIGV0aDAiCiAgICBmaQoKICAgIHJldHVybiAwCn0KCiMKIyBTZXR1cCByb3V0aW5nIGFuZCB0cmFmZmljIHNoYXBpbmcKIwpzZXR1cF9yb3V0aW5nX2FuZF90cmFmZmljX3NoYXBpbmcoKSB7CiAgICAKICAgIGlmIFsgLXogIiRnX25vcm91dGVzIiBdOyB0aGVuCgkKCXVuZG9fcm91dGluZwoJcmVzdG9yZV9kZWZhdWx0X3JvdXRlCiAgICBmaQoKICAgIHByb2dyZXNzX21lc3NhZ2UyICJTZXR0aW5nIHVwIFRyYWZmaWMgQ29udHJvbC4uLiIKCn0KCiMKIyBUaGlzIGZ1bmN0aW9uIGluaXRpYWxpemVzIHRoZSBnbG9iYWwgdmFyaWFibGVzIHVzZWQgYnkgdGhlIHByb2dyYW0KIwppbml0aWFsaXplKCkKewogICAgIwogICAgIyBCZSBzdXJlIHRoYXQgdW1hc2sgaXMgc2FuZQogICAgIwogICAgdW1hc2sgMDc3CiAgICAjCiAgICAjIFRoZXNlIHZhcmlhYmxlcyBhcmUgcmVxdWlyZWQgYnkgdGhlIGxpYnJhcnkgZnVuY3Rpb25zIGNhbGxlZCBpbiB0aGlzIHNjcmlwdAogICAgIwogICAgU0hBUkVESVI9L3Vzci9zaGFyZS9zaG9yZXdhbGwtbGl0ZQogICAgQ09ORkRJUj0vZXRjL3Nob3Jld2FsbC1saXRlCiAgICBnX3Byb2R1Y3Q9IlNob3Jld2FsbCBMaXRlIgogICAgWyAtZiAke0NPTkZESVJ9L3ZhcmRpciBdICYmIC4gJHtDT05GRElSfS92YXJkaXIKICAgIENPTkZJR19QQVRIPSIvZXRjL3Nob3Jld2FsbC1saXRlOi91c3Ivc2hhcmUvc2hvcmV3YWxsLWxpdGUiCiAgICBbIC1uICIke1ZBUkRJUjo9L3Zhci9saWIvc2hvcmV3YWxsLWxpdGV9IiBdCiAgICBURU1QRklMRT0KICAgIERJU0FCTEVfSVBWNj0iIgogICAgTU9EVUxFU0RJUj0iIgogICAgTU9EVUxFX1NVRkZJWD0ia28iCiAgICBMT0FEX0hFTFBFUlNfT05MWT0iIgogICAgU1VCU1lTTE9DSz0iIgogICAgTE9HX1ZFUkJPU0lUWT0iMiIKICAgIFsgLW4gIiR7Q09NTUFORDo9cmVzdGFydH0iIF0KICAgIFsgLW4gIiR7VkVSQk9TSVRZOj0wfSIgXQogICAgWyAtbiAiJHtSRVNUT1JFRklMRTo9cmVzdG9yZX0iIF0KICAgIFNIT1JFV0FMTF9WRVJTSU9OPSI0LjQuMTEuNiIKICAgIFBBVEg9Ii9zYmluOi9iaW46L3Vzci9zYmluOi91c3IvYmluOi91c3IvbG9jYWwvYmluOi91c3IvbG9jYWwvc2JpbiIKICAgIFRFUk1JTkFUT1I9ZmF0YWxfZXJyb3IKICAgIERPTlRfTE9BRD0iIgogICAgU1RBUlRVUF9MT0c9Ii92YXIvbG9nL3Nob3Jld2FsbC1pbml0LmxvZyIKCiAgICBbIC16ICIkSVBUQUJMRVMiIF0gJiYgSVBUQUJMRVM9JChteXdoaWNoIGlwdGFibGVzKSAjIC9zYmluL3Nob3Jld2FsbCBleHBvcnRzIElQVEFCTEVTCiAgICBbIC1uICIkSVBUQUJMRVMiIC1hIC14ICIkSVBUQUJMRVMiIF0gfHwgc3RhcnR1cF9lcnJvciAiQ2FuJ3QgZmluZCBpcHRhYmxlcyBleGVjdXRhYmxlIgoKICAgIGNhc2UgJElQVEFCTEVTIGluCgkqLyopCgkgICAgOzsKCSopCgkgICAgSVBUQUJMRVM9Li8kSVBUQUJMRVMKCSAgICA7OwogICAgZXNhYwoKICAgIElQNlRBQkxFUz0ke0lQVEFCTEVTJS8qfS9pcDZ0YWJsZXMKICAgIElQVEFCTEVTX1JFU1RPUkU9JHtJUFRBQkxFU30tcmVzdG9yZQogICAgWyAteCAiJElQVEFCTEVTX1JFU1RPUkUiIF0gfHwgc3RhcnR1cF9lcnJvciAiJElQVEFCTEVTX1JFU1RPUkUgZG9lcyBub3QgZXhpc3Qgb3IgaXMgbm90IGV4ZWN1dGFibGUiCiAgICBJUD1pcAogICAgVEM9dGMKICAgIElQU0VUPWlwc2V0CgogICAgZ19zdG9wcGluZz0KCiAgICAjCiAgICAjIFRoZSBsaWJyYXJ5IHJlcXVpcmVzIHRoYXQgJHtWQVJESVJ9IGV4aXN0CiAgICAjCiAgICBbIC1kICR7VkFSRElSfSBdIHx8IG1rZGlyIC1wICR7VkFSRElSfQoKfQoKIwojIFNldCBnbG9iYWwgdmFyaWFibGVzIGhvbGRpbmcgZGV0ZWN0ZWQgSVAgaW5mb3JtYXRpb24KIwpkZXRlY3RfY29uZmlndXJhdGlvbigpCnsKICAgIHRydWUKCn0KCiMKIyBDcmVhdGUgdGhlIGlucHV0IHRvIGlwdGFibGVzLXJlc3RvcmUvaXA2dGFibGVzLXJlc3RvcmUgYW5kIHBhc3MgdGhhdCBpbnB1dCB0byB0aGUgdXRpbGl0eQojCnNldHVwX25ldGZpbHRlcigpCnsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgUHJlcGFyaW5nIGlwdGFibGVzLXJlc3RvcmUgaW5wdXQuLi4KCiAgICBleGVjIDM+JHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0CgogICAgY2F0ID4mMyA8PCBfX0VPRl9fCiMKIyBHZW5lcmF0ZWQgYnkgU2hvcmV3YWxsIDQuNC4xMS42IC0gV2VkIE9jdCAzMSAyMDoyODozNyAyMDEyCiMKKnJhdwo6UFJFUk9VVElORyBBQ0NFUFQgWzA6MF0KOk9VVFBVVCBBQ0NFUFQgWzA6MF0KQ09NTUlUCipuYXQKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KQ09NTUlUCiptYW5nbGUKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpJTlBVVCBBQ0NFUFQgWzA6MF0KOkZPUldBUkQgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KOnRjZm9yIC0gWzA6MF0KOnRjb3V0IC0gWzA6MF0KOnRjcG9zdCAtIFswOjBdCjp0Y3ByZSAtIFswOjBdCi1BIFBSRVJPVVRJTkcgLWogdGNwcmUKLUEgRk9SV0FSRCAtaiBNQVJLIC0tc2V0LW1hcmsgMC8weGZmCi1BIEZPUldBUkQgLWogdGNmb3IKLUEgT1VUUFVUIC1qIHRjb3V0Ci1BIFBPU1RST1VUSU5HIC1qIHRjcG9zdApDT01NSVQKKmZpbHRlcgo6SU5QVVQgRFJPUCBbMDowXQo6Rk9SV0FSRCBEUk9QIFswOjBdCjpPVVRQVVQgRFJPUCBbMDowXQo6RHJvcCAtIFswOjBdCjpSZWplY3QgLSBbMDowXQo6ZHJvcEJjYXN0IC0gWzA6MF0KOmRyb3BJbnZhbGlkIC0gWzA6MF0KOmRyb3BOb3RTeW4gLSBbMDowXQo6ZHluYW1pYyAtIFswOjBdCjpldGgwX2Z3ZCAtIFswOjBdCjpmdzJuZXQgLSBbMDowXQo6bG9nZHJvcCAtIFswOjBdCjpsb2dmbGFncyAtIFswOjBdCjpsb2dyZWplY3QgLSBbMDowXQo6bmV0MmZ3IC0gWzA6MF0KOnJlamVjdCAtIFswOjBdCjpzbXVyZmxvZyAtIFswOjBdCjpzbXVyZnMgLSBbMDowXQo6dGNwZmxhZ3MgLSBbMDowXQotQSBJTlBVVCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIE5FVyxJTlZBTElEIC1qIGR5bmFtaWMKLUEgSU5QVVQgLWkgZXRoMCAtaiBuZXQyZncKLUEgSU5QVVQgLWkgbG8gLWogQUNDRVBUCi1BIElOUFVUIC1tIGNvbm50cmFjayAtLWN0c3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKLUEgSU5QVVQgLWogRHJvcAotQSBJTlBVVCAtaiBMT0cgLS1sb2ctbGV2ZWwgNiAtLWxvZy1wcmVmaXggIlNob3Jld2FsbDpJTlBVVDpEUk9QOiIgCi1BIElOUFVUIC1qIERST1AKLUEgRk9SV0FSRCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIE5FVyxJTlZBTElEIC1qIGR5bmFtaWMKLUEgRk9SV0FSRCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIEZPUldBUkQgLWogUmVqZWN0Ci1BIEZPUldBUkQgLWogTE9HIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6Rk9SV0FSRDpSRUpFQ1Q6IiAKLUEgRk9SV0FSRCAtZyByZWplY3QKLUEgT1VUUFVUIC1vIGV0aDAgLWogZncybmV0Ci1BIE9VVFBVVCAtbyBsbyAtaiBBQ0NFUFQKLUEgT1VUUFVUIC1tIGNvbm50cmFjayAtLWN0c3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKLUEgT1VUUFVUIC1qIFJlamVjdAotQSBPVVRQVVQgLWogTE9HIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6T1VUUFVUOlJFSkVDVDoiIAotQSBPVVRQVVQgLWcgcmVqZWN0Ci1BIERyb3AgCi1BIERyb3AgLXAgNiAtLWRwb3J0IDExMyAtaiByZWplY3QgLW0gY29tbWVudCAtLWNvbW1lbnQgIkF1dGgiCi1BIERyb3AgLWogZHJvcEJjYXN0Ci1BIERyb3AgLXAgMSAtLWljbXAtdHlwZSAzLzQgLWogQUNDRVBUIC1tIGNvbW1lbnQgLS1jb21tZW50ICJOZWVkZWQgSUNNUCB0eXBlcyIKLUEgRHJvcCAtcCAxIC0taWNtcC10eXBlIDExIC1qIEFDQ0VQVCAtbSBjb21tZW50IC0tY29tbWVudCAiTmVlZGVkIElDTVAgdHlwZXMiCi1BIERyb3AgLWogZHJvcEludmFsaWQKLUEgRHJvcCAtcCAxNyAtbSBtdWx0aXBvcnQgLS1kcG9ydHMgMTM1LDQ0NSAtaiBEUk9QIC1tIGNvbW1lbnQgLS1jb21tZW50ICJTTUIiCi1BIERyb3AgLXAgMTcgLS1kcG9ydCAxMzc6MTM5IC1qIERST1AgLW0gY29tbWVudCAtLWNvbW1lbnQgIlNNQiIKLUEgRHJvcCAtcCAxNyAtLWRwb3J0IDEwMjQ6NjU1MzUgLS1zcG9ydCAxMzcgLWogRFJPUCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBEcm9wIC1wIDYgLW0gbXVsdGlwb3J0IC0tZHBvcnRzIDEzNSwxMzksNDQ1IC1qIERST1AgLW0gY29tbWVudCAtLWNvbW1lbnQgIlNNQiIKLUEgRHJvcCAtcCAxNyAtLWRwb3J0IDE5MDAgLWogRFJPUCAtbSBjb21tZW50IC0tY29tbWVudCAiVVBuUCIKLUEgRHJvcCAtcCA2IC1qIGRyb3BOb3RTeW4KLUEgRHJvcCAtcCAxNyAtLXNwb3J0IDUzIC1qIERST1AgLW0gY29tbWVudCAtLWNvbW1lbnQgIkxhdGUgRE5TIFJlcGxpZXMiCi1BIFJlamVjdCAKLUEgUmVqZWN0IC1wIDYgLS1kcG9ydCAxMTMgLWogcmVqZWN0IC1tIGNvbW1lbnQgLS1jb21tZW50ICJBdXRoIgotQSBSZWplY3QgLWogZHJvcEJjYXN0Ci1BIFJlamVjdCAtcCAxIC0taWNtcC10eXBlIDMvNCAtaiBBQ0NFUFQgLW0gY29tbWVudCAtLWNvbW1lbnQgIk5lZWRlZCBJQ01QIHR5cGVzIgotQSBSZWplY3QgLXAgMSAtLWljbXAtdHlwZSAxMSAtaiBBQ0NFUFQgLW0gY29tbWVudCAtLWNvbW1lbnQgIk5lZWRlZCBJQ01QIHR5cGVzIgotQSBSZWplY3QgLWogZHJvcEludmFsaWQKLUEgUmVqZWN0IC1wIDE3IC1tIG11bHRpcG9ydCAtLWRwb3J0cyAxMzUsNDQ1IC1qIHJlamVjdCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBSZWplY3QgLXAgMTcgLS1kcG9ydCAxMzc6MTM5IC1qIHJlamVjdCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBSZWplY3QgLXAgMTcgLS1kcG9ydCAxMDI0OjY1NTM1IC0tc3BvcnQgMTM3IC1qIHJlamVjdCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBSZWplY3QgLXAgNiAtbSBtdWx0aXBvcnQgLS1kcG9ydHMgMTM1LDEzOSw0NDUgLWogcmVqZWN0IC1tIGNvbW1lbnQgLS1jb21tZW50ICJTTUIiCi1BIFJlamVjdCAtcCAxNyAtLWRwb3J0IDE5MDAgLWogRFJPUCAtbSBjb21tZW50IC0tY29tbWVudCAiVVBuUCIKLUEgUmVqZWN0IC1wIDYgLWogZHJvcE5vdFN5bgotQSBSZWplY3QgLXAgMTcgLS1zcG9ydCA1MyAtaiBEUk9QIC1tIGNvbW1lbnQgLS1jb21tZW50ICJMYXRlIEROUyBSZXBsaWVzIgotQSBkcm9wQmNhc3QgLW0gYWRkcnR5cGUgLS1kc3QtdHlwZSBCUk9BRENBU1QgLWogRFJPUAotQSBkcm9wQmNhc3QgLWQgMjI0LjAuMC4wLzQgLWogRFJPUAotQSBkcm9wSW52YWxpZCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIElOVkFMSUQgLWogRFJPUAotQSBkcm9wTm90U3luIC1wIDYgISAtLXN5biAtaiBEUk9QCl9fRU9GX18KCiAgICBbIC1mICR7VkFSRElSfS8uZHluYW1pYyBdICYmIGNhdCAke1ZBUkRJUn0vLmR5bmFtaWMgPiYzCgogICAgY2F0ID4mMyA8PCBfX0VPRl9fCi1BIGV0aDBfZndkIC1tIGNvbm50cmFjayAtLWN0c3RhdGUgTkVXLElOVkFMSUQgLWogc211cmZzCi1BIGV0aDBfZndkIC1wIHRjcCAtaiB0Y3BmbGFncwotQSBmdzJuZXQgLXAgdWRwIC0tZHBvcnQgNjc6NjggLWogQUNDRVBUCi1BIGZ3Mm5ldCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIGZ3Mm5ldCAtcCAxIC1qIEFDQ0VQVCAKLUEgZncybmV0IC1qIEFDQ0VQVAotQSBsb2dkcm9wICAtaiBEUk9QCi1BIGxvZ2ZsYWdzIC1qIExPRyAtLWxvZy1pcC1vcHRpb25zIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6bG9nZmxhZ3M6RFJPUDoiIAotQSBsb2dmbGFncyAtaiBEUk9QCi1BIGxvZ3JlamVjdCAgLWogcmVqZWN0Ci1BIG5ldDJmdyAtbSBjb25udHJhY2sgLS1jdHN0YXRlIE5FVyxJTlZBTElEIC1qIHNtdXJmcwotQSBuZXQyZncgLXAgdWRwIC0tZHBvcnQgNjc6NjggLWogQUNDRVBUCi1BIG5ldDJmdyAtcCB0Y3AgLWogdGNwZmxhZ3MKLUEgbmV0MmZ3IC1tIGNvbm50cmFjayAtLWN0c3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKLUEgbmV0MmZ3IC1wIDEgLWogRFJPUCAKLUEgbmV0MmZ3IC1qIExPRyAtLWxvZy1sZXZlbCA2IC0tbG9nLXByZWZpeCAiU2hvcmV3YWxsOm5ldDJmdzpBQ0NFUFQ6IiAKLUEgbmV0MmZ3IC1qIEFDQ0VQVAotQSByZWplY3QgLW0gYWRkcnR5cGUgLS1zcmMtdHlwZSBCUk9BRENBU1QgLWogRFJPUAotQSByZWplY3QgLXMgMjI0LjAuMC4wLzQgLWogRFJPUAotQSByZWplY3QgLXAgMiAtaiBEUk9QCi1BIHJlamVjdCAtcCA2IC1qIFJFSkVDVCAtLXJlamVjdC13aXRoIHRjcC1yZXNldAotQSByZWplY3QgLXAgMTcgLWogUkVKRUNUCi1BIHJlamVjdCAtcCAxIC1qIFJFSkVDVCAtLXJlamVjdC13aXRoIGljbXAtaG9zdC11bnJlYWNoYWJsZQotQSByZWplY3QgLWogUkVKRUNUIC0tcmVqZWN0LXdpdGggaWNtcC1ob3N0LXByb2hpYml0ZWQKLUEgc211cmZsb2cgLWogTE9HIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6c211cmZzOkRST1A6IiAKLUEgc211cmZsb2cgLWogRFJPUAotQSBzbXVyZnMgLXMgMC4wLjAuMCAtaiBSRVRVUk4KLUEgc211cmZzIC1tIGFkZHJ0eXBlIC0tc3JjLXR5cGUgQlJPQURDQVNUIC1nIHNtdXJmbG9nCi1BIHNtdXJmcyAtcyAyMjQuMC4wLjAvNCAtZyBzbXVyZmxvZwotQSB0Y3BmbGFncyAtcCB0Y3AgLS10Y3AtZmxhZ3MgQUxMIEZJTixVUkcsUFNIIC1nIGxvZ2ZsYWdzCi1BIHRjcGZsYWdzIC1wIHRjcCAtLXRjcC1mbGFncyBBTEwgTk9ORSAtZyBsb2dmbGFncwotQSB0Y3BmbGFncyAtcCB0Y3AgLS10Y3AtZmxhZ3MgU1lOLFJTVCBTWU4sUlNUIC1nIGxvZ2ZsYWdzCi1BIHRjcGZsYWdzIC1wIHRjcCAtLXRjcC1mbGFncyBTWU4sRklOIFNZTixGSU4gLWcgbG9nZmxhZ3MKLUEgdGNwZmxhZ3MgLXAgdGNwIC0tc3luIC0tc3BvcnQgMCAtZyBsb2dmbGFncwpDT01NSVQKX19FT0ZfXwoKICAgIGV4ZWMgMz4mLQoKICAgIFsgLW4gIiRERUJVRyIgXSAmJiBjb21tYW5kPWRlYnVnX3Jlc3RvcmVfaW5wdXQgfHwgY29tbWFuZD0kSVBUQUJMRVNfUkVTVE9SRQoKICAgIHByb2dyZXNzX21lc3NhZ2UyICJSdW5uaW5nICRjb21tYW5kLi4uIgoKICAgIGNhdCAke1ZBUkRJUn0vLmlwdGFibGVzLXJlc3RvcmUtaW5wdXQgfCAkY29tbWFuZCAjIFVzZSB0aGlzIG5vbnNlbnNpY2FsIGZvcm0gdG8gYXBwZWFzZSBTRUxpbnV4CiAgICBpZiBbICQ/ICE9IDAgXTsgdGhlbgoJZmF0YWxfZXJyb3IgImlwdGFibGVzLXJlc3RvcmUgRmFpbGVkLiBJbnB1dCBpcyBpbiAke1ZBUkRJUn0vLmlwdGFibGVzLXJlc3RvcmUtaW5wdXQiCiAgICBmaQoKfQoKY2hhaW5saXN0X3JlbG9hZCgpCnsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgUHJlcGFyaW5nIGlwdGFibGVzLXJlc3RvcmUgaW5wdXQgZm9yIGNoYWluIG1hbmdsZTouLi4KCiAgICBleGVjIDM+JHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0CgogICAgY2F0ID4mMyA8PCBfX0VPRl9fCiptYW5nbGUKOnRjZm9yIC0gWzA6MF0KOnRjb3V0IC0gWzA6MF0KOnRjcG9zdCAtIFswOjBdCjp0Y3ByZSAtIFswOjBdCkNPTU1JVApfX0VPRl9fCgogICAgZXhlYyAzPiYtCgogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgIlJ1bm5pbmcgaXB0YWJsZXMtcmVzdG9yZS4uLiIKCiAgICBjYXQgJHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0IHwgJElQVEFCTEVTX1JFU1RPUkUgLW4gIyBVc2UgdGhpcyBub25zZW5zaWNhbCBmb3JtIHRvIGFwcGVhc2UgU0VMaW51eAogICAgaWYgWyAkPyAhPSAwIF07IHRoZW4KCWZhdGFsX2Vycm9yICJpcHRhYmxlcy1yZXN0b3JlIEZhaWxlZC4gSW5wdXQgaXMgaW4gJHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0IgogICAgZmkKCn0KCiMKIyBTdGFydC9SZXN0YXJ0IHRoZSBGaXJld2FsbAojCmRlZmluZV9maXJld2FsbCgpIHsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgSW5pdGlhbGl6aW5nLi4uCgogICAgbG9hZF9rZXJuZWxfbW9kdWxlcyBZZXMKICAgIGlmIFsgIiRDT01NQU5EIiA9IHJlZnJlc2ggXTsgdGhlbgogICAgICAgcnVuX3JlZnJlc2hfZXhpdAogICAgZWxzZQoJcnVuX2luaXRfZXhpdAogICAgZmkKCiAgICBpZiBbICIkQ09NTUFORCIgPSByZXN0YXJ0IC1vICIkQ09NTUFORCIgPSByZWZyZXNoIF07IHRoZW4KCWlmIGNoYWluX2V4aXN0cyAnVVBuUCAtdCBuYXQnOyB0aGVuCgkgICAgJHtJUFRBQkxFU30tc2F2ZSAtdCBuYXQgfCBncmVwICdeLUEgVVBuUCAnID4gJHtWQVJESVJ9Ly5VUG5QCgllbHNlCgkgICAgcm0gLWYgJHtWQVJESVJ9Ly5VUG5QCglmaQoJCglpZiBjaGFpbl9leGlzdHMgZm9yd2FyZFVQblA7IHRoZW4KCSAgICAke0lQVEFCTEVTfS1zYXZlIC10IGZpbHRlciB8IGdyZXAgJ14tQSBmb3J3YXJkVVBuUCAnID4gJHtWQVJESVJ9Ly5mb3J3YXJkVVBuUAoJZWxzZQoJICAgIHJtIC1mICR7VkFSRElSfS8uZm9yd2FyZFVQblAKCWZpCgkKCWlmIGNoYWluX2V4aXN0cyBkeW5hbWljOyB0aGVuCgkgICAgJHtJUFRBQkxFU30tc2F2ZSAtdCBmaWx0ZXIgfCBncmVwICdeLUEgZHluYW1pYyAnID4gJHtWQVJESVJ9Ly5keW5hbWljCgllbHNlCgkgICAgcm0gLWYgJHtWQVJESVJ9Ly5keW5hbWljCglmaQoKICAgIGVsc2UKCXJtIC1mICR7VkFSRElSfS8uVVBuUAoJcm0gLWYgJHtWQVJESVJ9Ly5mb3J3YXJkVVBuUAoJCglpZiBbICIkQ09NTUFORCIgPSBzdG9wIC1vICIkQ09NTUFORCIgPSBjbGVhciBdOyB0aGVuCgkgICAgaWYgY2hhaW5fZXhpc3RzIGR5bmFtaWM7IHRoZW4KCQkke0lQVEFCTEVTfS1zYXZlIC10IGZpbHRlciB8IGdyZXAgJ14tQSBkeW5hbWljICcgPiAke1ZBUkRJUn0vLmR5bmFtaWMKCSAgICBmaQoJZmkKCiAgICBmaQoKICAgIHF0MSAkSVBUQUJMRVMgLUwgc2hvcmV3YWxsIC1uICYmIHF0MSAkSVBUQUJMRVMgLUYgc2hvcmV3YWxsICYmIHF0MSAkSVBUQUJMRVMgLVggc2hvcmV3YWxsCgogICAgZGVsZXRlX3Byb3h5YXJwCgogICAgaWYgWyAtZiAke1ZBUkRJUn0vbmF0IF07IHRoZW4KCXdoaWxlIHJlYWQgZXh0ZXJuYWwgaW50ZXJmYWNlOyBkbwoJICAgIGRlbF9pcF9hZGRyICRleHRlcm5hbCAkaW50ZXJmYWNlCglkb25lIDwgJHtWQVJESVJ9L25hdAoKCXJtIC1mICR7VkFSRElSfS9uYXQKICAgIGZpCgogICAgZGVsZXRlX3RjMQoKICAgIHNldHVwX2NvbW1vbl9ydWxlcwoKICAgIHNldHVwX3JvdXRpbmdfYW5kX3RyYWZmaWNfc2hhcGluZwoKICAgIGNhdCA+ICR7VkFSRElSfS9wcm94eWFycCA8PCBfX0VPRl9fCl9fRU9GX18KCiAgICBpZiBbICIkQ09NTUFORCIgIT0gcmVmcmVzaCBdOyB0aGVuCgljYXQgPiAke1ZBUkRJUn0vem9uZXMgPDwgX19FT0ZfXwpmdyBmaXJld2FsbApuZXQgaXB2NCBldGgwOjAuMC4wLjAvMApfX0VPRl9fCgljYXQgPiAke1ZBUkRJUn0vcG9saWNpZXMgPDwgX19FT0ZfXwpmdyAJPT4JbmV0CUFDQ0VQVCB1c2luZyBjaGFpbiBmdzJuZXQKbmV0IAk9PglmdwlBQ0NFUFQgdXNpbmcgY2hhaW4gbmV0MmZ3Cl9fRU9GX18KICAgIGZpCgogICAgPiAke1ZBUkRJUn0vbmF0CgogICAgaWYgWyAkQ09NTUFORCA9IHJlc3RvcmUgXTsgdGhlbgoJaXB0YWJsZXNfc2F2ZV9maWxlPSR7VkFSRElSfS8kKGJhc2VuYW1lICQwKS1pcHRhYmxlcwoJaWYgWyAtZiAkaXB0YWJsZXNfc2F2ZV9maWxlIF07IHRoZW4KCSAgICBjYXQgJGlwdGFibGVzX3NhdmVfZmlsZSB8ICRJUFRBQkxFU19SRVNUT1JFICMgVXNlIHRoaXMgbm9uc2Vuc2ljYWwgZm9ybSB0byBhcHBlYXNlIFNFTGludXgKCWVsc2UKCSAgICBmYXRhbF9lcnJvciAiJGlwdGFibGVzX3NhdmVfZmlsZSBkb2VzIG5vdCBleGlzdCIKCWZpCgoJc2V0X3N0YXRlICJTdGFydGVkIgoJcnVuX3Jlc3RvcmVkX2V4aXQKICAgIGVsc2UKCWlmIFsgJENPTU1BTkQgPSByZWZyZXNoIF07IHRoZW4KCSAgICBjaGFpbmxpc3RfcmVsb2FkCgoJICAgIHJ1bl9yZWZyZXNoZWRfZXhpdAoJICAgIGRvX2lwdGFibGVzIC1OIHNob3Jld2FsbAoJICAgIHNldF9zdGF0ZSAiU3RhcnRlZCIKCWVsc2UKCSAgICBzZXR1cF9uZXRmaWx0ZXIKCSAgICBjb25kaXRpb25hbGx5X2ZsdXNoX2Nvbm50cmFjawoKCSAgICBydW5fc3RhcnRfZXhpdAoJICAgIGRvX2lwdGFibGVzIC1OIHNob3Jld2FsbAoJICAgIHNldF9zdGF0ZSAiU3RhcnRlZCIKCSAgICBydW5fc3RhcnRlZF9leGl0CglmaQogICAgCglbICQwID0gJHtWQVJESVJ9L2ZpcmV3YWxsIF0gfHwgY3AgLWYgJChteV9wYXRobmFtZSkgJHtWQVJESVJ9L2ZpcmV3YWxsCiAgICBmaQogICAgCiAgICBkYXRlID4gJHtWQVJESVJ9L3Jlc3RhcnRlZAogICAgCiAgICBjYXNlICRDT01NQU5EIGluCglzdGFydCkKCSAgICBsb2dnZXIgLXAga2Vybi5pbmZvICIkZ19wcm9kdWN0IHN0YXJ0ZWQiCgkgICAgOzsKCXJlc3RhcnQpCgkgICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCByZXN0YXJ0ZWQiCgkgICAgOzsKCXJlZnJlc2gpCgkgICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCByZWZyZXNoZWQiCgkgICAgOzsKCXJlc3RvcmUpCgkgICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCByZXN0b3JlZCIKCSAgICA7OwogICAgZXNhYwoKfQoKIwojIFN0b3AvcmVzdG9yZSB0aGUgZmlyZXdhbGwgYWZ0ZXIgYW4gZXJyb3Igb3IgYmVjYXVzZSBvZiBhICdzdG9wJyBvciAnY2xlYXInIGNvbW1hbmQKIwpzdG9wX2ZpcmV3YWxsKCkgewogICAgbG9jYWwgaGFjawoKICAgIGRlbGV0ZWNoYWluKCkgewoJcXQgJElQVEFCTEVTIC1MICQxIC1uICYmIHF0ICRJUFRBQkxFUyAtRiAkMSAmJiBxdCAkSVBUQUJMRVMgLVggJDEKICAgIH0KCiAgICBjYXNlICRDT01NQU5EIGluCglzdG9wfGNsZWFyfHJlc3RvcmUpCgkgICAgOzsKCSopCgkgICAgc2V0ICt4CgoJICAgIGNhc2UgJENPTU1BTkQgaW4KCQlzdGFydCkKCQkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHN0YXJ0IGZhaWxlZCIKCQkgICAgOzsKCQlyZXN0YXJ0KQoJCSAgICBsb2dnZXIgLXAga2Vybi5lcnIgIkVSUk9SOiRnX3Byb2R1Y3QgcmVzdGFydCBmYWlsZWQiCgkJICAgIDs7CgkJcmVmcmVzaCkKCQkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHJlZnJlc2ggZmFpbGVkIgoJCSAgICA7OwoJICAgIGVzYWMKCgkgICAgaWYgWyAiJFJFU1RPUkVGSUxFIiA9IE5PTkUgXTsgdGhlbgoJCUNPTU1BTkQ9Y2xlYXIKCQljbGVhcl9maXJld2FsbAoJCWVjaG8gIiRnX3Byb2R1Y3QgQ2xlYXJlZCIKCgkJa2lsbCAkJAoJCWV4aXQgMgoJICAgIGVsc2UKCQlnX3Jlc3RvcmVwYXRoPSR7VkFSRElSfS8kUkVTVE9SRUZJTEUKCgkJaWYgWyAteCAkZ19yZXN0b3JlcGF0aCBdOyB0aGVuCgkJICAgIGVjaG8gUmVzdG9yaW5nICR7Z19wcm9kdWN0Oj1TaG9yZXdhbGx9Li4uCgoJCSAgICBnX3JlY292ZXJpbmc9WWVzCgoJCSAgICBpZiBydW5faXQgJGdfcmVzdG9yZXBhdGggcmVzdG9yZTsgdGhlbgoJCQllY2hvICIkZ19wcm9kdWN0IHJlc3RvcmVkIGZyb20gJGdfcmVzdG9yZXBhdGgiCgkJCXNldF9zdGF0ZSAiUmVzdG9yZWQgZnJvbSAkZ19yZXN0b3JlcGF0aCIKCQkgICAgZWxzZQoJCQlzZXRfc3RhdGUgIlVua25vd24iCgkJICAgIGZpCgoJCSAgICBraWxsICQkCgkJICAgIGV4aXQgMgoJCWZpCgkgICAgZmkKCSAgICA7OwogICAgZXNhYwoKICAgIGlmIFsgLW4gIiRnX3N0b3BwaW5nIiBdOyB0aGVuCglraWxsICQkCglleGl0IDEKICAgIGZpCgogICAgc2V0X3N0YXRlICJTdG9wcGluZyIKCiAgICBnX3N0b3BwaW5nPSJZZXMiCgogICAgZGVsZXRlY2hhaW4gc2hvcmV3YWxsCgogICAgcnVuX3N0b3BfZXhpdAoKICAgIGlmIFsgLWYgJHtWQVJESVJ9L25hdCBdOyB0aGVuCgl3aGlsZSByZWFkIGV4dGVybmFsIGludGVyZmFjZTsgZG8KICAgICAgCSAgICBkZWxfaXBfYWRkciAkZXh0ZXJuYWwgJGludGVyZmFjZQoJZG9uZSA8ICR7VkFSRElSfS9uYXQKCglybSAtZiAke1ZBUkRJUn0vbmF0CiAgICBmaQoKICAgIGlmIFsgLWYgJHtWQVJESVJ9L3Byb3h5YXJwIF07IHRoZW4KCXdoaWxlIHJlYWQgYWRkcmVzcyBpbnRlcmZhY2UgZXh0ZXJuYWwgaGF2ZXJvdXRlOyBkbwoJICAgIHF0IGFycCAtaSAkZXh0ZXJuYWwgLWQgJGFkZHJlc3MgcHViCgkgICAgWyAteiAiJHtoYXZlcm91dGV9JHtnX25vcm91dGVzfSIgXSAmJiBxdCAkSVAgLTQgcm91dGUgZGVsICRhZGRyZXNzIGRldiAkaW50ZXJmYWNlCgkgICAgZj0vcHJvYy9zeXMvbmV0L2lwdjQvY29uZi8kaW50ZXJmYWNlL3Byb3h5X2FycAoJICAgIFsgLWYgJGYgXSAmJiBlY2hvIDAgPiAkZgoJZG9uZSA8ICR7VkFSRElSfS9wcm94eWFycAoKCSBybSAtZiAke1ZBUkRJUn0vcHJveHlhcnAKICAgIGZpCgoKICAgIGRlbGV0ZV90YzEKICAgIHVuZG9fcm91dGluZwogICAgcmVzdG9yZV9kZWZhdWx0X3JvdXRlCgogICAgWyAtbiAiJERFQlVHIiBdICYmIGNvbW1hbmQ9ZGVidWdfcmVzdG9yZV9pbnB1dCB8fCBjb21tYW5kPSRJUFRBQkxFU19SRVNUT1JFCgogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgIlJ1bm5pbmcgJGNvbW1hbmQuLi4iCgogICAgJGNvbW1hbmQgPDxfX0VPRl9fCiMKIyBHZW5lcmF0ZWQgYnkgU2hvcmV3YWxsIDQuNC4xMS42IC0gV2VkIE9jdCAzMSAyMDoyODozNyAyMDEyCiMKKnJhdwo6UFJFUk9VVElORyBBQ0NFUFQgWzA6MF0KOk9VVFBVVCBBQ0NFUFQgWzA6MF0KQ09NTUlUCipuYXQKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KQ09NTUlUCiptYW5nbGUKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpJTlBVVCBBQ0NFUFQgWzA6MF0KOkZPUldBUkQgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KQ09NTUlUCipmaWx0ZXIKOklOUFVUIERST1AgWzA6MF0KOkZPUldBUkQgRFJPUCBbMDowXQo6T1VUUFVUIEFDQ0VQVCBbMDowXQotQSBJTlBVVCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIElOUFVUIC1pIGV0aDAgIC1zIDE5Mi4xNjguOC4wLzE2ICAgLWogQUNDRVBUCi1BIElOUFVUIC1pIGxvIC1qIEFDQ0VQVAotQSBJTlBVVCAtaSBsbyAtaiBBQ0NFUFQKLUEgSU5QVVQgLXAgdWRwIC1pIGV0aDAgLS1kcG9ydCA2Nzo2OCAtaiBBQ0NFUFQKLUEgRk9SV0FSRCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIEZPUldBUkQgLXAgdWRwIC1pIGV0aDAgLW8gZXRoMCAtLWRwb3J0IDY3OjY4IC1qIEFDQ0VQVApDT01NSVQKX19FT0ZfXwoKICAgIGlmIFsgJD8gIT0gMCBdOyB0aGVuCgllcnJvcl9tZXNzYWdlICJFUlJPUjogJGNvbW1hbmQgRmFpbGVkLiIKICAgIGZpCgogICAgcnVuX3N0b3BwZWRfZXhpdAoKCiAgICBzZXRfc3RhdGUgIlN0b3BwZWQiCiAgICBsb2dnZXIgLXAga2Vybi5pbmZvICIkZ19wcm9kdWN0IFN0b3BwZWQiCgogICAgY2FzZSAkQ09NTUFORCBpbgogICAgc3RvcHxjbGVhcikKCTs7CiAgICAqKQoJIwoJIyBUaGUgZmlyZXdhbGwgaXMgYmVpbmcgc3RvcHBlZCB3aGVuIHdlIHdlcmUgdHJ5aW5nIHRvIGRvIHNvbWV0aGluZwoJIyBlbHNlLiBLaWxsIHRoZSBzaGVsbCBpbiBjYXNlIHdlJ3JlIHJ1bm5pbmcgaW4gYSBzdWJzaGVsbAoJIwoJa2lsbCAkJAoJOzsKICAgIGVzYWMKfQoKIwojIEhhbmRsZSB0aGUgInVwIiBhbmQgImRvd24iIGNvbW1hbmRzCiMKdXBkb3duKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICBsb2NhbCBzdGF0ZQogICAgc3RhdGU9Y2xlYXJlZAoKICAgIHByb2dyZXNzX21lc3NhZ2UzICIkZ19wcm9kdWN0ICRDT01NQU5EIHRyaWdnZXJlZCBieSAkMSIKCiAgICBpZiBzaG9yZXdhbGxfaXNfc3RhcnRlZDsgdGhlbgoJc3RhdGU9c3RhcnRlZAogICAgZWxpZiBbIC1mICR7VkFSRElSfS9zdGF0ZSBdOyB0aGVuCgljYXNlICIkKGNhdCAke1ZBUkRJUn0vc3RhdGUpIiBpbgoJICAgIFN0b3BwZWQqKQoJCXN0YXRlPXN0b3BwZWQKCQk7OwoJICAgIENsZWFyZWQqKQoJCTs7CgkgICAgKikKCQlzdGF0ZT11bmtub3duCgkJOzsKCWVzYWMKICAgIGVsc2UKCXN0YXRlPXVua25vd24KICAgIGZpCgogICAgY2FzZSAkMSBpbgoJKikKCSAgICBjYXNlICRzdGF0ZSBpbgoJCXN0YXJ0ZWQpCgkJICAgIENPTU1BTkQ9cmVzdGFydAoJCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiJGdfcHJvZHVjdCBhdHRlbXB0aW5nIHJlc3RhcnQiCgkJICAgIGRldGVjdF9jb25maWd1cmF0aW9uCgkJICAgIGRlZmluZV9maXJld2FsbAoJCSAgICA7OwoJCSopCgkJICAgIHByb2dyZXNzX21lc3NhZ2UzICIkQ09NTUFORCBvbiBpbnRlcmZhY2UgJDEgaWdub3JlZCIKCQkgICAgOzsKCSAgICBlc2FjCiAgICBlc2FjCn0KCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyBDb2RlIGltcG9ydGVkIGZyb20gL3Vzci9zaGFyZS9zaG9yZXdhbGwvcHJvZy5mb290ZXIKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojCiMgR2l2ZSBVc2FnZSBJbmZvcm1hdGlvbgojCnVzYWdlKCkgewogICAgZWNobyAiVXNhZ2U6ICQwIFsgb3B0aW9ucyBdIFsgc3RhcnR8c3RvcHxjbGVhcnxkb3dufHJlc2V0fHJlZnJlc2h8cmVzdGFydHxzdGF0dXN8dXB8dmVyc2lvbiBdIgogICAgZWNobwogICAgZWNobyAiT3B0aW9ucyBhcmU6IgogICAgZWNobwogICAgZWNobyAiICAgLXYgYW5kIC1xICAgICAgICBTdGFuZGFyZCBTaG9yZXdhbGwgdmVyYm9zaXR5IGNvbnRyb2xzIgogICAgZWNobyAiICAgLW4gICAgICAgICAgICAgICBEb24ndCB1bnBkYXRlIHJvdXRpbmcgY29uZmlndXJhdGlvbiIKICAgIGVjaG8gIiAgIC1wICAgICAgICAgICAgICAgUHVyZ2UgQ29ubnRyYWNrIFRhYmxlIgogICAgZWNobyAiICAgLXQgICAgICAgICAgICAgICBUaW1lc3RhbXAgcHJvZ3Jlc3MgTWVzc2FnZXMiCiAgICBlY2hvICIgICAtViA8dmVyYm9zaXR5PiAgIFNldCB2ZXJib3NpdHkgZXhwbGljaXRseSIKICAgIGVjaG8gIiAgIC1SIDxmaWxlPiAgICAgICAgT3ZlcnJpZGUgUkVTVE9SRUZJTEUgc2V0dGluZyIKICAgIGV4aXQgJDEKfQojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIEUgWCBFIEMgVSBUIEkgTyBOICAgIEIgRSBHIEkgTiBTICAgSCBFIFIgRQkJCQkgICAgICAgIwojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojCiMgU3RhcnQgdHJhY2UgaWYgZmlyc3QgYXJnIGlzICJkZWJ1ZyIgb3IgInRyYWNlIgojCmlmIFsgJCMgLWd0IDEgXTsgdGhlbgogICAgaWYgWyAieCQxIiA9ICJ4dHJhY2UiIF07IHRoZW4KCXNldCAteAoJc2hpZnQKICAgIGVsaWYgWyAieCQxIiA9ICJ4ZGVidWciIF07IHRoZW4KCURFQlVHPVllcwoJc2hpZnQKICAgIGZpCmZpCiMKIyBNYXAgVkVSQk9TRSB0byBWRVJCT1NJVFkgZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBvbGQgU2hvcmV3YWxsLWxpdGUgaW5zdGFsbGF0aW9ucwojClsgLXogIiRWRVJCT1NJVFkiIF0gJiYgWyAtbiAiJFZFUkJPU0UiIF0gJiYgVkVSQk9TSVRZPSRWRVJCT1NFCiMKIyBNYXAgb3RoZXIgb2xkIGV4cG9ydGVkIHZhcmlhYmxlcwojCmdfcHVyZ2U9JFBVUkdFCmdfbm9yb3V0ZXM9JE5PUk9VVEVTCmdfdGltZXN0YW1wPSRUSU1FU1RBTVAKZ19yZWNvdmVyaW5nPSRSRUNPVkVSSU5HCgppbml0aWFsaXplCgppZiBbIC1uICIkU1RBUlRVUF9MT0ciIF07IHRoZW4KICAgIHRvdWNoICRTVEFSVFVQX0xPRwogICAgY2htb2QgMDYwMCAkU1RBUlRVUF9MT0cKICAgIGlmIFsgJHtTSE9SRVdBTExfSU5JVF9TQ1JJUFQ6LTB9IC1lcSAxIF07IHRoZW4KCSMKCSMgV2UncmUgYmVpbmcgcnVuIGJ5IGEgc3RhcnR1cCBzY3JpcHQgdGhhdCBpc24ndCByZWRpcmVjdGluZyBTVERPVVQKCSMgUmVkaXJlY3QgaXQgdG8gdGhlIGxvZwoJIwoJZXhlYyAyPj4kU1RBUlRVUF9MT0cKICAgIGZpCmZpCgpmaW5pc2hlZD0wCgp3aGlsZSBbICRmaW5pc2hlZCAtZXEgMCAtYSAkIyAtZ3QgMCBdOyBkbwogICAgb3B0aW9uPSQxCiAgICBjYXNlICRvcHRpb24gaW4KCS0qKQoJICAgIG9wdGlvbj0ke29wdGlvbiMtfQoKCSAgICBbIC16ICIkb3B0aW9uIiBdICYmIHVzYWdlIDEKCgkgICAgd2hpbGUgWyAtbiAiJG9wdGlvbiIgXTsgZG8KCQljYXNlICRvcHRpb24gaW4KCQkgICAgdiopCgkJCVsgJFZFUkJPU0lUWSAtbHQgMiBdICYmIFZFUkJPU0lUWT0kKCgkVkVSQk9TSVRZICsgMSApKQoJCQlvcHRpb249JHtvcHRpb24jdn0KCQkJOzsKCQkgICAgcSopCgkJCVsgJFZFUkJPU0lUWSAtZ3QgLTEgXSAmJiBWRVJCT1NJVFk9JCgoJFZFUkJPU0lUWSAtIDEgKSkKCQkJb3B0aW9uPSR7b3B0aW9uI3F9CgkJCTs7CgkJICAgIG4qKQoJCQlnX25vcm91dGVzPVllcwoJCQlvcHRpb249JHtvcHRpb24jbn0KCQkJOzsKCQkgICAgdCopCgkJCWdfdGltZXN0YW1wPVllcwoJCQlvcHRpb249JHtvcHRpb24jdH0KCQkJOzsKCQkgICAgcCopCgkJCWdfcHVyZ2U9WWVzCgkJCW9wdGlvbj0ke29wdGlvbiNwfQoJCQk7OwoJCSAgICByKikKCQkJZ19yZWNvdmVyaW5nPVllcwoJCQlvcHRpb249JHtvcHRpb24jcn0KCQkJOzsKCQkgICAgViopCgkJCW9wdGlvbj0ke29wdGlvbiNWfQoKCQkJaWYgWyAteiAiJG9wdGlvbiIgLWEgJCMgLWd0IDAgXTsgdGhlbgoJCQkgICAgc2hpZnQKCQkJICAgIG9wdGlvbj0kMQoJCQlmaQoKCQkJaWYgWyAtbiAiJG9wdGlvbiIgXTsgdGhlbgoJCQkgICAgY2FzZSAkb3B0aW9uIGluCgkJCQktMXwwfDF8MikKCQkJCSAgICBWRVJCT1NJVFk9JG9wdGlvbgoJCQkJICAgIG9wdGlvbj0KCQkJCSAgICA7OwoJCQkJKikKCQkJCSAgICBzdGFydHVwX2Vycm9yICJJbnZhbGlkIC1WIG9wdGlvbiB2YWx1ZSAoJG9wdGlvbikiCgkJCQkgICAgOzsKCQkJICAgIGVzYWMKCQkJZWxzZQoJCQkgICAgc3RhcnR1cF9lcnJvciAiTWlzc2luZyAtViBvcHRpb24gdmFsdWUiCgkJCWZpCgkJCTs7CgkJICAgIFIqKQoJCQlvcHRpb249JHtvcHRpb24jUn0KCgkJCWlmIFsgLXogIiRvcHRpb24iIC1hICQjIC1ndCAwIF07IHRoZW4KCQkJICAgIHNoaWZ0CgkJCSAgICBvcHRpb249JDEKCQkJZmkKCgkJCWlmIFsgLW4gIiRvcHRpb24iIF07IHRoZW4KCQkJICAgIGNhc2UgJG9wdGlvbiBpbgoJCQkJKi8qKQoJICAgIAkJCSAgICBzdGFydHVwX2Vycm9yICItUiBtdXN0IHNwZWNpZnkgYSBzaW1wbGUgZmlsZSBuYW1lOiAkb3B0aW9uIgoJCQkJICAgIDs7CgkJCQkuc2FmZXwudHJ5fE5PTkUpCgkJCQkgICAgOzsKCQkJCS4qKQoJCQkJICAgIGVycm9yX21lc3NhZ2UgIkVSUk9SOiBSZXNlcnZlZCBGaWxlIE5hbWU6ICRSRVNUT1JFRklMRSIKCQkJCSAgICBleGl0IDIKCQkJCSAgICA7OwoJCQkgICAgZXNhYwoJCQllbHNlCgkJCSAgICBzdGFydHVwX2Vycm9yICJNaXNzaW5nIC1SIG9wdGlvbiB2YWx1ZSIKCQkJZmkKCgkJCVJFU1RPUkVGSUxFPSRvcHRpb24KCQkJb3B0aW9uPQoJCQk7OwoJCSAgICAqKQoJCQl1c2FnZSAxCgkJCTs7CgkJZXNhYwoJICAgIGRvbmUKCSAgICBzaGlmdAoJICAgIDs7CgkqKQoJICAgIGZpbmlzaGVkPTEKICAgICAgICAgICAgOzsKICAgIGVzYWMKZG9uZQoKQ09NTUFORD0iJDEiCgpjYXNlICIkQ09NTUFORCIgaW4KICAgIHN0YXJ0KQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCWlmIHNob3Jld2FsbF9pc19zdGFydGVkOyB0aGVuCgkgICAgZXJyb3JfbWVzc2FnZSAiJGdfcHJvZHVjdCBpcyBhbHJlYWR5IFJ1bm5pbmciCgkgICAgc3RhdHVzPTAKCWVsc2UKCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiU3RhcnRpbmcgJGdfcHJvZHVjdC4uLi4iCgkgICAgZGV0ZWN0X2NvbmZpZ3VyYXRpb24KCSAgICBkZWZpbmVfZmlyZXdhbGwKCSAgICBzdGF0dXM9JD8KCSAgICBbIC1uICIkU1VCU1lTTE9DSyIgLWEgJHN0YXR1cyAtZXEgMCBdICYmIHRvdWNoICRTVUJTWVNMT0NLCgkgICAgcHJvZ3Jlc3NfbWVzc2FnZTMgImRvbmUuIgoJZmkKCTs7CiAgICBzdG9wKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCXByb2dyZXNzX21lc3NhZ2UzICJTdG9wcGluZyAkZ19wcm9kdWN0Li4uLiIKCWRldGVjdF9jb25maWd1cmF0aW9uCglzdG9wX2ZpcmV3YWxsCglzdGF0dXM9MAoJWyAtbiAiJFNVQlNZU0xPQ0siIF0gJiYgcm0gLWYgJFNVQlNZU0xPQ0sKCXByb2dyZXNzX21lc3NhZ2UzICJkb25lLiIKCTs7CiAgICByZXNldCkKCWlmICEgc2hvcmV3YWxsX2lzX3N0YXJ0ZWQgOyB0aGVuCgkgICAgZXJyb3JfbWVzc2FnZSAiJGdfcHJvZHVjdCBpcyBub3QgcnVubmluZyIKCSAgICBzdGF0dXM9MgoJZWxpZiBbICQjIC1lcSAxIF07IHRoZW4KCSAgICAkSVBUQUJMRVMgLVoKCSAgICAkSVBUQUJMRVMgLXQgbmF0IC1aCgkgICAgJElQVEFCTEVTIC10IG1hbmdsZSAtWgoJICAgIGRhdGUgPiAke1ZBUkRJUn0vcmVzdGFydGVkCgkgICAgc3RhdHVzPTAKCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiJGdfcHJvZHVjdCBDb3VudGVycyBSZXNldCIKCWVsc2UKCSAgICBzaGlmdAoJICAgIHN0YXR1cz0wCgkgICAgZm9yIGNoYWluIGluICRAOyBkbwoJCWlmIGNoYWluX2V4aXN0cyAkY2hhaW47IHRoZW4KCQkgICAgaWYgcXQgJElQVEFCTEVTIC1aICRjaGFpbjsgdGhlbgoJCQlwcm9ncmVzc19tZXNzYWdlMyAiRmlsdGVyICRjaGFpbiBDb3VudGVycyBSZXNldCIKCQkgICAgZWxzZQoJCQllcnJvcl9tZXNzYWdlICJFUlJPUjogUmVzZXQgb2YgY2hhaW4gJGNoYWluIGZhaWxlZCIKCQkJc3RhdHVzPTIKCQkJYnJlYWsKCQkgICAgZmkKCQllbHNlCgkJICAgIGVycm9yX21lc3NhZ2UgIldBUk5JTkc6IEZpbHRlciBDaGFpbiAkY2hhaW4gZG9lcyBub3QgZXhpc3QiCgkJZmkKCSAgICBkb25lCglmaQoJOzsKICAgIHJlc3RhcnQpCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJaWYgc2hvcmV3YWxsX2lzX3N0YXJ0ZWQ7IHRoZW4KCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiUmVzdGFydGluZyAkZ19wcm9kdWN0Li4uLiIKCWVsc2UKCSAgICBlcnJvcl9tZXNzYWdlICIkZ19wcm9kdWN0IGlzIG5vdCBydW5uaW5nIgoJICAgIHByb2dyZXNzX21lc3NhZ2UzICJTdGFydGluZyAkZ19wcm9kdWN0Li4uLiIKCSAgICBDT01NQU5EPXN0YXJ0CglmaQoKCWRldGVjdF9jb25maWd1cmF0aW9uCglkZWZpbmVfZmlyZXdhbGwKCXN0YXR1cz0kPwoJaWYgWyAtbiAiJFNVQlNZU0xPQ0siIF07IHRoZW4KIAkgICAgWyAkc3RhdHVzIC1lcSAwIF0gJiYgdG91Y2ggJFNVQlNZU0xPQ0sgfHwgcm0gLWYgJFNVQlNZU0xPQ0sKICAgICAgICBmaQoJcHJvZ3Jlc3NfbWVzc2FnZTMgImRvbmUuIgoJOzsKICAgIHJlZnJlc2gpCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJaWYgc2hvcmV3YWxsX2lzX3N0YXJ0ZWQ7IHRoZW4KCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiUmVmcmVzaGluZyAkZ19wcm9kdWN0Li4uLiIKCSAgICBkZXRlY3RfY29uZmlndXJhdGlvbgoJICAgIGRlZmluZV9maXJld2FsbAoJICAgIHN0YXR1cz0kPwoJICAgIHByb2dyZXNzX21lc3NhZ2UzICJkb25lLiIKCWVsc2UKCSAgICBlY2hvICIkZ19wcm9kdWN0IGlzIG5vdCBydW5uaW5nIiA+JjIKCSAgICBzdGF0dXM9MgoJZmkKCTs7CiAgICByZXN0b3JlKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCWRldGVjdF9jb25maWd1cmF0aW9uCglkZWZpbmVfZmlyZXdhbGwKCXN0YXR1cz0kPwoJaWYgWyAtbiAiJFNVQlNZU0xPQ0siIF07IHRoZW4KIAkgICAgWyAkc3RhdHVzIC1lcSAwIF0gJiYgdG91Y2ggJFNVQlNZU0xPQ0sgfHwgcm0gLWYgJFNVQlNZU0xPQ0sKICAgICAgICBmaQoJOzsKICAgIGNsZWFyKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCXByb2dyZXNzX21lc3NhZ2UzICJDbGVhcmluZyAkZ19wcm9kdWN0Li4uLiIKCWNsZWFyX2ZpcmV3YWxsCglzdGF0dXM9MAoJaWYgWyAtbiAiJFNVQlNZU0xPQ0siIF07IHRoZW4KCSAgICBybSAtZiAkU1VCU1lTTE9DSwoJZmkKCXByb2dyZXNzX21lc3NhZ2UzICJkb25lLiIKCTs7CiAgICBzdGF0dXMpCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJZWNobyAiJGdfcHJvZHVjdC0kU0hPUkVXQUxMX1ZFUlNJT04gU3RhdHVzIGF0ICQoaG9zdG5hbWUpIC0gJChkYXRlKSIKCWVjaG8KCWlmIHNob3Jld2FsbF9pc19zdGFydGVkOyB0aGVuCgkgICAgZWNobyAiJGdfcHJvZHVjdCBpcyBydW5uaW5nIgoJICAgIHN0YXR1cz0wCgllbHNlCgkgICAgZWNobyAiJGdfcHJvZHVjdCBpcyBzdG9wcGVkIgoJICAgIHN0YXR1cz00CglmaQoKCWlmIFsgLWYgJHtWQVJESVJ9L3N0YXRlIF07IHRoZW4KCSAgICBzdGF0ZT0iJChjYXQgJHtWQVJESVJ9L3N0YXRlKSIKCSAgICBjYXNlICRzdGF0ZSBpbgoJCVN0b3BwZWQqfGxDbGVhciopCgkJICAgIHN0YXR1cz0zCgkJICAgIDs7CgkgICAgZXNhYwoJZWxzZQoJICAgIHN0YXRlPVVua25vd24KCWZpCgllY2hvICJTdGF0ZTokc3RhdGUiCgllY2hvCgk7OwogICAgdXB8ZG93bikKCVsgJCMgLWVxIDEgXSAmJiBleGl0IDAKCXNoaWZ0CglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJdXBkb3duICRACglzdGF0dXM9MDsKCTs7CiAgICB2ZXJzaW9uKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCWVjaG8gJFNIT1JFV0FMTF9WRVJTSU9OCglzdGF0dXM9MAoJOzsKICAgIGhlbHApCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJdXNhZ2UgMAoJOzsKICAgICopCgl1c2FnZSAyCgk7Owplc2FjCgpleGl0ICRzdGF0dXMK"
    }

**POST /shorewall/firewallfiles/client**

**Describe Service:**

    Verb  URI                                             Description
    POST  /shorewall/firewallfiles/client                 Posts the firewall and firewall.conf files to shorewall-lite clients


###Request JSON :


    {
       "firewall": "IwojIFNob3Jld2FsbCBhdXhpbGlhcnkgY29uZmlndXJhdGlvbiBmaWxlIGNyZWF0ZWQgYnkgU2hvcmV3YWxsIHZlcnNpb24gNC40LjExLjYgLSBXZWQgT2N0IDMxIDIwOjI4OjM3IDIwMTIKIwpbIC1uICIke1ZFUkJPU0lUWTo9MX0iIF0KWyAtbiAiJHtMT0dGSUxFOj0vdmFyL2xvZy9tZXNzYWdlc30iIF0KWyAtbiAiJHtMT0dGT1JNQVQ6PVNob3Jld2FsbDolczolczp9IiBdClsgLW4gIiR7UEFUSDo9L3NiaW46L2JpbjovdXNyL3NiaW46L3Vzci9iaW46L3Vzci9sb2NhbC9iaW46L3Vzci9sb2NhbC9zYmlufSIgXQpbIC1uICIke1NIT1JFV0FMTF9TSEVMTDo9L2Jpbi9zaH0iIF0KWyAtbiAiJHtSRVNUT1JFRklMRTo9cmVzdG9yZX0iIF0KVENfRU5BQkxFRD0iSW50ZXJuYWwiCg==",
       "firewallconf": "IyEvYmluL3NoCiMKIyBDb21waWxlZCBmaXJld2FsbCBzY3JpcHQgZ2VuZXJhdGVkIGJ5IFNob3Jld2FsbCA0LjQuMTEuNiAtIFdlZCBPY3QgMzEgMjA6Mjg6MzcgMjAxMgojCiMhL2Jpbi9zaAojCiMgICAgIFRoaXMgcHJvZ3JhbSBpcyB1bmRlciBHUEwgW2h0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy9vbGQtbGljZW5zZXMvZ3BsLTIuMC50eHRdCiMKIyAgICAgKGMpIDE5OTktMjAxMCAtIFRvbSBFYXN0ZXAgKHRlYXN0ZXBAc2hvcmV3YWxsLm5ldCkKIwojCU9wdGlvbnMgYXJlOgojCiMJICAgIC1uCQkJCSAgRG9uJ3QgYWx0ZXIgUm91dGluZwojCSAgICAtdiBhbmQgLXEJCQkgIFN0YW5kYXJkIFNob3Jld2FsbCBWZXJib3NpdHkgY29udHJvbAojICAgICAgICAgICAtdCAgICAgICAgICAgICAgICAgICAgICAgICAgICBUaW1lc3RhbXAgcHJvZ3Jlc3MgbWVzc2FnZXMKIyAgICAgICAgICAgLXAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUHVyZ2UgY29ubnRyYWNrIHRhYmxlCiMgICAgICAgICAgIC1yICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlY292ZXIgZnJvbSBmYWlsZWQgc3RhcnQvcmVzdGFydAojICAgICAgICAgICAtViA8dmVyYm9zaXR5PiAgICAgICAgICAgICAgICBTZXQgdmVyYm9zaXR5IGxldmVsIGV4cGxpY2l0bHkKIyAgICAgICAgICAgLVIgPHJlc3RvcmU+ICAgICAgICAgICAgICAgICAgT3ZlcnJpZGVzIFJFU1RPUkVGSUxFIHNldHRpbmcKIwojCUNvbW1hbmRzIGFyZToKIwojCSAgIHN0YXJ0CQkJICBTdGFydHMgdGhlIGZpcmV3YWxsCiMgICAgICAgICAgcmVmcmVzaCAgICAgICAgICAgICAgICAgICAgICAgIFJlZnJlc2ggdGhlIGZpcmV3YWxsCiMJICAgcmVzdGFydAkJCSAgUmVzdGFydHMgdGhlIGZpcmV3YWxsCiMJICAgcmVsb2FkCQkJICBSZWxvYWQgdGhlIGZpcmV3YWxsCiMJICAgY2xlYXIJCQkgIFJlbW92ZXMgYWxsIGZpcmV3YWxsIHJ1bGVzCiMJICAgc3RvcAkJCQkgIFN0b3BzIHRoZSBmaXJld2FsbAojCSAgIHN0YXR1cwkJCSAgRGlzcGxheXMgZmlyZXdhbGwgc3RhdHVzCiMJICAgdmVyc2lvbgkJCSAgRGlzcGxheXMgdGhlIHZlcnNpb24gb2YgU2hvcmV3YWxsIHRoYXQKIwkgICAJCQkJICBnZW5lcmF0ZWQgdGhpcyBwcm9ncmFtCiMKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyBGdW5jdGlvbnMgaW1wb3J0ZWQgZnJvbSAvdXNyL3NoYXJlL3Nob3Jld2FsbC9wcm9nLmhlYWRlcgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojCiMgQ29uZGl0aW9uYWxseSBwcm9kdWNlIG1lc3NhZ2UKIwpwcm9ncmVzc19tZXNzYWdlKCkgIyAkKiA9IE1lc3NhZ2UKewogICAgbG9jYWwgdGltZXN0YW1wCiAgICB0aW1lc3RhbXA9CgogICAgaWYgWyAkVkVSQk9TSVRZIC1ndCAxIF07IHRoZW4KCVsgLW4gIiRnX3RpbWVzdGFtcCIgXSAmJiB0aW1lc3RhbXA9IiQoZGF0ZSArJUg6JU06JVMpICIKCWVjaG8gIiR7dGltZXN0YW1wfSRAIgogICAgZmkKCiAgICBpZiBbICRMT0dfVkVSQk9TSVRZIC1ndCAxIF07IHRoZW4KICAgICAgICB0aW1lc3RhbXA9IiQoZGF0ZSArJyViICVfZCAlVCcpICIKICAgICAgICBlY2hvICIke3RpbWVzdGFtcH0kQCIgPj4gJFNUQVJUVVBfTE9HCiAgICBmaQp9Cgpwcm9ncmVzc19tZXNzYWdlMigpICMgJCogPSBNZXNzYWdlCnsKICAgIGxvY2FsIHRpbWVzdGFtcAogICAgdGltZXN0YW1wPQoKICAgIGlmIFsgJFZFUkJPU0lUWSAtZ3QgMCBdOyB0aGVuCglbIC1uICIkZ190aW1lc3RhbXAiIF0gJiYgdGltZXN0YW1wPSIkKGRhdGUgKyVIOiVNOiVTKSAiCgllY2hvICIke3RpbWVzdGFtcH0kQCIKICAgIGZpCgogICAgaWYgWyAkTE9HX1ZFUkJPU0lUWSAtZ3QgMCBdOyB0aGVuCiAgICAgICAgdGltZXN0YW1wPSIkKGRhdGUgKyclYiAlX2QgJVQnKSAiCiAgICAgICAgZWNobyAiJHt0aW1lc3RhbXB9JEAiID4+ICRTVEFSVFVQX0xPRwogICAgZmkKfQoKcHJvZ3Jlc3NfbWVzc2FnZTMoKSAjICQqID0gTWVzc2FnZQp7CiAgICBsb2NhbCB0aW1lc3RhbXAKICAgIHRpbWVzdGFtcD0KCiAgICBpZiBbICRWRVJCT1NJVFkgLWdlIDAgXTsgdGhlbgoJWyAtbiAiJGdfdGltZXN0YW1wIiBdICYmIHRpbWVzdGFtcD0iJChkYXRlICslSDolTTolUykgIgoJZWNobyAiJHt0aW1lc3RhbXB9JEAiCiAgICBmaQoKICAgIGlmIFsgJExPR19WRVJCT1NJVFkgLWdlIDAgXTsgdGhlbgogICAgICAgIHRpbWVzdGFtcD0iJChkYXRlICsnJWIgJV9kICVUJykgIgogICAgICAgIGVjaG8gIiR7dGltZXN0YW1wfSRAIiA+PiAkU1RBUlRVUF9MT0cKICAgIGZpCn0KCiMKIyBTZXQgYSBzdGFuZGFyZCBjaGFpbidzIHBvbGljeQojCnNldHBvbGljeSgpICMgJDEgPSBuYW1lIG9mIGNoYWluLCAkMiA9IHBvbGljeQp7CiAgICBydW5faXB0YWJsZXMgLVAgJDEgJDIKfQoKIwojIFNldCBhIHN0YW5kYXJkIGNoYWluIHRvIGVuYWJsZSBlc3RhYmxpc2hlZCBhbmQgcmVsYXRlZCBjb25uZWN0aW9ucwojCnNldGNvbnRpbnVlKCkgIyAkMSA9IG5hbWUgb2YgY2hhaW4KewogICAgcnVuX2lwdGFibGVzIC1BICQxIC1tIHN0YXRlIC0tc3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKfQoKIwojIEZsdXNoIG9uZSBvZiB0aGUgTkFUIHRhYmxlIGNoYWlucwojCmZsdXNobmF0KCkgIyAkMSA9IG5hbWUgb2YgY2hhaW4KewogICAgcnVuX2lwdGFibGVzIC10IG5hdCAtRiAkMQp9CgojCiMgRmx1c2ggb25lIG9mIHRoZSBNYW5nbGUgdGFibGUgY2hhaW5zCiMKZmx1c2htYW5nbGUoKSAjICQxID0gbmFtZSBvZiBjaGFpbgp7CiAgICBydW5faXB0YWJsZXMgLXQgbWFuZ2xlIC1GICQxCn0KCiMKIyBGbHVzaCBhbmQgZGVsZXRlIGFsbCB1c2VyLWRlZmluZWQgY2hhaW5zIGluIHRoZSBmaWx0ZXIgdGFibGUKIwpkZWxldGVhbGxjaGFpbnMoKSB7CiAgICBydW5faXB0YWJsZXMgLUYKICAgIHJ1bl9pcHRhYmxlcyAtWAp9CgojCiMgR2VuZXJhdGUgYSBsaXN0IG9mIGFsbCBuZXR3b3JrIGludGVyZmFjZXMgb24gdGhlIHN5c3RlbQojCmZpbmRfYWxsX2ludGVyZmFjZXMoKSB7CiAgICAke0lQOi1pcH0gbGluayBsaXN0IHwgZWdyZXAgJ15bWzpkaWdpdDpdXSs6JyB8IGN1dCAtZCAnICcgLWYyIHwgc2VkICdzLzokLy8nCn0KCiMKIyBGaW5kIHRoZSB2YWx1ZSAnZGV2JyBpbiB0aGUgcGFzc2VkIGFyZ3VtZW50cyB0aGVuIGVjaG8gdGhlIG5leHQgdmFsdWUKIwoKZmluZF9kZXZpY2UoKSB7CiAgICB3aGlsZSBbICQjIC1ndCAxIF07IGRvCglbICJ4JDEiID0geGRldiBdICYmIGVjaG8gJDIgJiYgcmV0dXJuCglzaGlmdAogICAgZG9uZQp9CgojCiMgRmluZCB0aGUgdmFsdWUgJ3ZpYScgaW4gdGhlIHBhc3NlZCBhcmd1bWVudHMgdGhlbiBlY2hvIHRoZSBuZXh0IHZhbHVlCiMKCmZpbmRfZ2F0ZXdheSgpIHsKICAgIHdoaWxlIFsgJCMgLWd0IDEgXTsgZG8KCVsgIngkMSIgPSB4dmlhIF0gJiYgZWNobyAkMiAmJiByZXR1cm4KCXNoaWZ0CiAgICBkb25lCn0KCiMKIyBGaW5kIHRoZSB2YWx1ZSAnbXR1JyBpbiB0aGUgcGFzc2VkIGFyZ3VtZW50cyB0aGVuIGVjaG8gdGhlIG5leHQgdmFsdWUKIwoKZmluZF9tdHUoKSB7CiAgICB3aGlsZSBbICQjIC1ndCAxIF07IGRvCglbICJ4JDEiID0geG10dSBdICYmIGVjaG8gJDIgJiYgcmV0dXJuCglzaGlmdAogICAgZG9uZQp9CgojCiMgRmluZCB0aGUgdmFsdWUgJ3BlZXInIGluIHRoZSBwYXNzZWQgYXJndW1lbnRzIHRoZW4gZWNobyB0aGUgbmV4dCB2YWx1ZSB1cCB0bwojICIvIgojCgpmaW5kX3BlZXIoKSB7CiAgICB3aGlsZSBbICQjIC1ndCAxIF07IGRvCglbICJ4JDEiID0geHBlZXIgXSAmJiBlY2hvICR7MiUvKn0gJiYgcmV0dXJuCglzaGlmdAogICAgZG9uZQp9CgojCiMgRmluZCB0aGUgaW50ZXJmYWNlcyB0aGF0IGhhdmUgYSByb3V0ZSB0byB0aGUgcGFzc2VkIGFkZHJlc3MgLSB0aGUgZGVmYXVsdAojIHJvdXRlIGlzIG5vdCB1c2VkLgojCgpmaW5kX3J0X2ludGVyZmFjZSgpIHsKICAgICRJUCAtNCByb3V0ZSBsaXN0IHwgd2hpbGUgcmVhZCBhZGRyIHJlc3Q7IGRvCgljYXNlICRhZGRyIGluCgkgICAgKi8qKQoJCWluX25ldHdvcmsgJHsxJS8qfSAkYWRkciAmJiBlY2hvICQoZmluZF9kZXZpY2UgJHJlc3QpCgkJOzsKCSAgICBkZWZhdWx0KQoJCTs7CgkgICAgKikKCQlpZiBbICIkYWRkciIgPSAiJDEiIC1vICIkYWRkci8zMiIgPSAiJDEiIF07IHRoZW4KCQkgICAgZWNobyAkKGZpbmRfZGV2aWNlICRyZXN0KQoJCWZpCgkJOzsKCWVzYWMKICAgIGRvbmUKfQoKIwojIFRyeSB0byBmaW5kIHRoZSBnYXRld2F5IHRocm91Z2ggYW4gaW50ZXJmYWNlIGxvb2tpbmcgZm9yICduZXh0aG9wJwoKZmluZF9uZXh0aG9wKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICBlY2hvICQoZmluZF9nYXRld2F5IGAkSVAgLTQgcm91dGUgbGlzdCB8IGdyZXAgIltbOnNwYWNlOl1dbmV4dGhvcC4qICQxImApCn0KCiMKIyBGaW5kIHRoZSBkZWZhdWx0IHJvdXRlJ3MgaW50ZXJmYWNlCiMKZmluZF9kZWZhdWx0X2ludGVyZmFjZSgpIHsKICAgICRJUCAtNCByb3V0ZSBsaXN0IHwgd2hpbGUgcmVhZCBmaXJzdCByZXN0OyBkbwoJWyAiJGZpcnN0IiA9IGRlZmF1bHQgXSAmJiBlY2hvICQoZmluZF9kZXZpY2UgJHJlc3QpICYmIHJldHVybgogICAgZG9uZQp9CgojCiMgRWNobyB0aGUgbmFtZSBvZiB0aGUgaW50ZXJmYWNlKHMpIHRoYXQgd2lsbCBiZSB1c2VkIHRvIHNlbmQgdG8gdGhlCiMgcGFzc2VkIGFkZHJlc3MKIwoKZmluZF9pbnRlcmZhY2VfYnlfYWRkcmVzcygpIHsKICAgIGxvY2FsIGRldgogICAgZGV2PSIkKGZpbmRfcnRfaW50ZXJmYWNlICQxKSIKICAgIGxvY2FsIGZpcnN0CiAgICBsb2NhbCByZXN0CgogICAgWyAteiAiJGRldiIgXSAmJiBkZXY9JChmaW5kX2RlZmF1bHRfaW50ZXJmYWNlKQoKICAgIFsgLW4gIiRkZXYiIF0gJiYgZWNobyAkZGV2Cn0KCiMKIyBEZXRlcm1pbmUgaWYgSW50ZXJmYWNlIGlzIHVwCiMKaW50ZXJmYWNlX2lzX3VwKCkgewogICAgWyAtbiAiJCgkSVAgbGluayBsaXN0IGRldiAkMSAyPiAvZGV2L251bGwgfCBncmVwIC1lICdbPCxdVVBbLD5dJykiIF0KfQoKIwojIERldGVybWluZSBpZiBpbnRlcmZhY2UgaXMgdXNhYmxlIGZyb20gYSBOZXRmaWx0ZXIgcHJlc3BlY3RpdmUKIwppbnRlcmZhY2VfaXNfdXNhYmxlKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICBbICIkMSIgPSBsbyBdICYmIHJldHVybiAwCiAgICBpbnRlcmZhY2VfaXNfdXAgJDEgJiYgWyAiJChmaW5kX2ZpcnN0X2ludGVyZmFjZV9hZGRyZXNzX2lmX2FueSAkMSkiICE9IDAuMC4wLjAgXSAmJiBydW5faXN1c2FibGVfZXhpdCAkMQp9CgojCiMgRmluZCBpbnRlcmZhY2UgYWRkcmVzc2VzLS1yZXR1cm5zIHRoZSBzZXQgb2YgYWRkcmVzc2VzIGFzc2lnbmVkIHRvIHRoZSBwYXNzZWQKIyBkZXZpY2UKIwpmaW5kX2ludGVyZmFjZV9hZGRyZXNzZXMoKSAjICQxID0gaW50ZXJmYWNlCnsKICAgICRJUCAtZiBpbmV0IGFkZHIgc2hvdyAkMSAyPiAvZGV2L251bGwgfCBncmVwIGluZXRcICB8IHNlZCAncy9ccyppbmV0IC8vO3MvXC8uKi8vO3MvIHBlZXIuKi8vJwp9CgojCiMgIGVjaG8gdGhlIGxpc3Qgb2YgbmV0d29ya3Mgcm91dGVkIG91dCBvZiBhIGdpdmVuIGludGVyZmFjZQojCmdldF9yb3V0ZWRfbmV0d29ya3MoKSAjICQxID0gaW50ZXJmYWNlIG5hbWUsICQyLW4gPSBGYXRhbCBlcnJvciBtZXNzYWdlCnsKICAgIGxvY2FsIGFkZHJlc3MKICAgIGxvY2FsIHJlc3QKCiAgICAkSVAgLTQgcm91dGUgc2hvdyBkZXYgJDEgMj4gL2Rldi9udWxsIHwKCXdoaWxlIHJlYWQgYWRkcmVzcyByZXN0OyBkbwoJICAgIGNhc2UgIiRhZGRyZXNzIiBpbgoJCWRlZmF1bHQpCgkJICAgIGlmIFsgJCMgLWd0IDEgXTsgdGhlbgoJCQlzaGlmdAoJCQlmYXRhbF9lcnJvciAiJEAiCgkJICAgIGVsc2UKCQkJZWNobyAiV0FSTklORzogZGVmYXVsdCByb3V0ZSBpZ25vcmVkIG9uIGludGVyZmFjZSAkMSIgPiYyCgkJICAgIGZpCgkJICAgIDs7CgkJbXVsdGljYXN0fGJyb2FkY2FzdHxwcm9oaWJpdHxuYXR8dGhyb3d8bmV4dGhvcCkKCQkgICAgOzsKCQkqKQoJCSAgICBbICIkYWRkcmVzcyIgPSAiJHthZGRyZXNzJS8qfSIgXSAmJiBhZGRyZXNzPSIke2FkZHJlc3N9LzMyIgoJCSAgICBlY2hvICRhZGRyZXNzCgkJICAgIDs7CgkgICAgZXNhYwogICAgICAgIGRvbmUKfQoKIwojIEdldCB0aGUgYnJvYWRjYXN0IGFkZHJlc3NlcyBhc3NvY2lhdGVkIHdpdGggYW4gaW50ZXJmYWNlCiMKZ2V0X2ludGVyZmFjZV9iY2FzdHMoKSAjICQxID0gaW50ZXJmYWNlCnsKICAgIGxvY2FsIGFkZHJlc3NlcwogICAgYWRkcmVzc2VzPQoKICAgICRJUCAtZiBpbmV0IGFkZHIgc2hvdyBkZXYgJDEgMj4gL2Rldi9udWxsIHwgZ3JlcCAnaW5ldC4qYnJkJyB8IHNlZCAncy9pbmV0LipicmQgLy87IHMvc2NvcGUuKi8vOycgfCBzb3J0IC11Cn0KCiMKIyBEZWxldGUgSVAgYWRkcmVzcwojCmRlbF9pcF9hZGRyKCkgIyAkMSA9IGFkZHJlc3MsICQyID0gaW50ZXJmYWNlCnsKICAgIFsgJChmaW5kX2ZpcnN0X2ludGVyZmFjZV9hZGRyZXNzX2lmX2FueSAkMikgPSAkMSBdIHx8IHF0ICRJUCBhZGRyIGRlbCAkMSBkZXYgJDIKfQoKIyBBZGQgSVAgQWxpYXNlcwojCmFkZF9pcF9hbGlhc2VzKCkgIyAkKiA9IExpc3Qgb2YgYWRkcmVzc2VzCnsKICAgIGxvY2FsIGxvY2FsCiAgICBsb2NhbCBhZGRyZXNzZXMKICAgIGxvY2FsIGV4dGVybmFsCiAgICBsb2NhbCBpbnRlcmZhY2UKICAgIGxvY2FsIGluZXQKICAgIGxvY2FsIGNpZHIKICAgIGxvY2FsIHJlc3QKICAgIGxvY2FsIHZhbAogICAgbG9jYWwgYXJwaW5nCiAgICBhcnBpbmc9JChteXdoaWNoIGFycGluZykKCiAgICBhZGRyZXNzX2RldGFpbHMoKQogICAgewoJIwoJIyBGb2xrcyBmZWVsIHVuZWFzeSBpZiB0aGV5IGRvbid0IHNlZSBhbGwgb2YgdGhlIHNhbWUKCSMgZGVjb3JhdGlvbiBvbiB0aGVzZSBJUCBhZGRyZXNzZXMgdGhhdCB0aGV5IHNlZSB3aGVuIHRoZWlyCgkjIGRpc3RybydzIG5ldCBjb25maWcgdG9vbCBhZGRzIHRoZW0uIEluIGFuIGF0dGVtcHQgdG8gcmVkdWNlCgkjIHRoZSBhbnhpZXR5IGxldmVsLCB3ZSBoYXZlIHRoZSBmb2xsb3dpbmcgY29kZSB3aGljaCBzZXRzCgkjIHRoZSBWTFNNIGFuZCBCUkQgZnJvbSBhbiBleGlzdGluZyBhZGRyZXNzIGluIHRoZSBzYW1lIG5ldHdvcmtzCgkjCgkjIEdldCBhbGwgb2YgdGhlIGxpbmVzIHRoYXQgY29udGFpbiBpbmV0IGFkZHJlc3NlcyB3aXRoIGJyb2FkY2FzdAoJIwoJJElQIC1mIGluZXQgYWRkciBzaG93ICRpbnRlcmZhY2UgMj4gL2Rldi9udWxsIHwgZ3JlcCAnaW5ldC4qYnJkJyB8IHdoaWxlIHJlYWQgaW5ldCBjaWRyIHJlc3QgOyBkbwoJICAgIGNhc2UgJGNpZHIgaW4KCQkqLyopCgkJICAgIGlmIGluX25ldHdvcmsgJGV4dGVybmFsICRjaWRyOyB0aGVuCgkJCWVjaG8gIi8ke2NpZHIjKi99IGJyZCAkKGJyb2FkY2FzdGFkZHJlc3MgJGNpZHIpIgoJCQlicmVhawoJCSAgICBmaQoJCSAgICA7OwoJICAgIGVzYWMKCWRvbmUKICAgIH0KCiAgICBkb19vbmUoKQogICAgewoJdmFsPSQoYWRkcmVzc19kZXRhaWxzKQoKCSRJUCBhZGRyIGFkZCAke2V4dGVybmFsfSR7dmFsfSBkZXYgJGludGVyZmFjZSAkbGFiZWwKCVsgLW4gIiRhcnBpbmciIF0gJiYgcXQgJGFycGluZyAtVSAtYyAyIC1JICRpbnRlcmZhY2UgJGV4dGVybmFsCgllY2hvICIkZXh0ZXJuYWwgJGludGVyZmFjZSIgPj4gJFZBUkRJUi9uYXQKCVsgLW4gIiRsYWJlbCIgXSAmJiBsYWJlbD0id2l0aCAkbGFiZWwiCglwcm9ncmVzc19tZXNzYWdlICIgICBJUCBBZGRyZXNzICRleHRlcm5hbCBhZGRlZCB0byBpbnRlcmZhY2UgJGludGVyZmFjZSAkbGFiZWwiCiAgICB9CgogICAgcHJvZ3Jlc3NfbWVzc2FnZSAiQWRkaW5nIElQIEFkZHJlc3Nlcy4uLiIKCiAgICB3aGlsZSBbICQjIC1ndCAwIF07IGRvCglleHRlcm5hbD0kMQoJaW50ZXJmYWNlPSQyCglsYWJlbD0KCglpZiBbICIkaW50ZXJmYWNlIiAhPSAiJHtpbnRlcmZhY2UlOip9IiBdOyB0aGVuCgkgICAgbGFiZWw9IiR7aW50ZXJmYWNlIyo6fSIKCSAgICBpbnRlcmZhY2U9IiR7aW50ZXJmYWNlJToqfSIKCSAgICBsYWJlbD0ibGFiZWwgJGludGVyZmFjZTokbGFiZWwiCglmaQoKCXNoaWZ0IDIKCglsaXN0X3NlYXJjaCAkZXh0ZXJuYWwgJChmaW5kX2ludGVyZmFjZV9hZGRyZXNzZXMgJGludGVyZmFjZSkgfHwgZG9fb25lCiAgICBkb25lCn0KCiMKIyBEZXRlY3QgdGhlIGdhdGV3YXkgdGhyb3VnaCBhIFBQUCBvciBESENQLWNvbmZpZ3VyZWQgaW50ZXJmYWNlCiMKZGV0ZWN0X2R5bmFtaWNfZ2F0ZXdheSgpIHsgIyAkMSA9IGludGVyZmFjZQogICAgbG9jYWwgaW50ZXJmYWNlCiAgICBpbnRlcmZhY2U9JDEKICAgIGxvY2FsIEdBVEVXQVlTCiAgICBHQVRFV0FZUz0KICAgIGxvY2FsIGdhdGV3YXkKCiAgICBnYXRld2F5PSQocnVuX2ZpbmRnd19leGl0ICQxKTsKCiAgICBpZiBbIC16ICIkZ2F0ZXdheSIgXTsgdGhlbgoJZ2F0ZXdheT0kKCBmaW5kX3BlZXIgJCgkSVAgYWRkciBsaXN0ICRpbnRlcmZhY2UgKSApCiAgICBmaQoKICAgIGlmIFsgLXogIiRnYXRld2F5IiAtYSAtZiAvdmFyL2xpYi9kaGNwY2QvZGhjcGNkLSR7MX0uaW5mbyBdOyB0aGVuCglldmFsICQoZ3JlcCBeR0FURVdBWVM9ICAvdmFyL2xpYi9kaGNwY2QvZGhjcGNkLSR7MX0uaW5mbyAyPiAvZGV2L251bGwpCglbIC1uICIkR0FURVdBWVMiIF0gJiYgR0FURVdBWVM9JHtHQVRFV0FZUyUsKn0gJiYgZ2F0ZXdheT0kR0FURVdBWVMKICAgIGZpCgogICAgaWYgWyAteiAiJGdhdGV3YXkiIC1hIC1mIC92YXIvbGliL2RoY3AvZGhjbGllbnQtJHsxfS5sZWFzZSBdOyB0aGVuCglnYXRld2F5PSQoZ3JlcCAnb3B0aW9uIHJvdXRlcnMnIC92YXIvbGliL2RoY3AvZGhjbGllbnQtJHsxfS5sZWFzZSB8IHRhaWwgLW4gMSB8IHdoaWxlIHJlYWQgajEgajIgZ2F0ZXdheTsgZG8gZWNobyAkZ2F0ZXdheSA7IHJldHVybiAwOyBkb25lKQogICAgZmkKCiAgICBbIC1uICIkZ2F0ZXdheSIgXSAmJiBlY2hvICRnYXRld2F5Cn0KCiMKIyBEZXRlY3QgdGhlIGdhdGV3YXkgdGhyb3VnaCBhbiBpbnRlcmZhY2UKIwpkZXRlY3RfZ2F0ZXdheSgpICMgJDEgPSBpbnRlcmZhY2UKewogICAgbG9jYWwgaW50ZXJmYWNlCiAgICBpbnRlcmZhY2U9JDEKICAgIGxvY2FsIGdhdGV3YXkKICAgICMKICAgICMgRmlyc3QgYXNzdW1lIHRoYXQgdGhpcyBpcyBzb21lIHNvcnQgb2YgZHluYW1pYyBpbnRlcmZhY2UKICAgICMKICAgIGdhdGV3YXk9JCggZGV0ZWN0X2R5bmFtaWNfZ2F0ZXdheSAkaW50ZXJmYWNlICkKICAgICMKICAgICMgTWF5YmUgdGhlcmUncyBhIGRlZmF1bHQgcm91dGUgdGhyb3VnaCB0aGlzIGdhdGV3YXkgYWxyZWFkeQogICAgIwogICAgWyAtbiAiJGdhdGV3YXkiIF0gfHwgZ2F0ZXdheT0kKGZpbmRfZ2F0ZXdheSAkKCRJUCAtNCByb3V0ZSBsaXN0IGRldiAkaW50ZXJmYWNlIHwgZ3JlcCBeZGVmYXVsdCkpCiAgICAjCiAgICAjIExhc3QgaG9wZSAtLSBpcyB0aGVyZSBhIGxvYWQtYmFsYW5jaW5nIHJvdXRlIHRocm91Z2ggdGhlIGludGVyZmFjZT8KICAgICMKICAgIFsgLW4gIiRnYXRld2F5IiBdIHx8IGdhdGV3YXk9JChmaW5kX25leHRob3AgJGludGVyZmFjZSkKICAgICMKICAgICMgQmUgc3VyZSB3ZSBmb3VuZCBvbmUKICAgICMKICAgIFsgLW4gIiRnYXRld2F5IiBdICYmIGVjaG8gJGdhdGV3YXkKfQoKIwojIERpc2FibGUgSVBWNgojCmRpc2FibGVfaXB2NigpIHsKICAgIGxvY2FsIGZvbwogICAgZm9vPSIkKCRJUCAtZiBpbmV0NiBhZGRyIGxpc3QgMj4gL2Rldi9udWxsKSIKCiAgICBpZiBbIC1uICIkZm9vIiBdOyB0aGVuCglpZiBbIC14ICIkSVA2VEFCTEVTIiBdOyB0aGVuCgkgICAgJElQNlRBQkxFUyAtUCBGT1JXQVJEIERST1AKCSAgICAkSVA2VEFCTEVTIC1QIElOUFVUIERST1AKCSAgICAkSVA2VEFCTEVTIC1QIE9VVFBVVCBEUk9QCgkgICAgJElQNlRBQkxFUyAtRgoJICAgICRJUDZUQUJMRVMgLVgKCSAgICAkSVA2VEFCTEVTIC1BIE9VVFBVVCAtbyBsbyAtaiBBQ0NFUFQKCSAgICAkSVA2VEFCTEVTIC1BIElOUFVUIC1pIGxvIC1qIEFDQ0VQVAoJZWxzZQoJICAgIGVycm9yX21lc3NhZ2UgIldBUk5JTkc6IERJU0FCTEVfSVBWNj1ZZXMgaW4gc2hvcmV3YWxsLmNvbmYgYnV0IHRoaXMgc3lzdGVtIGRvZXMgbm90IGFwcGVhciB0byBoYXZlIGlwNnRhYmxlcyIKCWZpCiAgICBmaQp9CgojCiMgQ2xlYXIgdGhlIGN1cnJlbnQgdHJhZmZpYyBzaGFwaW5nIGNvbmZpZ3VyYXRpb24KIwoKZGVsZXRlX3RjMSgpCnsKICAgIGNsZWFyX29uZV90YygpIHsKICAgICAgICAkVEMgcWRpc2MgZGVsIGRldiAkMSByb290IDI+IC9kZXYvbnVsbAogICAgICAgICRUQyBxZGlzYyBkZWwgZGV2ICQxIGluZ3Jlc3MgMj4gL2Rldi9udWxsCgogICAgfQoKICAgIHJ1bl90Y2NsZWFyX2V4aXQKCiAgICBydW5faXAgbGluayBsaXN0IHwgXAogICAgd2hpbGUgcmVhZCBpbnggaW50ZXJmYWNlIGRldGFpbHM7IGRvCiAgICAgICAgY2FzZSAkaW54IGluCiAgICAgICAgICAgIFswLTldKikKICAgICAgICAgICAgICAgIGNsZWFyX29uZV90YyAke2ludGVyZmFjZSU6fQogICAgICAgICAgICAgICAgOzsKICAgICAgICAgICAgKikKICAgICAgICAgICAgICAgIDs7CiAgICAgICAgZXNhYwogICAgZG9uZQp9CgojCiMgRGV0ZWN0IGEgZGV2aWNlJ3MgTVRVIC0tIGVjaG9zIHRoZSBwYXNzZWQgZGV2aWNlJ3MgTVRVCiMKZ2V0X2RldmljZV9tdHUoKSAjICQxID0gZGV2aWNlCnsKICAgIGxvY2FsIG91dHB1dAogICAgb3V0cHV0PSIkKCRJUCBsaW5rIGxpc3QgZGV2ICQxIDI+IC9kZXYvbnVsbCkiICMgcXVvdGVzIHJlcXVpcmVkIGZvciAvYmluL2FzaAoKICAgIGlmIFsgLW4gIiRvdXRwdXQiIF07IHRoZW4KCWVjaG8gJChmaW5kX210dSAkb3V0cHV0KQogICAgZWxzZQoJZWNobyAxNTAwCiAgICBmaQp9CgojCiMgVmVyc2lvbiBvZiB0aGUgYWJvdmUgdGhhdCBkb2Vzbid0IGdlbmVyYXRlIGFueSBvdXRwdXQgZm9yIE1UVSAxNTAwLgojIEdlbmVyYXRlcyAnbXR1IDxtdHUrPicgb3RoZXJ3aXNlLCB3aGVyZSA8bXR1Kz4gaXMgdGhlIGRldmljZSdzIE1UVSArIDEwMAojCmdldF9kZXZpY2VfbXR1MSgpICMgJDEgPSBkZXZpY2UKewogICAgbG9jYWwgb3V0cHV0CiAgICBvdXRwdXQ9IiQoJElQIGxpbmsgbGlzdCBkZXYgJDEgMj4gL2Rldi9udWxsKSIgIyBxdW90ZXMgcmVxdWlyZWQgZm9yIC9iaW4vYXNoCiAgICBsb2NhbCBtdHUKCiAgICBpZiBbIC1uICIkb3V0cHV0IiBdOyB0aGVuCgltdHU9JChmaW5kX210dSAkb3V0cHV0KQoJaWYgWyAtbiAiJG10dSIgXTsgdGhlbgoJICAgIFsgJG10dSA9IDE1MDAgXSB8fCBlY2hvIG10dSAkKCgkbXR1ICsgMTAwKSkKCWZpCiAgICBmaQoKfQoKIwojIFVuZG8gY2hhbmdlcyB0byByb3V0aW5nCiMKdW5kb19yb3V0aW5nKCkgewoKICAgIGlmIFsgLXogIiRnX25vcm91dGVzIiAgXTsgdGhlbgoJIwoJIyBSZXN0b3JlIHJ0X3RhYmxlcyBkYXRhYmFzZQoJIwoJaWYgWyAtZiAke1ZBUkRJUn0vcnRfdGFibGVzIF07IHRoZW4KCSAgICBbIC13IC9ldGMvaXByb3V0ZTIvcnRfdGFibGUgLWEgLXogIiRLRUVQX1JUX1RBQkxFUyIgXSAmJiBjcCAtZiAke1ZBUkRJUn0vcnRfdGFibGVzIC9ldGMvaXByb3V0ZTIvICYmIHByb2dyZXNzX21lc3NhZ2UgIi9ldGMvaXByb3V0ZTIvcnRfdGFibGVzIGRhdGFiYXNlIHJlc3RvcmVkIgoJICAgIHJtIC1mICR7VkFSRElSfS9ydF90YWJsZXMKCWZpCgkjCgkjIFJlc3RvcmUgdGhlIHJlc3Qgb2YgdGhlIHJvdXRpbmcgdGFibGUKCSMKCWlmIFsgLWYgJHtWQVJESVJ9L3VuZG9fcm91dGluZyBdOyB0aGVuCgkgICAgLiAke1ZBUkRJUn0vdW5kb19yb3V0aW5nCgkgICAgcHJvZ3Jlc3NfbWVzc2FnZSAiU2hvcmV3YWxsLWdlbmVyYXRlZCByb3V0aW5nIHRhYmxlcyBhbmQgcm91dGluZyBydWxlcyByZW1vdmVkIgoJICAgIHJtIC1mICR7VkFSRElSfS91bmRvX3JvdXRpbmcKCWZpCiAgICBmaQoKfQoKIwojIFJlc3RvcmUgdGhlIGRlZmF1bHQgcm91dGUgdGhhdCB3YXMgaW4gcGxhY2UgYmVmb3JlIHRoZSBpbml0aWFsICdzaG9yZXdhbGwgc3RhcnQnCiMKcmVzdG9yZV9kZWZhdWx0X3JvdXRlKCkgewogICAgaWYgWyAteiAiJGdfbm9yb3V0ZXMiIC1hIC1mICR7VkFSRElSfS9kZWZhdWx0X3JvdXRlIF07IHRoZW4KCWxvY2FsIGRlZmF1bHRfcm91dGUKCWRlZmF1bHRfcm91dGU9Cglsb2NhbCByb3V0ZQoJbG9jYWwgcmVzdWx0CglyZXN1bHQ9MQoKCXdoaWxlIHJlYWQgcm91dGUgOyBkbwoJICAgIGNhc2UgJHJvdXRlIGluCgkJZGVmYXVsdCopCgkJICAgIGlmIFsgLW4gIiRkZWZhdWx0X3JvdXRlIiBdOyB0aGVuCgkJCWNhc2UgIiRkZWZhdWx0X3JvdXRlIiBpbgoJCQkgICAgKm1ldHJpYyopCgkJICAgICAgICAgICAgICAgICMKCQkgICAgICAgICAgICAgICAgIyBEb24ndCByZXN0b3JlIGEgcm91dGUgd2l0aCBhIG1ldHJpYyAtLSB3ZSBvbmx5IHJlcGxhY2UgdGhlIG9uZSB3aXRoIG1ldHJpYyA9PSAwCgkJICAgICAgICAgICAgICAgICMKCQkJCXF0ICRJUCAtNCByb3V0ZSBkZWxldGUgZGVmYXVsdCBtZXRyaWMgMCAmJiBcCgkJCQkgICAgcHJvZ3Jlc3NfbWVzc2FnZSAiRGVmYXVsdCBSb3V0ZSB3aXRoIG1ldHJpYyAwIGRlbGV0ZWQiCgkJCQk7OwoJCQkgICAgKikKCQkJCXF0ICRJUCAtNCByb3V0ZSByZXBsYWNlICRkZWZhdWx0X3JvdXRlICYmIFwKCQkJCSAgICByZXN1bHQ9MCAmJiBcCgkJCQkgICAgcHJvZ3Jlc3NfbWVzc2FnZSAiRGVmYXVsdCBSb3V0ZSAoJHtkZWZhdWx0X3JvdXRlIyB9KSByZXN0b3JlZCIKCQkJCTs7CgkJCWVzYWMKCgkJCWJyZWFrCgkJICAgIGZpCgoJCSAgICBkZWZhdWx0X3JvdXRlPSIkZGVmYXVsdF9yb3V0ZSAkcm91dGUiCgkJICAgIDs7CgkJKikKCQkgICAgZGVmYXVsdF9yb3V0ZT0iJGRlZmF1bHRfcm91dGUgJHJvdXRlIgoJCSAgICA7OwoJICAgIGVzYWMKCWRvbmUgPCAke1ZBUkRJUn0vZGVmYXVsdF9yb3V0ZQoKCXJtIC1mICR7VkFSRElSfS9kZWZhdWx0X3JvdXRlCiAgICBmaQoKICAgIHJldHVybiAkcmVzdWx0Cn0KCiMKIyBEZXRlcm1pbmUgdGhlIE1BQyBhZGRyZXNzIG9mIHRoZSBwYXNzZWQgSVAgdGhyb3VnaCB0aGUgcGFzc2VkIGludGVyZmFjZQojCmZpbmRfbWFjKCkgIyAkMSA9IElQIGFkZHJlc3MsICQyID0gaW50ZXJmYWNlCnsKICAgIGlmIGludGVyZmFjZV9pc191c2FibGUgJDIgOyB0aGVuCglxdCBwaW5nIC1uYyAxIC10IDIgLUkgJDIgJDEKCglsb2NhbCByZXN1bHQKCXJlc3VsdD0kKCRJUCBuZWlnaCBsaXN0IHwgIGF3ayAiL14kMSAvIHtwcmludCBcJDV9IikKCgljYXNlICRyZXN1bHQgaW4KCSAgICBcPCpcPikKCQk7OwoJICAgICopCgkJWyAtbiAiJHJlc3VsdCIgXSAmJiBlY2hvICRyZXN1bHQKCQk7OwoJZXNhYwogICAgZmkKfQoKIwojIEZsdXNoIHRoZSBjb25udHJhY2sgdGFibGUgaWYgJGdfcHVyZ2UgaXMgbm9uLWVtcHR5CiMKY29uZGl0aW9uYWxseV9mbHVzaF9jb25udHJhY2soKSB7CgogICAgaWYgWyAtbiAiJGdfcHVyZ2UiIF07IHRoZW4KCWlmIFsgLW4gJChteXdoaWNoIGNvbm50cmFjaykgXTsgdGhlbgogICAgICAgICAgICBjb25udHJhY2sgLUYKCWVsc2UKICAgICAgICAgICAgZXJyb3JfbWVzc2FnZSAiV0FSTklORzogVGhlICctcCcgb3B0aW9uIHJlcXVpcmVzIHRoZSBjb25udHJhY2sgdXRpbGl0eSB3aGljaCBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgaW5zdGFsbGVkIG9uIHRoaXMgc3lzdGVtIgoJZmkKICAgIGZpCn0KCiMKIyBDbGVhciBQcm94eSBBcnAKIwpkZWxldGVfcHJveHlhcnAoKSB7CiAgICBpZiBbIC1mICR7VkFSRElSfS9wcm94eWFycCBdOyB0aGVuCgl3aGlsZSByZWFkIGFkZHJlc3MgaW50ZXJmYWNlIGV4dGVybmFsIGhhdmVyb3V0ZTsgZG8KCSAgICBxdCBhcnAgLWkgJGV4dGVybmFsIC1kICRhZGRyZXNzIHB1YgoJICAgIFsgLXogIiR7aGF2ZXJvdXRlfSR7Z19ub3JvdXRlc30iIF0gJiYgcXQgJElQIC00IHJvdXRlIGRlbCAkYWRkcmVzcyBkZXYgJGludGVyZmFjZQoJICAgIGY9L3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvJGludGVyZmFjZS9wcm94eV9hcnAKCSAgICBbIC1mICRmIF0gJiYgZWNobyAwID4gJGYKCWRvbmUgPCAke1ZBUkRJUn0vcHJveHlhcnAKICAgIGZpCgogICAgcm0gLWYgJHtWQVJESVJ9L3Byb3h5YXJwCn0KCiMKIyBSZW1vdmUgYWxsIFNob3Jld2FsbC1hZGRlZCBydWxlcwojCmNsZWFyX2ZpcmV3YWxsKCkgewogICAgc3RvcF9maXJld2FsbAoKICAgIHNldHBvbGljeSBJTlBVVCBBQ0NFUFQKICAgIHNldHBvbGljeSBGT1JXQVJEIEFDQ0VQVAogICAgc2V0cG9saWN5IE9VVFBVVCBBQ0NFUFQKCiAgICBydW5faXB0YWJsZXMgLUYKCiAgICBlY2hvIDEgPiAvcHJvYy9zeXMvbmV0L2lwdjQvaXBfZm9yd2FyZAoKICAgIGlmIFsgLW4gIiRESVNBQkxFX0lQVjYiIF07IHRoZW4KCWlmIFsgLXggJElQNlRBQkxFUyBdOyB0aGVuCiAgICAJICAgICRJUDZUQUJMRVMgLVAgSU5QVVQgICBBQ0NFUFQgMj4gL2Rldi9udWxsCgkgICAgJElQNlRBQkxFUyAtUCBPVVRQVVQgIEFDQ0VQVCAyPiAvZGV2L251bGwKCSAgICAkSVA2VEFCTEVTIC1QIEZPUldBUkQgQUNDRVBUIDI+IC9kZXYvbnVsbAoJZmkKICAgIGZpCgogICAgcnVuX2NsZWFyX2V4aXQKCiAgICBzZXRfc3RhdGUgIkNsZWFyZWQiCgogICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCBDbGVhcmVkIgp9CgojCiMgSXNzdWUgYSBtZXNzYWdlIGFuZCBzdG9wL3Jlc3RvcmUgdGhlIGZpcmV3YWxsCiMKZmF0YWxfZXJyb3IoKQp7CiAgICBlY2hvICIgICBFUlJPUjogJEAiID4mMgoKICAgIGlmIFsgJExPR19WRVJCT1NJVFkgLWdlIDAgXTsgdGhlbgogICAgICAgIHRpbWVzdGFtcD0iJChkYXRlICsnJV9iICVkICVUJykgIgogICAgICAgIGVjaG8gIiR7dGltZXN0YW1wfSAgRVJST1I6ICRAIiA+PiAkU1RBUlRVUF9MT0cKICAgIGZpCgogICAgc3RvcF9maXJld2FsbAogICAgWyAtbiAiJFRFTVBGSUxFIiBdICYmIHJtIC1mICRURU1QRklMRQogICAgZXhpdCAyCn0KCiMKIyBJc3N1ZSBhIG1lc3NhZ2UgYW5kIHN0b3AKIwpzdGFydHVwX2Vycm9yKCkgIyAkKiA9IEVycm9yIE1lc3NhZ2UKewogICAgZWNobyAiICAgRVJST1I6ICRAOiBGaXJld2FsbCBzdGF0ZSBub3QgY2hhbmdlZCIgPiYyCgogICAgaWYgWyAkTE9HX1ZFUkJPU0lUWSAtZ2UgMCBdOyB0aGVuCiAgICAgICAgdGltZXN0YW1wPSIkKGRhdGUgKyclX2IgJWQgJVQnKSAiCiAgICAgICAgZWNobyAiJHt0aW1lc3RhbXB9ICBFUlJPUjogJEAiID4+ICRTVEFSVFVQX0xPRwogICAgZmkKCiAgICBjYXNlICRDT01NQU5EIGluCiAgICAgICAgc3RhcnQpCgkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHN0YXJ0IGZhaWxlZDpGaXJld2FsbCBzdGF0ZSBub3QgY2hhbmdlZCIKCSAgICA7OwoJcmVzdGFydCkKCSAgICBsb2dnZXIgLXAga2Vybi5lcnIgIkVSUk9SOiRnX3Byb2R1Y3QgcmVzdGFydCBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiCgkgICAgOzsKCXJlc3RvcmUpCgkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHJlc3RvcmUgZmFpbGVkOkZpcmV3YWxsIHN0YXRlIG5vdCBjaGFuZ2VkIgoJICAgIDs7CiAgICBlc2FjCgogICAgaWYgWyAkTE9HX1ZFUkJPU0lUWSAtZ2UgMCBdOyB0aGVuCiAgICAgICAgdGltZXN0YW1wPSIkKGRhdGUgKyclX2IgJWQgJVQnKSAiCgoJY2FzZSAkQ09NTUFORCBpbgoJICAgIHN0YXJ0KQoJCWVjaG8gIiR7dGltZXN0YW1wfSAgRVJST1I6JGdfcHJvZHVjdCBzdGFydCBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiID4+ICRTVEFSVFVQX0xPRwoJCTs7CgkgICAgcmVzdGFydCkKCQllY2hvICIke3RpbWVzdGFtcH0gIEVSUk9SOiRnX3Byb2R1Y3QgcmVzdGFydCBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiID4+ICRTVEFSVFVQX0xPRwoJCTs7CgkgICAgcmVzdG9yZSkKCQllY2hvICIke3RpbWVzdGFtcH0gIEVSUk9SOiRnX3Byb2R1Y3QgcmVzdG9yZSBmYWlsZWQ6RmlyZXdhbGwgc3RhdGUgbm90IGNoYW5nZWQiID4+ICRTVEFSVFVQX0xPRwoJCTs7Cgllc2FjCiAgICBmaQoKICAgIGtpbGwgJCQKICAgIGV4aXQgMgp9CgojCiMgUnVuIGlwdGFibGVzIGFuZCBpZiBhbiBlcnJvciBvY2N1cnMsIHN0b3AvcmVzdG9yZSB0aGUgZmlyZXdhbGwKIwpydW5faXB0YWJsZXMoKQp7CiAgICBsb2NhbCBzdGF0dXMKCiAgICB3aGlsZSBbIDEgXTsgZG8KCSRJUFRBQkxFUyAkQAoJc3RhdHVzPSQ/CglbICRzdGF0dXMgLW5lIDQgXSAmJiBicmVhawogICAgZG9uZQoKICAgIGlmIFsgJHN0YXR1cyAtbmUgMCBdOyB0aGVuCiAgICAgICAgZXJyb3JfbWVzc2FnZSAiRVJST1I6IENvbW1hbmQgXCIkSVBUQUJMRVMgJEBcIiBGYWlsZWQiCglzdG9wX2ZpcmV3YWxsCiAgICAgICAgZXhpdCAyCiAgICBmaQp9CgojCiMgUnVuIGlwdGFibGVzIHJldHJ5aW5nIGV4aXQgc3RhdHVzIDQKIwpkb19pcHRhYmxlcygpCnsKICAgIGxvY2FsIHN0YXR1cwoKICAgIHdoaWxlIFsgMSBdOyBkbwoJJElQVEFCTEVTICRACglzdGF0dXM9JD8KCVsgJHN0YXR1cyAtbmUgNCBdICYmIHJldHVybiAkc3RhdHVzOwogICAgZG9uZQp9CgojCiMgUnVuIGlwdGFibGVzIGFuZCBpZiBhbiBlcnJvciBvY2N1cnMsIHN0b3AvcmVzdG9yZSB0aGUgZmlyZXdhbGwKIwpydW5faXAoKQp7CiAgICBpZiAhICRJUCAtNCAkQDsgdGhlbgoJZXJyb3JfbWVzc2FnZSAiRVJST1I6IENvbW1hbmQgXCIkSVAgLTQgJEBcIiBGYWlsZWQiCglzdG9wX2ZpcmV3YWxsCglleGl0IDIKICAgIGZpCn0KCiMKIyBSdW4gdGMgYW5kIGlmIGFuIGVycm9yIG9jY3Vycywgc3RvcC9yZXN0b3JlIHRoZSBmaXJld2FsbAojCnJ1bl90YygpIHsKICAgIGlmICEgJFRDICRAIDsgdGhlbgoJZXJyb3JfbWVzc2FnZSAiRVJST1I6IENvbW1hbmQgXCIkVEMgJEBcIiBGYWlsZWQiCglzdG9wX2ZpcmV3YWxsCglleGl0IDIKICAgIGZpCn0KCiMKIyBHZXQgYSBsaXN0IG9mIGFsbCBjb25maWd1cmVkIGJyb2FkY2FzdCBhZGRyZXNzZXMgb24gdGhlIHN5c3RlbQojCmdldF9hbGxfYmNhc3RzKCkKewogICAgJElQIC1mIGluZXQgYWRkciBzaG93IDI+IC9kZXYvbnVsbCB8IGdyZXAgJ2luZXQuKmJyZCcgfCBncmVwIC12ICcvMzIgJyB8IHNlZCAncy9pbmV0LipicmQgLy87IHMvc2NvcGUuKi8vOycgfCBzb3J0IC11Cn0KCiMKIyBSdW4gdGhlIC5pcHRhYmxlc19yZXN0b3JlX2lucHV0IGFzIGEgc2V0IG9mIGRpc2NyZXRlIGlwdGFibGVzIGNvbW1hbmRzCiMKZGVidWdfcmVzdG9yZV9pbnB1dCgpIHsKICAgIGxvY2FsIGZpcnN0IHNlY29uZCByZXN0IHRhYmxlIGNoYWluCiAgICAjCiAgICAjIENsZWFyIHRoZSBydWxlc2V0CiAgICAjCiAgICBxdDEgJElQVEFCTEVTIC10IG1hbmdsZSAtRgogICAgcXQxICRJUFRBQkxFUyAtdCBtYW5nbGUgLVgKCiAgICBmb3IgY2hhaW4gaW4gUFJFUk9VVElORyBJTlBVVCBGT1JXQVJEIFBPU1RST1VUSU5HOyBkbwoJcXQxICRJUFRBQkxFUyAtdCBtYW5nbGUgLVAgJGNoYWluIEFDQ0VQVAogICAgZG9uZQoKICAgIHF0MSAkSVBUQUJMRVMgLXQgcmF3ICAgIC1GCiAgICBxdDEgJElQVEFCTEVTIC10IHJhdyAgICAtWAoKICAgIGZvciBjaGFpbiBpbiBQUkVST1VUSU5HIE9VVFBVVDsgZG8KCXF0MSAkSVBUQUJMRVMgLXQgcmF3IC1QICRjaGFpbiBBQ0NFUFQKICAgIGRvbmUKCiAgICBydW5faXB0YWJsZXMgLXQgbmF0IC1GCiAgICBydW5faXB0YWJsZXMgLXQgbmF0IC1YCgogICAgZm9yIGNoYWluIGluIFBSRVJPVVRJTkcgUE9TVFJPVVRJTkcgT1VUUFVUOyBkbwoJcXQxICRJUFRBQkxFUyAtdCBuYXQgLVAgJGNoYWluIEFDQ0VQVAogICAgZG9uZQoKICAgIHF0MSAkSVBUQUJMRVMgLXQgZmlsdGVyIC1GCiAgICBxdDEgJElQVEFCTEVTIC10IGZpbHRlciAtWAoKICAgIGZvciBjaGFpbiBpbiBJTlBVVCBGT1JXQVJEIE9VVFBVVDsgZG8KCXF0MSAkSVBUQUJMRVMgLXQgZmlsdGVyIC1QICRjaGFpbiAtUCBBQ0NFUFQKICAgIGRvbmUKCiAgICB3aGlsZSByZWFkIGZpcnN0IHNlY29uZCByZXN0OyBkbwoJY2FzZSAkZmlyc3QgaW4KCSAgICAtKikKCQkjCgkJIyBXZSBjYW4ndCBjYWxsIHJ1bl9pcHRhYmxlcygpIGhlcmUgYmVjYXVzZSB0aGUgcnVsZXMgbWF5IGNvbnRhaW4gcXVvdGVkIHN0cmluZ3MKCQkjCgkJZXZhbCAkSVBUQUJMRVMgLXQgJHRhYmxlICRmaXJzdCAkc2Vjb25kICRyZXN0CgoJCWlmIFsgJD8gLW5lIDAgXTsgdGhlbgoJCSAgICBlcnJvcl9tZXNzYWdlICJFUlJPUjogQ29tbWFuZCBcIiRJUFRBQkxFUyAkZmlyc3QgJHNlY29uZCAkcmVzdFwiIEZhaWxlZCIKCQkgICAgc3RvcF9maXJld2FsbAoJCSAgICBleGl0IDIKCQlmaQoJCTs7CgkgICAgOiopCgkJY2hhaW49JHtmaXJzdCM6fQoKCQlpZiBbICJ4JHNlY29uZCIgPSB4LSBdOyB0aGVuCgkJICAgIGRvX2lwdGFibGVzIC10ICR0YWJsZSAtTiAkY2hhaW4KCQllbHNlCgkJICAgIGRvX2lwdGFibGVzIC10ICR0YWJsZSAtUCAkY2hhaW4gJHNlY29uZAoJCWZpCgoJCWlmIFsgJD8gLW5lIDAgXTsgdGhlbgoJCSAgICBlcnJvcl9tZXNzYWdlICJFUlJPUjogQ29tbWFuZCBcIiRJUFRBQkxFUyAkZmlyc3QgJHNlY29uZCAkcmVzdFwiIEZhaWxlZCIKCQkgICAgc3RvcF9maXJld2FsbAoJCSAgICBleGl0IDIKCQlmaQoJCTs7CgkgICAgIwoJICAgICMgVGhpcyBncm90ZXNxdWUgaGFjayB3aXRoIHRoZSB0YWJsZSBuYW1lcyB3b3JrcyBhcm91bmQgYSBidWcvZmVhdHVyZSB3aXRoIGFzaAoJICAgICMKCSAgICAnKidyYXcpCgkJdGFibGU9cmF3CgkJOzsKCSAgICAnKidtYW5nbGUpCgkJdGFibGU9bWFuZ2xlCgkJOzsKCSAgICAnKiduYXQpCgkJdGFibGU9bmF0CgkJOzsKCSAgICAnKidmaWx0ZXIpCgkJdGFibGU9ZmlsdGVyCgkJOzsKCWVzYWMKICAgIGRvbmUKfQoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyBFbmQgb2YgZnVuY3Rpb25zIGluIC91c3Ivc2hhcmUvc2hvcmV3YWxsL3Byb2cuaGVhZGVyCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMgICBGdW5jdGlvbnMgaW1wb3J0ZWQgZnJvbSAvdXNyL3NoYXJlL3Nob3Jld2FsbC9saWIuY29tbW9uCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCgojCiMgR2V0IHRoZSBTaG9yZXdhbGwgdmVyc2lvbiBvZiB0aGUgcGFzc2VkIHNjcmlwdAojCmdldF9zY3JpcHRfdmVyc2lvbigpIHsgIyAkMSA9IHNjcmlwdAogICAgbG9jYWwgdGVtcAogICAgbG9jYWwgdmVyc2lvbgogICAgbG9jYWwgaWZzCiAgICBsb2NhbCBkaWdpdHMKCiAgICB0ZW1wPSQoICRTSE9SRVdBTExfU0hFTEwgJDEgdmVyc2lvbiB8IHNlZCAncy8tLiovLycgKQoKICAgIGlmIFsgJD8gLW5lIDAgXTsgdGhlbgoJdmVyc2lvbj0wCiAgICBlbHNlCglpZnM9JElGUwoJSUZTPS4KCXRlbXA9JChlY2hvICR0ZW1wKQoJSUZTPSRpZnMKCWRpZ2l0cz0wCgoJZm9yIHRlbXAgaW4gJHRlbXA7IGRvCgkgICAgdmVyc2lvbj0ke3ZlcnNpb259JChwcmludGYgJyUwMmQnICR0ZW1wKQoJICAgIGRpZ2l0cz0kKCgkZGlnaXRzICsgMSkpCgkgICAgWyAkZGlnaXRzIC1lcSAzIF0gJiYgYnJlYWsKCWRvbmUKICAgIGZpCgogICAgZWNobyAkdmVyc2lvbgp9CgojCiMgRG8gcmVxdWlyZWQgZXhwb3J0cyBvciBjcmVhdGUgdGhlIHJlcXVpcmVkIG9wdGlvbiBzdHJpbmcgYW5kIHJ1biB0aGUgcGFzc2VkIHNjcmlwdCB1c2luZwojICRTSE9SRVdBTExfU0hFTEwKIwpydW5faXQoKSB7CiAgICBsb2NhbCBzY3JpcHQKICAgIGxvY2FsIG9wdGlvbnMKICAgIGxvY2FsIHZlcnNpb24KCiAgICBleHBvcnQgVkFSRElSCgogICAgc2NyaXB0PSQxCiAgICBzaGlmdAoKICAgIHZlcnNpb249JChnZXRfc2NyaXB0X3ZlcnNpb24gJHNjcmlwdCkKCiAgICBpZiBbICR2ZXJzaW9uIC1sdCAwNDA0MDggXTsgdGhlbgoJIwoJIyBPbGQgc2NyaXB0IHRoYXQgZG9lc24ndCB1bmRlcnN0YW5kIDQuNC44IHNjcmlwdCBvcHRpb25zCgkjCglleHBvcnQgUkVTVE9SRUZJTEUKCWV4cG9ydCBWRVJCT1NJVFkKCWV4cG9ydCBOT1JPVVRFUz0kZ19ub3JvdXRlcwoJZXhwb3J0IFBVUkdFPSRnX3B1cmdlCglleHBvcnQgVElNRVNUQU1QPSRnX3RpbWVzdGFtcAoJZXhwb3J0IFJFQ09WRVJJTkc9JGdfcmVjb3ZlcmluZwoKCWlmIFsgIiRnX3Byb2R1Y3QiICE9IFNob3Jld2FsbCBdOyB0aGVuCgkgICAgIwoJICAgICMgU2hvcmV3YWxsIExpdGUKCSAgICAjCgkgICAgZXhwb3J0IExPR0ZPUk1BVAoJICAgIGV4cG9ydCBJUFRBQkxFUwoJZmkKICAgIGVsc2UKCSMKCSMgNC40Ljggb3IgbGF0ZXIgLS0gbm8gYWRkaXRpb25hbCBleHBvcnRzIHJlcXVpcmVkCgkjCglpZiBbIHgkMSA9IHh0cmFjZSAtbyB4JDEgPSB4ZGVidWcgXTsgdGhlbgoJICAgIG9wdGlvbnM9IiQxIC0iCgkgICAgc2hpZnQ7CgllbHNlCgkgICAgb3B0aW9ucz0nLScKCWZpCgoJWyAtbiAiJGdfbm9yb3V0ZXMiIF0gICAmJiBvcHRpb25zPSR7b3B0aW9uc31uCglbIC1uICIkZ190aW1lc3RhbXAiIF0gICYmIG9wdGlvbnM9JHtvcHRpb25zfXQKCVsgLW4gIiRnX3B1cmdlIiBdICAgICAgJiYgb3B0aW9ucz0ke29wdGlvbnN9cAoJWyAtbiAiJGdfcmVjb3ZlcmluZyIgXSAmJiBvcHRpb25zPSR7b3B0aW9uc31yCgoJb3B0aW9ucz0iJHtvcHRpb25zfVYgJFZFUkJPU0lUWSIKCglbIC1uICIkUkVTVE9SRUZJTEUiIF0gJiYgb3B0aW9ucz0iJHtvcHRpb25zfSAtUiAkUkVTVE9SRUZJTEUiCiAgICBmaQoKICAgICRTSE9SRVdBTExfU0hFTEwgJHNjcmlwdCAkb3B0aW9ucyAkQAp9CgojCiMgTWVzc2FnZSB0byBzdGRlcnIKIwplcnJvcl9tZXNzYWdlKCkgIyAkKiA9IEVycm9yIE1lc3NhZ2UKewogICBlY2hvICIgICAkQCIgPiYyCn0KCiMKIyBTcGxpdCBhIGNvbG9uLXNlcGFyYXRlZCBsaXN0IGludG8gYSBzcGFjZS1zZXBhcmF0ZWQgbGlzdAojCnNwbGl0KCkgewogICAgbG9jYWwgaWZzCiAgICBpZnM9JElGUwogICAgSUZTPToKICAgIGVjaG8gJCoKICAgIElGUz0kaWZzCn0KCiMKIyBTZWFyY2ggYSBsaXN0IGxvb2tpbmcgZm9yIGEgbWF0Y2ggLS0gcmV0dXJucyB6ZXJvIGlmIGEgbWF0Y2ggZm91bmQKIyAxIG90aGVyd2lzZQojCmxpc3Rfc2VhcmNoKCkgIyAkMSA9IGVsZW1lbnQgdG8gc2VhcmNoIGZvciAsICQyLSRuID0gbGlzdAp7CiAgICBsb2NhbCBlCiAgICBlPSQxCgogICAgd2hpbGUgWyAkIyAtZ3QgMSBdOyBkbwoJc2hpZnQKCVsgIngkZSIgPSAieCQxIiBdICYmIHJldHVybiAwCiAgICBkb25lCgogICAgcmV0dXJuIDEKfQoKIwojIFN1cHByZXNzIGFsbCBvdXRwdXQgZm9yIGEgY29tbWFuZAojCnF0KCkKewogICAgIiRAIiA+L2Rldi9udWxsIDI+JjEKfQoKcXQxKCkKewogICAgbG9jYWwgc3RhdHVzCgogICAgd2hpbGUgWyAxIF07IGRvCgkiJEAiID4vZGV2L251bGwgMj4mMQoJc3RhdHVzPSQ/CglbICRzdGF0dXMgLW5lIDQgXSAmJiByZXR1cm4gJHN0YXR1cwogICAgZG9uZQp9CgojCiMgRGV0ZXJtaW5lIGlmIFNob3Jld2FsbCBpcyAicnVubmluZyIKIwpzaG9yZXdhbGxfaXNfc3RhcnRlZCgpIHsKICAgIHF0ICRJUFRBQkxFUyAtTCBzaG9yZXdhbGwgLW4KfQoKIwojIEVjaG9zIHRoZSBmdWxseS1xdWFsaWZpZWQgbmFtZSBvZiB0aGUgY2FsbGluZyBzaGVsbCBwcm9ncmFtCiMKbXlfcGF0aG5hbWUoKSB7CiAgICBjZCAkKGRpcm5hbWUgJDApCiAgICBlY2hvICRQV0QvJChiYXNlbmFtZSAkMCkKfQoKIwojIFNvdXJjZSBhIHVzZXIgZXhpdCBmaWxlIGlmIGl0IGV4aXN0cwojCnJ1bl91c2VyX2V4aXQoKSAjICQxID0gZmlsZSBuYW1lCnsKICAgIGxvY2FsIHVzZXJfZXhpdAogICAgdXNlcl9leGl0PSQoZmluZF9maWxlICQxKQoKICAgIGlmIFsgLWYgJHVzZXJfZXhpdCBdOyB0aGVuCglwcm9ncmVzc19tZXNzYWdlICJQcm9jZXNzaW5nICR1c2VyX2V4aXQgLi4uIgoJLiAkdXNlcl9leGl0CiAgICBmaQp9CgojCiMgTG9hZCBhIEtlcm5lbCBNb2R1bGUgLS0gYXNzdW1lcyB0aGF0IHRoZSB2YXJpYWJsZSAnbW9kdWxlZGlyZWN0b3JpZXMnIGNvbnRhaW5zCiMgICAgICAgICAgICAgICAgICAgICAgICAgYSBzcGFjZS1zZXBhcmF0ZWQgbGlzdCBvZiBkaXJlY3RvcmllcyB0byBzZWFyY2ggZm9yCiMgICAgICAgICAgICAgICAgICAgICAgICAgdGhlIG1vZHVsZSBhbmQgdGhhdCAnbW9kdWxlbG9hZGVyJyBjb250YWlucyB0aGUKIyAgICAgICAgICAgICAgICAgICAgICAgICBtb2R1bGUgbG9hZGVyIGNvbW1hbmQuCiMKbG9hZG1vZHVsZSgpICMgJDEgPSBtb2R1bGUgbmFtZSwgJDIgLSAqIGFyZ3VtZW50cwp7CiAgICBsb2NhbCBtb2R1bGVuYW1lCiAgICBtb2R1bGVuYW1lPSQxCiAgICBsb2NhbCBtb2R1bGVmaWxlCiAgICBsb2NhbCBzdWZmaXgKCiAgICBpZiAhIGxpc3Rfc2VhcmNoICRtb2R1bGVuYW1lICRET05UX0xPQUQgJE1PRFVMRVM7IHRoZW4KCXNoaWZ0CgoJZm9yIHN1ZmZpeCBpbiAkTU9EVUxFX1NVRkZJWCA7IGRvCgkgICAgZm9yIGRpcmVjdG9yeSBpbiAkbW9kdWxlZGlyZWN0b3JpZXM7IGRvCgkJbW9kdWxlZmlsZT0kZGlyZWN0b3J5LyR7bW9kdWxlbmFtZX0uJHtzdWZmaXh9CgoJCWlmIFsgLWYgJG1vZHVsZWZpbGUgXTsgdGhlbgoJCSAgICBjYXNlICRtb2R1bGVsb2FkZXIgaW4KCQkJaW5zbW9kKQoJCQkgICAgaW5zbW9kICRtb2R1bGVmaWxlICQqCgkJCSAgICA7OwoJCQkqKQoJCQkgICAgbW9kcHJvYmUgJG1vZHVsZW5hbWUgJCoKCQkJICAgIDs7CgkJICAgIGVzYWMKCQkgICAgYnJlYWsgMgoJCWZpCgkgICAgZG9uZQoJZG9uZQogICAgZmkKfQoKIwojIFJlbG9hZCB0aGUgTW9kdWxlcwojCnJlbG9hZF9rZXJuZWxfbW9kdWxlcygpIHsKCiAgICBsb2NhbCBzYXZlX21vZHVsZXNfZGlyCiAgICBzYXZlX21vZHVsZXNfZGlyPSRNT0RVTEVTRElSCiAgICBsb2NhbCBkaXJlY3RvcnkKICAgIGxvY2FsIG1vZHVsZWRpcmVjdG9yaWVzCiAgICBtb2R1bGVkaXJlY3Rvcmllcz0KICAgIGxvY2FsIG1vZHVsZWxvYWRlcgogICAgbW9kdWxlbG9hZGVyPW1vZHByb2JlCiAgICBsb2NhbCB1bmFtZQoKICAgIGlmICEgcXQgbXl3aGljaCBtb2Rwcm9iZTsgdGhlbgoJbW9kdWxlbG9hZGVyPWluc21vZAogICAgZmkKCiAgICBbIC1uICIke01PRFVMRV9TVUZGSVg6PW8gZ3oga28gby5neiBrby5nen0iIF0KCiAgICBbIC16ICIkTU9EVUxFU0RJUiIgXSAmJiBcCgl1bmFtZT0kKHVuYW1lIC1yKSAmJiBcCglNT0RVTEVTRElSPS9saWIvbW9kdWxlcy8kdW5hbWUva2VybmVsL25ldC9pcHY0L25ldGZpbHRlcjovbGliL21vZHVsZXMvJHVuYW1lL2tlcm5lbC9uZXQvbmV0ZmlsdGVyOi9saWIvbW9kdWxlcy8kdW5hbWUva2VybmVsL25ldC9zY2hlZDovbGliL21vZHVsZXMvJHVuYW1lL2V4dHJhOi9saWIvbW9kdWxlcy8kdW5hbWUvZXh0cmEvaXBzZXQKCiAgICBNT0RVTEVTPSQobHNtb2QgfCBjdXQgLWQgJyAnIC1mMSkKCiAgICBmb3IgZGlyZWN0b3J5IGluICQoc3BsaXQgJE1PRFVMRVNESVIpOyBkbwoJWyAtZCAkZGlyZWN0b3J5IF0gJiYgbW9kdWxlZGlyZWN0b3JpZXM9IiRtb2R1bGVkaXJlY3RvcmllcyAkZGlyZWN0b3J5IgogICAgZG9uZQoKICAgIFsgLW4gIiRtb2R1bGVkaXJlY3RvcmllcyIgXSAmJiB3aGlsZSByZWFkIGNvbW1hbmQ7IGRvCglldmFsICRjb21tYW5kCiAgICBkb25lCgogICAgTU9EVUxFU0RJUj0kc2F2ZV9tb2R1bGVzX2Rpcgp9CgojCiMgTG9hZCBrZXJuZWwgbW9kdWxlcyByZXF1aXJlZCBmb3IgU2hvcmV3YWxsCiMKbG9hZF9rZXJuZWxfbW9kdWxlcygpICMgJDEgPSBZZXMsIGlmIHdlIGFyZSB0byBzYXZlIG1vZHVsZWluZm8gaW4gJFZBUkRJUgp7CiAgICBsb2NhbCBzYXZlX21vZHVsZXNfZGlyCiAgICBzYXZlX21vZHVsZXNfZGlyPSRNT0RVTEVTRElSCiAgICBsb2NhbCBkaXJlY3RvcnkKICAgIGxvY2FsIG1vZHVsZWRpcmVjdG9yaWVzCiAgICBtb2R1bGVkaXJlY3Rvcmllcz0KICAgIGxvY2FsIG1vZHVsZWxvYWRlcgogICAgbW9kdWxlbG9hZGVyPW1vZHByb2JlCiAgICBsb2NhbCBzYXZlbW9kdWxlaW5mbwogICAgc2F2ZW1vZHVsZWluZm89JHsxOi1ZZXN9ICMgU28gb2xkIGNvbXBpbGVkIHNjcmlwdHMgc3RpbGwgd29yawogICAgbG9jYWwgdW5hbWUKCiAgICBpZiAhIHF0IG15d2hpY2ggbW9kcHJvYmU7IHRoZW4KCW1vZHVsZWxvYWRlcj1pbnNtb2QKICAgIGZpCgogICAgWyAtbiAiJHtNT0RVTEVfU1VGRklYOj1vIGd6IGtvIG8uZ3oga28uZ3p9IiBdCgogICAgWyAteiAiJE1PRFVMRVNESVIiIF0gJiYgXAoJdW5hbWU9JCh1bmFtZSAtcikgJiYgXAoJTU9EVUxFU0RJUj0vbGliL21vZHVsZXMvJHVuYW1lL2tlcm5lbC9uZXQvaXB2NC9uZXRmaWx0ZXI6L2xpYi9tb2R1bGVzLyR1bmFtZS9rZXJuZWwvbmV0L25ldGZpbHRlcjovbGliL21vZHVsZXMvJHVuYW1lL2tlcm5lbC9uZXQvc2NoZWQ6L2xpYi9tb2R1bGVzLyR1bmFtZS9leHRyYTovbGliL21vZHVsZXMvJHVuYW1lL2V4dHJhL2lwc2V0CgogICAgZm9yIGRpcmVjdG9yeSBpbiAkKHNwbGl0ICRNT0RVTEVTRElSKTsgZG8KCVsgLWQgJGRpcmVjdG9yeSBdICYmIG1vZHVsZWRpcmVjdG9yaWVzPSIkbW9kdWxlZGlyZWN0b3JpZXMgJGRpcmVjdG9yeSIKICAgIGRvbmUKCiAgICBbIC1uICIkTE9BRF9IRUxQRVJTX09OTFkiIF0gJiYgbW9kdWxlcz0kKGZpbmRfZmlsZSBoZWxwZXJzKSB8fCBtb2R1bGVzPSQoZmluZF9maWxlIG1vZHVsZXMpCgogICAgaWYgWyAtZiAkbW9kdWxlcyAtYSAtbiAiJG1vZHVsZWRpcmVjdG9yaWVzIiBdOyB0aGVuCglNT0RVTEVTPSQobHNtb2QgfCBjdXQgLWQgJyAnIC1mMSkKCXByb2dyZXNzX21lc3NhZ2UgIkxvYWRpbmcgTW9kdWxlcy4uLiIKCS4gJG1vZHVsZXMKCWlmIFsgJHNhdmVtb2R1bGVpbmZvID0gWWVzIF07IHRoZW4KCSAgICBbIC1kICR7VkFSRElSfSBdIHx8IG1rZGlyIC1wICR7VkFSRElSfQoJICAgIGVjaG8gTU9EVUxFU0RJUj0iJE1PRFVMRVNESVIiID4gJHtWQVJESVJ9Ly5tb2R1bGVzZGlyCgkgICAgY3AgLWYgJG1vZHVsZXMgJHtWQVJESVJ9Ly5tb2R1bGVzCglmaQogICAgZWxpZiBbICRzYXZlbW9kdWxlaW5mbyA9IFllcyBdOyB0aGVuCglbIC1kICR7VkFSRElSfSBdIHx8IG1rZGlyIC1wICR7VkFSRElSfQoJPiAke1ZBUkRJUn0vLm1vZHVsZXNkaXIKCT4gJHtWQVJESVJ9Ly5tb2R1bGVzCiAgICBmaQoKICAgIE1PRFVMRVNESVI9JHNhdmVfbW9kdWxlc19kaXIKfQoKIwojICBOb3RlOiBUaGUgZm9sbG93aW5nIHNldCBvZiBJUCBhZGRyZXNzIG1hbmlwdWxhdGlvbiBmdW5jdGlvbnMgaGF2ZSBhbm9tYWxvdXMKIyAgICAgICAgYmVoYXZpb3Igd2hlbiB0aGUgc2hlbGwgb25seSBzdXBwb3J0cyAzMi1iaXQgc2lnbmVkIGFyaXRobWV0aWMgYW5kCiMgICAgICAgIHRoZSBJUCBhZGRyZXNzIGlzIDEyOC4wLjAuMCBvciAxMjguMC4wLjEuCiMKCkxFRlRTSElGVD0nPDwnCgojCiMgQ29udmVydCBhbiBJUCBhZGRyZXNzIGluIGRvdCBxdWFkIGZvcm1hdCB0byBhbiBpbnRlZ2VyCiMKZGVjb2RlYWRkcigpIHsKICAgIGxvY2FsIHgKICAgIGxvY2FsIHRlbXAKICAgIHRlbXA9MAogICAgbG9jYWwgaWZzCiAgICBpZnM9JElGUwoKICAgIElGUz0uCgogICAgZm9yIHggaW4gJDE7IGRvCgl0ZW1wPSQoKCAkKCggJHRlbXAgJExFRlRTSElGVCA4ICkpIHwgJHggKSkKICAgIGRvbmUKCiAgICBlY2hvICR0ZW1wCgogICAgSUZTPSRpZnMKfQoKIwojIGNvbnZlcnQgYW4gaW50ZWdlciB0byBkb3QgcXVhZCBmb3JtYXQKIwplbmNvZGVhZGRyKCkgewogICAgYWRkcj0kMQogICAgbG9jYWwgeAogICAgbG9jYWwgeQogICAgeT0kKCgkYWRkciAmIDI1NSkpCgogICAgZm9yIHggaW4gMSAyIDMgOyBkbwoJYWRkcj0kKCgkYWRkciA+PiA4KSkKCXk9JCgoJGFkZHIgJiAyNTUpKS4keQogICAgZG9uZQoKICAgIGVjaG8gJHkKfQoKIwojIE5ldG1hc2sgZnJvbSBDSURSCiMKaXBfbmV0bWFzaygpIHsKICAgIGxvY2FsIHZsc20KICAgIHZsc209JHsxIyovfQoKICAgIFsgJHZsc20gLWVxIDAgXSAmJiBlY2hvIDAgfHwgZWNobyAkKCggLTEgJExFRlRTSElGVCAkKCggMzIgLSAkdmxzbSApKSApKQp9CgojCiMgTmV0d29yayBhZGRyZXNzIGZyb20gQ0lEUgojCmlwX25ldHdvcmsoKSB7CiAgICBsb2NhbCBkZWNvZGVkYWRkcgogICAgZGVjb2RlZGFkZHI9JChkZWNvZGVhZGRyICR7MSUvKn0pCiAgICBsb2NhbCBuZXRtYXNrCiAgICBuZXRtYXNrPSQoaXBfbmV0bWFzayAkMSkKCiAgICBlY2hvICQoZW5jb2RlYWRkciAkKCgkZGVjb2RlZGFkZHIgJiAkbmV0bWFzaykpKQp9CgojCiMgVGhlIGZvbGxvd2luZyBoYWNrIGlzIHN1cHBsaWVkIHRvIGNvbXBlbnNhdGUgZm9yIHRoZSBmYWN0IHRoYXQgbWFueSBvZgojIHRoZSBwb3B1bGFyIGxpZ2h0LXdlaWdodCBCb3VybmUgc2hlbGwgZGVyaXZhdGl2ZXMgZG9uJ3Qgc3VwcG9ydCBYT1IgKCJeIikuCiMKaXBfYnJvYWRjYXN0KCkgewogICAgbG9jYWwgeAogICAgeD0kKCggMzIgLSAkezEjKi99ICkpCgogICAgWyAkeCAtZXEgMzIgXSAmJiBlY2hvIC0xIHx8IGVjaG8gJCgoICQoKCAxICRMRUZUU0hJRlQgJHggKSkgLSAxICkpCn0KCiMKIyBDYWxjdWxhdGUgYnJvYWRjYXN0IGFkZHJlc3MgZnJvbSBDSURSCiMKYnJvYWRjYXN0YWRkcmVzcygpIHsKICAgIGxvY2FsIGRlY29kZWRhZGRyCiAgICBkZWNvZGVkYWRkcj0kKGRlY29kZWFkZHIgJHsxJS8qfSkKICAgIGxvY2FsIG5ldG1hc2sKICAgIG5ldG1hc2s9JChpcF9uZXRtYXNrICQxKQogICAgbG9jYWwgYnJvYWRjYXN0CiAgICBicm9hZGNhc3Q9JChpcF9icm9hZGNhc3QgJDEpCgogICAgZWNobyAkKGVuY29kZWFkZHIgJCgoICQoKCRkZWNvZGVkYWRkciAmICRuZXRtYXNrKSkgfCAkYnJvYWRjYXN0ICkpKQp9CgojCiMgVGVzdCBmb3IgbmV0d29yayBtZW1iZXJzaGlwCiMKaW5fbmV0d29yaygpICMgJDEgPSBJUCBhZGRyZXNzLCAkMiA9IENJRFIgbmV0d29yawp7CiAgICBsb2NhbCBuZXRtYXNrCiAgICBuZXRtYXNrPSQoaXBfbmV0bWFzayAkMikKICAgICMKICAgICMgVXNlIHN0cmluZyBjb21wYXJpc29uIHRvIHdvcmsgYXJvdW5kIGEgYnJva2VuIEJ1c3lCb3ggYXNoIGluIE9wZW5XUlQKICAgICMKICAgIHRlc3QgJCgoICQoZGVjb2RlYWRkciAkMSkgJiAkbmV0bWFzaykpID0gJCgoICQoZGVjb2RlYWRkciAkezIlLyp9KSAmICRuZXRtYXNrICkpCn0KCiMKIyBGaW5kIGludGVyZmFjZSBhZGRyZXNzLS1yZXR1cm5zIHRoZSBmaXJzdCBJUCBhZGRyZXNzIGFzc2lnbmVkIHRvIHRoZSBwYXNzZWQKIyBkZXZpY2UKIwpmaW5kX2ZpcnN0X2ludGVyZmFjZV9hZGRyZXNzKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICAjCiAgICAjIGdldCB0aGUgbGluZSBvZiBvdXRwdXQgY29udGFpbmluZyB0aGUgZmlyc3QgSVAgYWRkcmVzcwogICAgIwogICAgYWRkcj0kKCR7SVA6LWlwfSAtZiBpbmV0IGFkZHIgc2hvdyAkMSAyPiAvZGV2L251bGwgfCBncmVwICdpbmV0IC4qIGdsb2JhbCcgfCBoZWFkIC1uMSkKICAgICMKICAgICMgSWYgdGhlcmUgd2Fzbid0IG9uZSwgYmFpbCBvdXQgbm93CiAgICAjCiAgICBbIC1uICIkYWRkciIgXSB8fCBzdGFydHVwX2Vycm9yICJDYW4ndCBkZXRlcm1pbmUgdGhlIElQIGFkZHJlc3Mgb2YgJDEiCiAgICAjCiAgICAjIFN0cmlwIG9mZiB0aGUgdHJhaWxpbmcgVkxTTSBtYXNrIChvciB0aGUgcGVlciBJUCBpbiBjYXNlIG9mIGEgUC10LVAgbGluaykKICAgICMgYWxvbmcgd2l0aCBldmVyeXRoaW5nIGVsc2Ugb24gdGhlIGxpbmUKICAgICMKICAgIGVjaG8gJGFkZHIgfCBzZWQgJ3MvXHMqaW5ldCAvLztzL1wvLiovLztzLyBwZWVyLiovLycKfQoKZmluZF9maXJzdF9pbnRlcmZhY2VfYWRkcmVzc19pZl9hbnkoKSAjICQxID0gaW50ZXJmYWNlCnsKICAgICMKICAgICMgZ2V0IHRoZSBsaW5lIG9mIG91dHB1dCBjb250YWluaW5nIHRoZSBmaXJzdCBJUCBhZGRyZXNzCiAgICAjCiAgICBhZGRyPSQoJHtJUDotaXB9IC1mIGluZXQgYWRkciBzaG93ICQxIDI+IC9kZXYvbnVsbCB8IGdyZXAgJ2luZXQgLiogZ2xvYmFsJyB8IGhlYWQgLW4xKQogICAgIwogICAgIyBTdHJpcCBvZmYgdGhlIHRyYWlsaW5nIFZMU00gbWFzayAob3IgdGhlIHBlZXIgSVAgaW4gY2FzZSBvZiBhIFAtdC1QIGxpbmspCiAgICAjIGFsb25nIHdpdGggZXZlcnl0aGluZyBlbHNlIG9uIHRoZSBsaW5lCiAgICAjCiAgICBbIC1uICIkYWRkciIgXSAmJiBlY2hvICRhZGRyIHwgc2VkICdzL1xzKmluZXQgLy87cy9cLy4qLy87cy8gcGVlci4qLy8nIHx8IGVjaG8gMC4wLjAuMAp9CgojCiMgSW50ZXJuYWwgdmVyc2lvbiBvZiAnd2hpY2gnCiMKbXl3aGljaCgpIHsKICAgIGxvY2FsIGRpcgoKICAgIGZvciBkaXIgaW4gJChzcGxpdCAkUEFUSCk7IGRvCglpZiBbIC14ICRkaXIvJDEgXTsgdGhlbgoJICAgIGVjaG8gJGRpci8kMQoJICAgIHJldHVybiAwCglmaQogICAgZG9uZQoKICAgIHJldHVybiAyCn0KCiMKIyBRdWVyeSBOZXRGaWx0ZXIgYWJvdXQgdGhlIGV4aXN0ZW5jZSBvZiBhIGZpbHRlciBjaGFpbgojCmNoYWluX2V4aXN0cygpICMgJDEgPSBjaGFpbiBuYW1lCnsKICAgIHF0MSAkSVBUQUJMRVMgLUwgJDEgLW4KfQoKIwojIEZpbmQgYSBGaWxlIC0tIEZvciByZWxhdGl2ZSBmaWxlIG5hbWUsIGxvb2sgaW4gZWFjaCAke0NPTkZJR19QQVRIfSB0aGVuICR7Q09ORkRJUn0KIwpmaW5kX2ZpbGUoKQp7CiAgICBsb2NhbCBzYXZlaWZzCiAgICBzYXZlaWZzPQogICAgbG9jYWwgZGlyZWN0b3J5CgogICAgY2FzZSAkMSBpbgoJLyopCgkgICAgZWNobyAkMQoJICAgIDs7CgkqKQoJICAgIGZvciBkaXJlY3RvcnkgaW4gJChzcGxpdCAkQ09ORklHX1BBVEgpOyBkbwoJCWlmIFsgLWYgJGRpcmVjdG9yeS8kMSBdOyB0aGVuCgkJICAgIGVjaG8gJGRpcmVjdG9yeS8kMQoJCSAgICByZXR1cm4KCQlmaQoJICAgIGRvbmUKCgkgICAgZWNobyAke0NPTkZESVJ9LyQxCgkgICAgOzsKICAgIGVzYWMKfQoKIwojIFNldCB0aGUgU2hvcmV3YWxsIHN0YXRlCiMKc2V0X3N0YXRlICgpICMgJDEgPSBzdGF0ZQp7CiAgICBlY2hvICIkMSAoJChkYXRlKSkiID4gJHtWQVJESVJ9L3N0YXRlCn0KCiMKIyBQZXJmb3JtIHZhcmlhYmxlIHN1YnN0aXR1dGlvbiBvbiB0aGUgcGFzc2VkIGFyZ3VtZW50IGFuZCBlY2hvIHRoZSByZXN1bHQKIwpleHBhbmQoKSAjICRAID0gY29udGVudHMgb2YgdmFyaWFibGUgd2hpY2ggbWF5IGJlIHRoZSBuYW1lIG9mIGFub3RoZXIgdmFyaWFibGUKewogICAgZXZhbCBlY2hvIFwiJEBcIgp9CgojCiMgRnVuY3Rpb24gZm9yIGluY2x1ZGluZyBvbmUgZmlsZSBpbnRvIGFub3RoZXIKIwpJTkNMVURFKCkgewogICAgLiAkKGZpbmRfZmlsZSAkKGV4cGFuZCAkQCkpCn0KCiMgRnVuY3Rpb24gdG8gdHJ1bmNhdGUgYSBzdHJpbmcgLS0gSXQgdXNlcyAnY3V0IC1iIC08bj4nCiMgcmF0aGVyIHRoYW4gJHt2OmZpcnN0Omxhc3R9IGJlY2F1c2UgbGlnaHQtd2VpZ2h0IHNoZWxscyBsaWtlIGFzaCBhbmQKIyBkYXNoIGRvIG5vdCBzdXBwb3J0IHRoYXQgZm9ybSBvZiBleHBhbnNpb24uCiMKCnRydW5jYXRlKCkgIyAkMSA9IGxlbmd0aAp7CiAgICBjdXQgLWIgLSR7MX0KfQoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyAgIEVuZCBvZiBpbXBvcnRzIGZyb20gL3Vzci9zaGFyZS9zaG9yZXdhbGwvbGliLmNvbW1vbgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIEZ1bmN0aW9ucyB0byBleGVjdXRlIHRoZSB2YXJpb3VzIHVzZXIgZXhpdHMgKGV4dGVuc2lvbiBzY3JpcHRzKQojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwoKcnVuX2luaXRfZXhpdCgpIHsKICAgIHRydWUKfQoKcnVuX3N0YXJ0X2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl90Y2NsZWFyX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9zdGFydGVkX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9zdG9wX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9zdG9wcGVkX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9jbGVhcl9leGl0KCkgewogICAgdHJ1ZQp9CgpydW5fcmVmcmVzaF9leGl0KCkgewogICAgdHJ1ZQp9CgpydW5fcmVmcmVzaGVkX2V4aXQoKSB7CiAgICB0cnVlCn0KCnJ1bl9yZXN0b3JlZF9leGl0KCkgewogICAgdHJ1ZQp9CgpydW5faXN1c2FibGVfZXhpdCgpIHsKICAgIHRydWUKfQoKcnVuX2ZpbmRnd19leGl0KCkgewogICAgdHJ1ZQp9CiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMgRW5kIHVzZXIgZXhpdCBmdW5jdGlvbnMKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKCiMKIyBTZXR1cCBDb21tb24gUnVsZXMgKC9wcm9jKQojCnNldHVwX2NvbW1vbl9ydWxlcygpIHsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgU2V0dGluZyB1cCBSb3V0ZSBGaWx0ZXJpbmcuLi4KCiAgICBmb3IgZmlsZSBpbiAvcHJvYy9zeXMvbmV0L2lwdjQvY29uZi8qOyBkbwoJWyAtZiAkZmlsZS9ycF9maWx0ZXIgXSAmJiBlY2hvIDEgPiAkZmlsZS9ycF9maWx0ZXIKICAgIGRvbmUKCiAgICBlY2hvIDEgPiAvcHJvYy9zeXMvbmV0L2lwdjQvY29uZi9hbGwvcnBfZmlsdGVyCiAgICBlY2hvIDEgPiAvcHJvYy9zeXMvbmV0L2lwdjQvY29uZi9kZWZhdWx0L3JwX2ZpbHRlcgogICAgWyAtbiAiJGdfbm9yb3V0ZXMiIF0gfHwgJElQIC00IHJvdXRlIGZsdXNoIGNhY2hlCiAgICAKICAgIHByb2dyZXNzX21lc3NhZ2UyIFNldHRpbmcgdXAgTWFydGlhbiBMb2dnaW5nLi4uCgogICAgZm9yIGZpbGUgaW4gL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvKjsgZG8KCVsgLWYgJGZpbGUvbG9nX21hcnRpYW5zIF0gJiYgZWNobyAxID4gJGZpbGUvbG9nX21hcnRpYW5zCiAgICBkb25lCgogICAgZWNobyAwID4gL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvYWxsL2xvZ19tYXJ0aWFucwoKICAgIGlmIFsgLWYgL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvZXRoMC9sb2dfbWFydGlhbnMgXTsgdGhlbgoJZWNobyAxID4gL3Byb2Mvc3lzL25ldC9pcHY0L2NvbmYvZXRoMC9sb2dfbWFydGlhbnMKICAgIGVsc2UKCWVycm9yX21lc3NhZ2UgIldBUk5JTkc6IENhbm5vdCBzZXQgTWFydGlhbiBsb2dnaW5nIG9uIGV0aDAiCiAgICBmaQoKICAgIHJldHVybiAwCn0KCiMKIyBTZXR1cCByb3V0aW5nIGFuZCB0cmFmZmljIHNoYXBpbmcKIwpzZXR1cF9yb3V0aW5nX2FuZF90cmFmZmljX3NoYXBpbmcoKSB7CiAgICAKICAgIGlmIFsgLXogIiRnX25vcm91dGVzIiBdOyB0aGVuCgkKCXVuZG9fcm91dGluZwoJcmVzdG9yZV9kZWZhdWx0X3JvdXRlCiAgICBmaQoKICAgIHByb2dyZXNzX21lc3NhZ2UyICJTZXR0aW5nIHVwIFRyYWZmaWMgQ29udHJvbC4uLiIKCn0KCiMKIyBUaGlzIGZ1bmN0aW9uIGluaXRpYWxpemVzIHRoZSBnbG9iYWwgdmFyaWFibGVzIHVzZWQgYnkgdGhlIHByb2dyYW0KIwppbml0aWFsaXplKCkKewogICAgIwogICAgIyBCZSBzdXJlIHRoYXQgdW1hc2sgaXMgc2FuZQogICAgIwogICAgdW1hc2sgMDc3CiAgICAjCiAgICAjIFRoZXNlIHZhcmlhYmxlcyBhcmUgcmVxdWlyZWQgYnkgdGhlIGxpYnJhcnkgZnVuY3Rpb25zIGNhbGxlZCBpbiB0aGlzIHNjcmlwdAogICAgIwogICAgU0hBUkVESVI9L3Vzci9zaGFyZS9zaG9yZXdhbGwtbGl0ZQogICAgQ09ORkRJUj0vZXRjL3Nob3Jld2FsbC1saXRlCiAgICBnX3Byb2R1Y3Q9IlNob3Jld2FsbCBMaXRlIgogICAgWyAtZiAke0NPTkZESVJ9L3ZhcmRpciBdICYmIC4gJHtDT05GRElSfS92YXJkaXIKICAgIENPTkZJR19QQVRIPSIvZXRjL3Nob3Jld2FsbC1saXRlOi91c3Ivc2hhcmUvc2hvcmV3YWxsLWxpdGUiCiAgICBbIC1uICIke1ZBUkRJUjo9L3Zhci9saWIvc2hvcmV3YWxsLWxpdGV9IiBdCiAgICBURU1QRklMRT0KICAgIERJU0FCTEVfSVBWNj0iIgogICAgTU9EVUxFU0RJUj0iIgogICAgTU9EVUxFX1NVRkZJWD0ia28iCiAgICBMT0FEX0hFTFBFUlNfT05MWT0iIgogICAgU1VCU1lTTE9DSz0iIgogICAgTE9HX1ZFUkJPU0lUWT0iMiIKICAgIFsgLW4gIiR7Q09NTUFORDo9cmVzdGFydH0iIF0KICAgIFsgLW4gIiR7VkVSQk9TSVRZOj0wfSIgXQogICAgWyAtbiAiJHtSRVNUT1JFRklMRTo9cmVzdG9yZX0iIF0KICAgIFNIT1JFV0FMTF9WRVJTSU9OPSI0LjQuMTEuNiIKICAgIFBBVEg9Ii9zYmluOi9iaW46L3Vzci9zYmluOi91c3IvYmluOi91c3IvbG9jYWwvYmluOi91c3IvbG9jYWwvc2JpbiIKICAgIFRFUk1JTkFUT1I9ZmF0YWxfZXJyb3IKICAgIERPTlRfTE9BRD0iIgogICAgU1RBUlRVUF9MT0c9Ii92YXIvbG9nL3Nob3Jld2FsbC1pbml0LmxvZyIKCiAgICBbIC16ICIkSVBUQUJMRVMiIF0gJiYgSVBUQUJMRVM9JChteXdoaWNoIGlwdGFibGVzKSAjIC9zYmluL3Nob3Jld2FsbCBleHBvcnRzIElQVEFCTEVTCiAgICBbIC1uICIkSVBUQUJMRVMiIC1hIC14ICIkSVBUQUJMRVMiIF0gfHwgc3RhcnR1cF9lcnJvciAiQ2FuJ3QgZmluZCBpcHRhYmxlcyBleGVjdXRhYmxlIgoKICAgIGNhc2UgJElQVEFCTEVTIGluCgkqLyopCgkgICAgOzsKCSopCgkgICAgSVBUQUJMRVM9Li8kSVBUQUJMRVMKCSAgICA7OwogICAgZXNhYwoKICAgIElQNlRBQkxFUz0ke0lQVEFCTEVTJS8qfS9pcDZ0YWJsZXMKICAgIElQVEFCTEVTX1JFU1RPUkU9JHtJUFRBQkxFU30tcmVzdG9yZQogICAgWyAteCAiJElQVEFCTEVTX1JFU1RPUkUiIF0gfHwgc3RhcnR1cF9lcnJvciAiJElQVEFCTEVTX1JFU1RPUkUgZG9lcyBub3QgZXhpc3Qgb3IgaXMgbm90IGV4ZWN1dGFibGUiCiAgICBJUD1pcAogICAgVEM9dGMKICAgIElQU0VUPWlwc2V0CgogICAgZ19zdG9wcGluZz0KCiAgICAjCiAgICAjIFRoZSBsaWJyYXJ5IHJlcXVpcmVzIHRoYXQgJHtWQVJESVJ9IGV4aXN0CiAgICAjCiAgICBbIC1kICR7VkFSRElSfSBdIHx8IG1rZGlyIC1wICR7VkFSRElSfQoKfQoKIwojIFNldCBnbG9iYWwgdmFyaWFibGVzIGhvbGRpbmcgZGV0ZWN0ZWQgSVAgaW5mb3JtYXRpb24KIwpkZXRlY3RfY29uZmlndXJhdGlvbigpCnsKICAgIHRydWUKCn0KCiMKIyBDcmVhdGUgdGhlIGlucHV0IHRvIGlwdGFibGVzLXJlc3RvcmUvaXA2dGFibGVzLXJlc3RvcmUgYW5kIHBhc3MgdGhhdCBpbnB1dCB0byB0aGUgdXRpbGl0eQojCnNldHVwX25ldGZpbHRlcigpCnsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgUHJlcGFyaW5nIGlwdGFibGVzLXJlc3RvcmUgaW5wdXQuLi4KCiAgICBleGVjIDM+JHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0CgogICAgY2F0ID4mMyA8PCBfX0VPRl9fCiMKIyBHZW5lcmF0ZWQgYnkgU2hvcmV3YWxsIDQuNC4xMS42IC0gV2VkIE9jdCAzMSAyMDoyODozNyAyMDEyCiMKKnJhdwo6UFJFUk9VVElORyBBQ0NFUFQgWzA6MF0KOk9VVFBVVCBBQ0NFUFQgWzA6MF0KQ09NTUlUCipuYXQKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KQ09NTUlUCiptYW5nbGUKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpJTlBVVCBBQ0NFUFQgWzA6MF0KOkZPUldBUkQgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KOnRjZm9yIC0gWzA6MF0KOnRjb3V0IC0gWzA6MF0KOnRjcG9zdCAtIFswOjBdCjp0Y3ByZSAtIFswOjBdCi1BIFBSRVJPVVRJTkcgLWogdGNwcmUKLUEgRk9SV0FSRCAtaiBNQVJLIC0tc2V0LW1hcmsgMC8weGZmCi1BIEZPUldBUkQgLWogdGNmb3IKLUEgT1VUUFVUIC1qIHRjb3V0Ci1BIFBPU1RST1VUSU5HIC1qIHRjcG9zdApDT01NSVQKKmZpbHRlcgo6SU5QVVQgRFJPUCBbMDowXQo6Rk9SV0FSRCBEUk9QIFswOjBdCjpPVVRQVVQgRFJPUCBbMDowXQo6RHJvcCAtIFswOjBdCjpSZWplY3QgLSBbMDowXQo6ZHJvcEJjYXN0IC0gWzA6MF0KOmRyb3BJbnZhbGlkIC0gWzA6MF0KOmRyb3BOb3RTeW4gLSBbMDowXQo6ZHluYW1pYyAtIFswOjBdCjpldGgwX2Z3ZCAtIFswOjBdCjpmdzJuZXQgLSBbMDowXQo6bG9nZHJvcCAtIFswOjBdCjpsb2dmbGFncyAtIFswOjBdCjpsb2dyZWplY3QgLSBbMDowXQo6bmV0MmZ3IC0gWzA6MF0KOnJlamVjdCAtIFswOjBdCjpzbXVyZmxvZyAtIFswOjBdCjpzbXVyZnMgLSBbMDowXQo6dGNwZmxhZ3MgLSBbMDowXQotQSBJTlBVVCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIE5FVyxJTlZBTElEIC1qIGR5bmFtaWMKLUEgSU5QVVQgLWkgZXRoMCAtaiBuZXQyZncKLUEgSU5QVVQgLWkgbG8gLWogQUNDRVBUCi1BIElOUFVUIC1tIGNvbm50cmFjayAtLWN0c3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKLUEgSU5QVVQgLWogRHJvcAotQSBJTlBVVCAtaiBMT0cgLS1sb2ctbGV2ZWwgNiAtLWxvZy1wcmVmaXggIlNob3Jld2FsbDpJTlBVVDpEUk9QOiIgCi1BIElOUFVUIC1qIERST1AKLUEgRk9SV0FSRCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIE5FVyxJTlZBTElEIC1qIGR5bmFtaWMKLUEgRk9SV0FSRCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIEZPUldBUkQgLWogUmVqZWN0Ci1BIEZPUldBUkQgLWogTE9HIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6Rk9SV0FSRDpSRUpFQ1Q6IiAKLUEgRk9SV0FSRCAtZyByZWplY3QKLUEgT1VUUFVUIC1vIGV0aDAgLWogZncybmV0Ci1BIE9VVFBVVCAtbyBsbyAtaiBBQ0NFUFQKLUEgT1VUUFVUIC1tIGNvbm50cmFjayAtLWN0c3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKLUEgT1VUUFVUIC1qIFJlamVjdAotQSBPVVRQVVQgLWogTE9HIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6T1VUUFVUOlJFSkVDVDoiIAotQSBPVVRQVVQgLWcgcmVqZWN0Ci1BIERyb3AgCi1BIERyb3AgLXAgNiAtLWRwb3J0IDExMyAtaiByZWplY3QgLW0gY29tbWVudCAtLWNvbW1lbnQgIkF1dGgiCi1BIERyb3AgLWogZHJvcEJjYXN0Ci1BIERyb3AgLXAgMSAtLWljbXAtdHlwZSAzLzQgLWogQUNDRVBUIC1tIGNvbW1lbnQgLS1jb21tZW50ICJOZWVkZWQgSUNNUCB0eXBlcyIKLUEgRHJvcCAtcCAxIC0taWNtcC10eXBlIDExIC1qIEFDQ0VQVCAtbSBjb21tZW50IC0tY29tbWVudCAiTmVlZGVkIElDTVAgdHlwZXMiCi1BIERyb3AgLWogZHJvcEludmFsaWQKLUEgRHJvcCAtcCAxNyAtbSBtdWx0aXBvcnQgLS1kcG9ydHMgMTM1LDQ0NSAtaiBEUk9QIC1tIGNvbW1lbnQgLS1jb21tZW50ICJTTUIiCi1BIERyb3AgLXAgMTcgLS1kcG9ydCAxMzc6MTM5IC1qIERST1AgLW0gY29tbWVudCAtLWNvbW1lbnQgIlNNQiIKLUEgRHJvcCAtcCAxNyAtLWRwb3J0IDEwMjQ6NjU1MzUgLS1zcG9ydCAxMzcgLWogRFJPUCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBEcm9wIC1wIDYgLW0gbXVsdGlwb3J0IC0tZHBvcnRzIDEzNSwxMzksNDQ1IC1qIERST1AgLW0gY29tbWVudCAtLWNvbW1lbnQgIlNNQiIKLUEgRHJvcCAtcCAxNyAtLWRwb3J0IDE5MDAgLWogRFJPUCAtbSBjb21tZW50IC0tY29tbWVudCAiVVBuUCIKLUEgRHJvcCAtcCA2IC1qIGRyb3BOb3RTeW4KLUEgRHJvcCAtcCAxNyAtLXNwb3J0IDUzIC1qIERST1AgLW0gY29tbWVudCAtLWNvbW1lbnQgIkxhdGUgRE5TIFJlcGxpZXMiCi1BIFJlamVjdCAKLUEgUmVqZWN0IC1wIDYgLS1kcG9ydCAxMTMgLWogcmVqZWN0IC1tIGNvbW1lbnQgLS1jb21tZW50ICJBdXRoIgotQSBSZWplY3QgLWogZHJvcEJjYXN0Ci1BIFJlamVjdCAtcCAxIC0taWNtcC10eXBlIDMvNCAtaiBBQ0NFUFQgLW0gY29tbWVudCAtLWNvbW1lbnQgIk5lZWRlZCBJQ01QIHR5cGVzIgotQSBSZWplY3QgLXAgMSAtLWljbXAtdHlwZSAxMSAtaiBBQ0NFUFQgLW0gY29tbWVudCAtLWNvbW1lbnQgIk5lZWRlZCBJQ01QIHR5cGVzIgotQSBSZWplY3QgLWogZHJvcEludmFsaWQKLUEgUmVqZWN0IC1wIDE3IC1tIG11bHRpcG9ydCAtLWRwb3J0cyAxMzUsNDQ1IC1qIHJlamVjdCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBSZWplY3QgLXAgMTcgLS1kcG9ydCAxMzc6MTM5IC1qIHJlamVjdCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBSZWplY3QgLXAgMTcgLS1kcG9ydCAxMDI0OjY1NTM1IC0tc3BvcnQgMTM3IC1qIHJlamVjdCAtbSBjb21tZW50IC0tY29tbWVudCAiU01CIgotQSBSZWplY3QgLXAgNiAtbSBtdWx0aXBvcnQgLS1kcG9ydHMgMTM1LDEzOSw0NDUgLWogcmVqZWN0IC1tIGNvbW1lbnQgLS1jb21tZW50ICJTTUIiCi1BIFJlamVjdCAtcCAxNyAtLWRwb3J0IDE5MDAgLWogRFJPUCAtbSBjb21tZW50IC0tY29tbWVudCAiVVBuUCIKLUEgUmVqZWN0IC1wIDYgLWogZHJvcE5vdFN5bgotQSBSZWplY3QgLXAgMTcgLS1zcG9ydCA1MyAtaiBEUk9QIC1tIGNvbW1lbnQgLS1jb21tZW50ICJMYXRlIEROUyBSZXBsaWVzIgotQSBkcm9wQmNhc3QgLW0gYWRkcnR5cGUgLS1kc3QtdHlwZSBCUk9BRENBU1QgLWogRFJPUAotQSBkcm9wQmNhc3QgLWQgMjI0LjAuMC4wLzQgLWogRFJPUAotQSBkcm9wSW52YWxpZCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIElOVkFMSUQgLWogRFJPUAotQSBkcm9wTm90U3luIC1wIDYgISAtLXN5biAtaiBEUk9QCl9fRU9GX18KCiAgICBbIC1mICR7VkFSRElSfS8uZHluYW1pYyBdICYmIGNhdCAke1ZBUkRJUn0vLmR5bmFtaWMgPiYzCgogICAgY2F0ID4mMyA8PCBfX0VPRl9fCi1BIGV0aDBfZndkIC1tIGNvbm50cmFjayAtLWN0c3RhdGUgTkVXLElOVkFMSUQgLWogc211cmZzCi1BIGV0aDBfZndkIC1wIHRjcCAtaiB0Y3BmbGFncwotQSBmdzJuZXQgLXAgdWRwIC0tZHBvcnQgNjc6NjggLWogQUNDRVBUCi1BIGZ3Mm5ldCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIGZ3Mm5ldCAtcCAxIC1qIEFDQ0VQVCAKLUEgZncybmV0IC1qIEFDQ0VQVAotQSBsb2dkcm9wICAtaiBEUk9QCi1BIGxvZ2ZsYWdzIC1qIExPRyAtLWxvZy1pcC1vcHRpb25zIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6bG9nZmxhZ3M6RFJPUDoiIAotQSBsb2dmbGFncyAtaiBEUk9QCi1BIGxvZ3JlamVjdCAgLWogcmVqZWN0Ci1BIG5ldDJmdyAtbSBjb25udHJhY2sgLS1jdHN0YXRlIE5FVyxJTlZBTElEIC1qIHNtdXJmcwotQSBuZXQyZncgLXAgdWRwIC0tZHBvcnQgNjc6NjggLWogQUNDRVBUCi1BIG5ldDJmdyAtcCB0Y3AgLWogdGNwZmxhZ3MKLUEgbmV0MmZ3IC1tIGNvbm50cmFjayAtLWN0c3RhdGUgRVNUQUJMSVNIRUQsUkVMQVRFRCAtaiBBQ0NFUFQKLUEgbmV0MmZ3IC1wIDEgLWogRFJPUCAKLUEgbmV0MmZ3IC1qIExPRyAtLWxvZy1sZXZlbCA2IC0tbG9nLXByZWZpeCAiU2hvcmV3YWxsOm5ldDJmdzpBQ0NFUFQ6IiAKLUEgbmV0MmZ3IC1qIEFDQ0VQVAotQSByZWplY3QgLW0gYWRkcnR5cGUgLS1zcmMtdHlwZSBCUk9BRENBU1QgLWogRFJPUAotQSByZWplY3QgLXMgMjI0LjAuMC4wLzQgLWogRFJPUAotQSByZWplY3QgLXAgMiAtaiBEUk9QCi1BIHJlamVjdCAtcCA2IC1qIFJFSkVDVCAtLXJlamVjdC13aXRoIHRjcC1yZXNldAotQSByZWplY3QgLXAgMTcgLWogUkVKRUNUCi1BIHJlamVjdCAtcCAxIC1qIFJFSkVDVCAtLXJlamVjdC13aXRoIGljbXAtaG9zdC11bnJlYWNoYWJsZQotQSByZWplY3QgLWogUkVKRUNUIC0tcmVqZWN0LXdpdGggaWNtcC1ob3N0LXByb2hpYml0ZWQKLUEgc211cmZsb2cgLWogTE9HIC0tbG9nLWxldmVsIDYgLS1sb2ctcHJlZml4ICJTaG9yZXdhbGw6c211cmZzOkRST1A6IiAKLUEgc211cmZsb2cgLWogRFJPUAotQSBzbXVyZnMgLXMgMC4wLjAuMCAtaiBSRVRVUk4KLUEgc211cmZzIC1tIGFkZHJ0eXBlIC0tc3JjLXR5cGUgQlJPQURDQVNUIC1nIHNtdXJmbG9nCi1BIHNtdXJmcyAtcyAyMjQuMC4wLjAvNCAtZyBzbXVyZmxvZwotQSB0Y3BmbGFncyAtcCB0Y3AgLS10Y3AtZmxhZ3MgQUxMIEZJTixVUkcsUFNIIC1nIGxvZ2ZsYWdzCi1BIHRjcGZsYWdzIC1wIHRjcCAtLXRjcC1mbGFncyBBTEwgTk9ORSAtZyBsb2dmbGFncwotQSB0Y3BmbGFncyAtcCB0Y3AgLS10Y3AtZmxhZ3MgU1lOLFJTVCBTWU4sUlNUIC1nIGxvZ2ZsYWdzCi1BIHRjcGZsYWdzIC1wIHRjcCAtLXRjcC1mbGFncyBTWU4sRklOIFNZTixGSU4gLWcgbG9nZmxhZ3MKLUEgdGNwZmxhZ3MgLXAgdGNwIC0tc3luIC0tc3BvcnQgMCAtZyBsb2dmbGFncwpDT01NSVQKX19FT0ZfXwoKICAgIGV4ZWMgMz4mLQoKICAgIFsgLW4gIiRERUJVRyIgXSAmJiBjb21tYW5kPWRlYnVnX3Jlc3RvcmVfaW5wdXQgfHwgY29tbWFuZD0kSVBUQUJMRVNfUkVTVE9SRQoKICAgIHByb2dyZXNzX21lc3NhZ2UyICJSdW5uaW5nICRjb21tYW5kLi4uIgoKICAgIGNhdCAke1ZBUkRJUn0vLmlwdGFibGVzLXJlc3RvcmUtaW5wdXQgfCAkY29tbWFuZCAjIFVzZSB0aGlzIG5vbnNlbnNpY2FsIGZvcm0gdG8gYXBwZWFzZSBTRUxpbnV4CiAgICBpZiBbICQ/ICE9IDAgXTsgdGhlbgoJZmF0YWxfZXJyb3IgImlwdGFibGVzLXJlc3RvcmUgRmFpbGVkLiBJbnB1dCBpcyBpbiAke1ZBUkRJUn0vLmlwdGFibGVzLXJlc3RvcmUtaW5wdXQiCiAgICBmaQoKfQoKY2hhaW5saXN0X3JlbG9hZCgpCnsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgUHJlcGFyaW5nIGlwdGFibGVzLXJlc3RvcmUgaW5wdXQgZm9yIGNoYWluIG1hbmdsZTouLi4KCiAgICBleGVjIDM+JHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0CgogICAgY2F0ID4mMyA8PCBfX0VPRl9fCiptYW5nbGUKOnRjZm9yIC0gWzA6MF0KOnRjb3V0IC0gWzA6MF0KOnRjcG9zdCAtIFswOjBdCjp0Y3ByZSAtIFswOjBdCkNPTU1JVApfX0VPRl9fCgogICAgZXhlYyAzPiYtCgogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgIlJ1bm5pbmcgaXB0YWJsZXMtcmVzdG9yZS4uLiIKCiAgICBjYXQgJHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0IHwgJElQVEFCTEVTX1JFU1RPUkUgLW4gIyBVc2UgdGhpcyBub25zZW5zaWNhbCBmb3JtIHRvIGFwcGVhc2UgU0VMaW51eAogICAgaWYgWyAkPyAhPSAwIF07IHRoZW4KCWZhdGFsX2Vycm9yICJpcHRhYmxlcy1yZXN0b3JlIEZhaWxlZC4gSW5wdXQgaXMgaW4gJHtWQVJESVJ9Ly5pcHRhYmxlcy1yZXN0b3JlLWlucHV0IgogICAgZmkKCn0KCiMKIyBTdGFydC9SZXN0YXJ0IHRoZSBGaXJld2FsbAojCmRlZmluZV9maXJld2FsbCgpIHsKICAgIAogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgSW5pdGlhbGl6aW5nLi4uCgogICAgbG9hZF9rZXJuZWxfbW9kdWxlcyBZZXMKICAgIGlmIFsgIiRDT01NQU5EIiA9IHJlZnJlc2ggXTsgdGhlbgogICAgICAgcnVuX3JlZnJlc2hfZXhpdAogICAgZWxzZQoJcnVuX2luaXRfZXhpdAogICAgZmkKCiAgICBpZiBbICIkQ09NTUFORCIgPSByZXN0YXJ0IC1vICIkQ09NTUFORCIgPSByZWZyZXNoIF07IHRoZW4KCWlmIGNoYWluX2V4aXN0cyAnVVBuUCAtdCBuYXQnOyB0aGVuCgkgICAgJHtJUFRBQkxFU30tc2F2ZSAtdCBuYXQgfCBncmVwICdeLUEgVVBuUCAnID4gJHtWQVJESVJ9Ly5VUG5QCgllbHNlCgkgICAgcm0gLWYgJHtWQVJESVJ9Ly5VUG5QCglmaQoJCglpZiBjaGFpbl9leGlzdHMgZm9yd2FyZFVQblA7IHRoZW4KCSAgICAke0lQVEFCTEVTfS1zYXZlIC10IGZpbHRlciB8IGdyZXAgJ14tQSBmb3J3YXJkVVBuUCAnID4gJHtWQVJESVJ9Ly5mb3J3YXJkVVBuUAoJZWxzZQoJICAgIHJtIC1mICR7VkFSRElSfS8uZm9yd2FyZFVQblAKCWZpCgkKCWlmIGNoYWluX2V4aXN0cyBkeW5hbWljOyB0aGVuCgkgICAgJHtJUFRBQkxFU30tc2F2ZSAtdCBmaWx0ZXIgfCBncmVwICdeLUEgZHluYW1pYyAnID4gJHtWQVJESVJ9Ly5keW5hbWljCgllbHNlCgkgICAgcm0gLWYgJHtWQVJESVJ9Ly5keW5hbWljCglmaQoKICAgIGVsc2UKCXJtIC1mICR7VkFSRElSfS8uVVBuUAoJcm0gLWYgJHtWQVJESVJ9Ly5mb3J3YXJkVVBuUAoJCglpZiBbICIkQ09NTUFORCIgPSBzdG9wIC1vICIkQ09NTUFORCIgPSBjbGVhciBdOyB0aGVuCgkgICAgaWYgY2hhaW5fZXhpc3RzIGR5bmFtaWM7IHRoZW4KCQkke0lQVEFCTEVTfS1zYXZlIC10IGZpbHRlciB8IGdyZXAgJ14tQSBkeW5hbWljICcgPiAke1ZBUkRJUn0vLmR5bmFtaWMKCSAgICBmaQoJZmkKCiAgICBmaQoKICAgIHF0MSAkSVBUQUJMRVMgLUwgc2hvcmV3YWxsIC1uICYmIHF0MSAkSVBUQUJMRVMgLUYgc2hvcmV3YWxsICYmIHF0MSAkSVBUQUJMRVMgLVggc2hvcmV3YWxsCgogICAgZGVsZXRlX3Byb3h5YXJwCgogICAgaWYgWyAtZiAke1ZBUkRJUn0vbmF0IF07IHRoZW4KCXdoaWxlIHJlYWQgZXh0ZXJuYWwgaW50ZXJmYWNlOyBkbwoJICAgIGRlbF9pcF9hZGRyICRleHRlcm5hbCAkaW50ZXJmYWNlCglkb25lIDwgJHtWQVJESVJ9L25hdAoKCXJtIC1mICR7VkFSRElSfS9uYXQKICAgIGZpCgogICAgZGVsZXRlX3RjMQoKICAgIHNldHVwX2NvbW1vbl9ydWxlcwoKICAgIHNldHVwX3JvdXRpbmdfYW5kX3RyYWZmaWNfc2hhcGluZwoKICAgIGNhdCA+ICR7VkFSRElSfS9wcm94eWFycCA8PCBfX0VPRl9fCl9fRU9GX18KCiAgICBpZiBbICIkQ09NTUFORCIgIT0gcmVmcmVzaCBdOyB0aGVuCgljYXQgPiAke1ZBUkRJUn0vem9uZXMgPDwgX19FT0ZfXwpmdyBmaXJld2FsbApuZXQgaXB2NCBldGgwOjAuMC4wLjAvMApfX0VPRl9fCgljYXQgPiAke1ZBUkRJUn0vcG9saWNpZXMgPDwgX19FT0ZfXwpmdyAJPT4JbmV0CUFDQ0VQVCB1c2luZyBjaGFpbiBmdzJuZXQKbmV0IAk9PglmdwlBQ0NFUFQgdXNpbmcgY2hhaW4gbmV0MmZ3Cl9fRU9GX18KICAgIGZpCgogICAgPiAke1ZBUkRJUn0vbmF0CgogICAgaWYgWyAkQ09NTUFORCA9IHJlc3RvcmUgXTsgdGhlbgoJaXB0YWJsZXNfc2F2ZV9maWxlPSR7VkFSRElSfS8kKGJhc2VuYW1lICQwKS1pcHRhYmxlcwoJaWYgWyAtZiAkaXB0YWJsZXNfc2F2ZV9maWxlIF07IHRoZW4KCSAgICBjYXQgJGlwdGFibGVzX3NhdmVfZmlsZSB8ICRJUFRBQkxFU19SRVNUT1JFICMgVXNlIHRoaXMgbm9uc2Vuc2ljYWwgZm9ybSB0byBhcHBlYXNlIFNFTGludXgKCWVsc2UKCSAgICBmYXRhbF9lcnJvciAiJGlwdGFibGVzX3NhdmVfZmlsZSBkb2VzIG5vdCBleGlzdCIKCWZpCgoJc2V0X3N0YXRlICJTdGFydGVkIgoJcnVuX3Jlc3RvcmVkX2V4aXQKICAgIGVsc2UKCWlmIFsgJENPTU1BTkQgPSByZWZyZXNoIF07IHRoZW4KCSAgICBjaGFpbmxpc3RfcmVsb2FkCgoJICAgIHJ1bl9yZWZyZXNoZWRfZXhpdAoJICAgIGRvX2lwdGFibGVzIC1OIHNob3Jld2FsbAoJICAgIHNldF9zdGF0ZSAiU3RhcnRlZCIKCWVsc2UKCSAgICBzZXR1cF9uZXRmaWx0ZXIKCSAgICBjb25kaXRpb25hbGx5X2ZsdXNoX2Nvbm50cmFjawoKCSAgICBydW5fc3RhcnRfZXhpdAoJICAgIGRvX2lwdGFibGVzIC1OIHNob3Jld2FsbAoJICAgIHNldF9zdGF0ZSAiU3RhcnRlZCIKCSAgICBydW5fc3RhcnRlZF9leGl0CglmaQogICAgCglbICQwID0gJHtWQVJESVJ9L2ZpcmV3YWxsIF0gfHwgY3AgLWYgJChteV9wYXRobmFtZSkgJHtWQVJESVJ9L2ZpcmV3YWxsCiAgICBmaQogICAgCiAgICBkYXRlID4gJHtWQVJESVJ9L3Jlc3RhcnRlZAogICAgCiAgICBjYXNlICRDT01NQU5EIGluCglzdGFydCkKCSAgICBsb2dnZXIgLXAga2Vybi5pbmZvICIkZ19wcm9kdWN0IHN0YXJ0ZWQiCgkgICAgOzsKCXJlc3RhcnQpCgkgICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCByZXN0YXJ0ZWQiCgkgICAgOzsKCXJlZnJlc2gpCgkgICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCByZWZyZXNoZWQiCgkgICAgOzsKCXJlc3RvcmUpCgkgICAgbG9nZ2VyIC1wIGtlcm4uaW5mbyAiJGdfcHJvZHVjdCByZXN0b3JlZCIKCSAgICA7OwogICAgZXNhYwoKfQoKIwojIFN0b3AvcmVzdG9yZSB0aGUgZmlyZXdhbGwgYWZ0ZXIgYW4gZXJyb3Igb3IgYmVjYXVzZSBvZiBhICdzdG9wJyBvciAnY2xlYXInIGNvbW1hbmQKIwpzdG9wX2ZpcmV3YWxsKCkgewogICAgbG9jYWwgaGFjawoKICAgIGRlbGV0ZWNoYWluKCkgewoJcXQgJElQVEFCTEVTIC1MICQxIC1uICYmIHF0ICRJUFRBQkxFUyAtRiAkMSAmJiBxdCAkSVBUQUJMRVMgLVggJDEKICAgIH0KCiAgICBjYXNlICRDT01NQU5EIGluCglzdG9wfGNsZWFyfHJlc3RvcmUpCgkgICAgOzsKCSopCgkgICAgc2V0ICt4CgoJICAgIGNhc2UgJENPTU1BTkQgaW4KCQlzdGFydCkKCQkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHN0YXJ0IGZhaWxlZCIKCQkgICAgOzsKCQlyZXN0YXJ0KQoJCSAgICBsb2dnZXIgLXAga2Vybi5lcnIgIkVSUk9SOiRnX3Byb2R1Y3QgcmVzdGFydCBmYWlsZWQiCgkJICAgIDs7CgkJcmVmcmVzaCkKCQkgICAgbG9nZ2VyIC1wIGtlcm4uZXJyICJFUlJPUjokZ19wcm9kdWN0IHJlZnJlc2ggZmFpbGVkIgoJCSAgICA7OwoJICAgIGVzYWMKCgkgICAgaWYgWyAiJFJFU1RPUkVGSUxFIiA9IE5PTkUgXTsgdGhlbgoJCUNPTU1BTkQ9Y2xlYXIKCQljbGVhcl9maXJld2FsbAoJCWVjaG8gIiRnX3Byb2R1Y3QgQ2xlYXJlZCIKCgkJa2lsbCAkJAoJCWV4aXQgMgoJICAgIGVsc2UKCQlnX3Jlc3RvcmVwYXRoPSR7VkFSRElSfS8kUkVTVE9SRUZJTEUKCgkJaWYgWyAteCAkZ19yZXN0b3JlcGF0aCBdOyB0aGVuCgkJICAgIGVjaG8gUmVzdG9yaW5nICR7Z19wcm9kdWN0Oj1TaG9yZXdhbGx9Li4uCgoJCSAgICBnX3JlY292ZXJpbmc9WWVzCgoJCSAgICBpZiBydW5faXQgJGdfcmVzdG9yZXBhdGggcmVzdG9yZTsgdGhlbgoJCQllY2hvICIkZ19wcm9kdWN0IHJlc3RvcmVkIGZyb20gJGdfcmVzdG9yZXBhdGgiCgkJCXNldF9zdGF0ZSAiUmVzdG9yZWQgZnJvbSAkZ19yZXN0b3JlcGF0aCIKCQkgICAgZWxzZQoJCQlzZXRfc3RhdGUgIlVua25vd24iCgkJICAgIGZpCgoJCSAgICBraWxsICQkCgkJICAgIGV4aXQgMgoJCWZpCgkgICAgZmkKCSAgICA7OwogICAgZXNhYwoKICAgIGlmIFsgLW4gIiRnX3N0b3BwaW5nIiBdOyB0aGVuCglraWxsICQkCglleGl0IDEKICAgIGZpCgogICAgc2V0X3N0YXRlICJTdG9wcGluZyIKCiAgICBnX3N0b3BwaW5nPSJZZXMiCgogICAgZGVsZXRlY2hhaW4gc2hvcmV3YWxsCgogICAgcnVuX3N0b3BfZXhpdAoKICAgIGlmIFsgLWYgJHtWQVJESVJ9L25hdCBdOyB0aGVuCgl3aGlsZSByZWFkIGV4dGVybmFsIGludGVyZmFjZTsgZG8KICAgICAgCSAgICBkZWxfaXBfYWRkciAkZXh0ZXJuYWwgJGludGVyZmFjZQoJZG9uZSA8ICR7VkFSRElSfS9uYXQKCglybSAtZiAke1ZBUkRJUn0vbmF0CiAgICBmaQoKICAgIGlmIFsgLWYgJHtWQVJESVJ9L3Byb3h5YXJwIF07IHRoZW4KCXdoaWxlIHJlYWQgYWRkcmVzcyBpbnRlcmZhY2UgZXh0ZXJuYWwgaGF2ZXJvdXRlOyBkbwoJICAgIHF0IGFycCAtaSAkZXh0ZXJuYWwgLWQgJGFkZHJlc3MgcHViCgkgICAgWyAteiAiJHtoYXZlcm91dGV9JHtnX25vcm91dGVzfSIgXSAmJiBxdCAkSVAgLTQgcm91dGUgZGVsICRhZGRyZXNzIGRldiAkaW50ZXJmYWNlCgkgICAgZj0vcHJvYy9zeXMvbmV0L2lwdjQvY29uZi8kaW50ZXJmYWNlL3Byb3h5X2FycAoJICAgIFsgLWYgJGYgXSAmJiBlY2hvIDAgPiAkZgoJZG9uZSA8ICR7VkFSRElSfS9wcm94eWFycAoKCSBybSAtZiAke1ZBUkRJUn0vcHJveHlhcnAKICAgIGZpCgoKICAgIGRlbGV0ZV90YzEKICAgIHVuZG9fcm91dGluZwogICAgcmVzdG9yZV9kZWZhdWx0X3JvdXRlCgogICAgWyAtbiAiJERFQlVHIiBdICYmIGNvbW1hbmQ9ZGVidWdfcmVzdG9yZV9pbnB1dCB8fCBjb21tYW5kPSRJUFRBQkxFU19SRVNUT1JFCgogICAgcHJvZ3Jlc3NfbWVzc2FnZTIgIlJ1bm5pbmcgJGNvbW1hbmQuLi4iCgogICAgJGNvbW1hbmQgPDxfX0VPRl9fCiMKIyBHZW5lcmF0ZWQgYnkgU2hvcmV3YWxsIDQuNC4xMS42IC0gV2VkIE9jdCAzMSAyMDoyODozNyAyMDEyCiMKKnJhdwo6UFJFUk9VVElORyBBQ0NFUFQgWzA6MF0KOk9VVFBVVCBBQ0NFUFQgWzA6MF0KQ09NTUlUCipuYXQKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KQ09NTUlUCiptYW5nbGUKOlBSRVJPVVRJTkcgQUNDRVBUIFswOjBdCjpJTlBVVCBBQ0NFUFQgWzA6MF0KOkZPUldBUkQgQUNDRVBUIFswOjBdCjpPVVRQVVQgQUNDRVBUIFswOjBdCjpQT1NUUk9VVElORyBBQ0NFUFQgWzA6MF0KQ09NTUlUCipmaWx0ZXIKOklOUFVUIERST1AgWzA6MF0KOkZPUldBUkQgRFJPUCBbMDowXQo6T1VUUFVUIEFDQ0VQVCBbMDowXQotQSBJTlBVVCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIElOUFVUIC1pIGV0aDAgIC1zIDE5Mi4xNjguOC4wLzE2ICAgLWogQUNDRVBUCi1BIElOUFVUIC1pIGxvIC1qIEFDQ0VQVAotQSBJTlBVVCAtaSBsbyAtaiBBQ0NFUFQKLUEgSU5QVVQgLXAgdWRwIC1pIGV0aDAgLS1kcG9ydCA2Nzo2OCAtaiBBQ0NFUFQKLUEgRk9SV0FSRCAtbSBjb25udHJhY2sgLS1jdHN0YXRlIEVTVEFCTElTSEVELFJFTEFURUQgLWogQUNDRVBUCi1BIEZPUldBUkQgLXAgdWRwIC1pIGV0aDAgLW8gZXRoMCAtLWRwb3J0IDY3OjY4IC1qIEFDQ0VQVApDT01NSVQKX19FT0ZfXwoKICAgIGlmIFsgJD8gIT0gMCBdOyB0aGVuCgllcnJvcl9tZXNzYWdlICJFUlJPUjogJGNvbW1hbmQgRmFpbGVkLiIKICAgIGZpCgogICAgcnVuX3N0b3BwZWRfZXhpdAoKCiAgICBzZXRfc3RhdGUgIlN0b3BwZWQiCiAgICBsb2dnZXIgLXAga2Vybi5pbmZvICIkZ19wcm9kdWN0IFN0b3BwZWQiCgogICAgY2FzZSAkQ09NTUFORCBpbgogICAgc3RvcHxjbGVhcikKCTs7CiAgICAqKQoJIwoJIyBUaGUgZmlyZXdhbGwgaXMgYmVpbmcgc3RvcHBlZCB3aGVuIHdlIHdlcmUgdHJ5aW5nIHRvIGRvIHNvbWV0aGluZwoJIyBlbHNlLiBLaWxsIHRoZSBzaGVsbCBpbiBjYXNlIHdlJ3JlIHJ1bm5pbmcgaW4gYSBzdWJzaGVsbAoJIwoJa2lsbCAkJAoJOzsKICAgIGVzYWMKfQoKIwojIEhhbmRsZSB0aGUgInVwIiBhbmQgImRvd24iIGNvbW1hbmRzCiMKdXBkb3duKCkgIyAkMSA9IGludGVyZmFjZQp7CiAgICBsb2NhbCBzdGF0ZQogICAgc3RhdGU9Y2xlYXJlZAoKICAgIHByb2dyZXNzX21lc3NhZ2UzICIkZ19wcm9kdWN0ICRDT01NQU5EIHRyaWdnZXJlZCBieSAkMSIKCiAgICBpZiBzaG9yZXdhbGxfaXNfc3RhcnRlZDsgdGhlbgoJc3RhdGU9c3RhcnRlZAogICAgZWxpZiBbIC1mICR7VkFSRElSfS9zdGF0ZSBdOyB0aGVuCgljYXNlICIkKGNhdCAke1ZBUkRJUn0vc3RhdGUpIiBpbgoJICAgIFN0b3BwZWQqKQoJCXN0YXRlPXN0b3BwZWQKCQk7OwoJICAgIENsZWFyZWQqKQoJCTs7CgkgICAgKikKCQlzdGF0ZT11bmtub3duCgkJOzsKCWVzYWMKICAgIGVsc2UKCXN0YXRlPXVua25vd24KICAgIGZpCgogICAgY2FzZSAkMSBpbgoJKikKCSAgICBjYXNlICRzdGF0ZSBpbgoJCXN0YXJ0ZWQpCgkJICAgIENPTU1BTkQ9cmVzdGFydAoJCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiJGdfcHJvZHVjdCBhdHRlbXB0aW5nIHJlc3RhcnQiCgkJICAgIGRldGVjdF9jb25maWd1cmF0aW9uCgkJICAgIGRlZmluZV9maXJld2FsbAoJCSAgICA7OwoJCSopCgkJICAgIHByb2dyZXNzX21lc3NhZ2UzICIkQ09NTUFORCBvbiBpbnRlcmZhY2UgJDEgaWdub3JlZCIKCQkgICAgOzsKCSAgICBlc2FjCiAgICBlc2FjCn0KCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKIyBDb2RlIGltcG9ydGVkIGZyb20gL3Vzci9zaGFyZS9zaG9yZXdhbGwvcHJvZy5mb290ZXIKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojCiMgR2l2ZSBVc2FnZSBJbmZvcm1hdGlvbgojCnVzYWdlKCkgewogICAgZWNobyAiVXNhZ2U6ICQwIFsgb3B0aW9ucyBdIFsgc3RhcnR8c3RvcHxjbGVhcnxkb3dufHJlc2V0fHJlZnJlc2h8cmVzdGFydHxzdGF0dXN8dXB8dmVyc2lvbiBdIgogICAgZWNobwogICAgZWNobyAiT3B0aW9ucyBhcmU6IgogICAgZWNobwogICAgZWNobyAiICAgLXYgYW5kIC1xICAgICAgICBTdGFuZGFyZCBTaG9yZXdhbGwgdmVyYm9zaXR5IGNvbnRyb2xzIgogICAgZWNobyAiICAgLW4gICAgICAgICAgICAgICBEb24ndCB1bnBkYXRlIHJvdXRpbmcgY29uZmlndXJhdGlvbiIKICAgIGVjaG8gIiAgIC1wICAgICAgICAgICAgICAgUHVyZ2UgQ29ubnRyYWNrIFRhYmxlIgogICAgZWNobyAiICAgLXQgICAgICAgICAgICAgICBUaW1lc3RhbXAgcHJvZ3Jlc3MgTWVzc2FnZXMiCiAgICBlY2hvICIgICAtViA8dmVyYm9zaXR5PiAgIFNldCB2ZXJib3NpdHkgZXhwbGljaXRseSIKICAgIGVjaG8gIiAgIC1SIDxmaWxlPiAgICAgICAgT3ZlcnJpZGUgUkVTVE9SRUZJTEUgc2V0dGluZyIKICAgIGV4aXQgJDEKfQojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIEUgWCBFIEMgVSBUIEkgTyBOICAgIEIgRSBHIEkgTiBTICAgSCBFIFIgRQkJCQkgICAgICAgIwojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojCiMgU3RhcnQgdHJhY2UgaWYgZmlyc3QgYXJnIGlzICJkZWJ1ZyIgb3IgInRyYWNlIgojCmlmIFsgJCMgLWd0IDEgXTsgdGhlbgogICAgaWYgWyAieCQxIiA9ICJ4dHJhY2UiIF07IHRoZW4KCXNldCAteAoJc2hpZnQKICAgIGVsaWYgWyAieCQxIiA9ICJ4ZGVidWciIF07IHRoZW4KCURFQlVHPVllcwoJc2hpZnQKICAgIGZpCmZpCiMKIyBNYXAgVkVSQk9TRSB0byBWRVJCT1NJVFkgZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBvbGQgU2hvcmV3YWxsLWxpdGUgaW5zdGFsbGF0aW9ucwojClsgLXogIiRWRVJCT1NJVFkiIF0gJiYgWyAtbiAiJFZFUkJPU0UiIF0gJiYgVkVSQk9TSVRZPSRWRVJCT1NFCiMKIyBNYXAgb3RoZXIgb2xkIGV4cG9ydGVkIHZhcmlhYmxlcwojCmdfcHVyZ2U9JFBVUkdFCmdfbm9yb3V0ZXM9JE5PUk9VVEVTCmdfdGltZXN0YW1wPSRUSU1FU1RBTVAKZ19yZWNvdmVyaW5nPSRSRUNPVkVSSU5HCgppbml0aWFsaXplCgppZiBbIC1uICIkU1RBUlRVUF9MT0ciIF07IHRoZW4KICAgIHRvdWNoICRTVEFSVFVQX0xPRwogICAgY2htb2QgMDYwMCAkU1RBUlRVUF9MT0cKICAgIGlmIFsgJHtTSE9SRVdBTExfSU5JVF9TQ1JJUFQ6LTB9IC1lcSAxIF07IHRoZW4KCSMKCSMgV2UncmUgYmVpbmcgcnVuIGJ5IGEgc3RhcnR1cCBzY3JpcHQgdGhhdCBpc24ndCByZWRpcmVjdGluZyBTVERPVVQKCSMgUmVkaXJlY3QgaXQgdG8gdGhlIGxvZwoJIwoJZXhlYyAyPj4kU1RBUlRVUF9MT0cKICAgIGZpCmZpCgpmaW5pc2hlZD0wCgp3aGlsZSBbICRmaW5pc2hlZCAtZXEgMCAtYSAkIyAtZ3QgMCBdOyBkbwogICAgb3B0aW9uPSQxCiAgICBjYXNlICRvcHRpb24gaW4KCS0qKQoJICAgIG9wdGlvbj0ke29wdGlvbiMtfQoKCSAgICBbIC16ICIkb3B0aW9uIiBdICYmIHVzYWdlIDEKCgkgICAgd2hpbGUgWyAtbiAiJG9wdGlvbiIgXTsgZG8KCQljYXNlICRvcHRpb24gaW4KCQkgICAgdiopCgkJCVsgJFZFUkJPU0lUWSAtbHQgMiBdICYmIFZFUkJPU0lUWT0kKCgkVkVSQk9TSVRZICsgMSApKQoJCQlvcHRpb249JHtvcHRpb24jdn0KCQkJOzsKCQkgICAgcSopCgkJCVsgJFZFUkJPU0lUWSAtZ3QgLTEgXSAmJiBWRVJCT1NJVFk9JCgoJFZFUkJPU0lUWSAtIDEgKSkKCQkJb3B0aW9uPSR7b3B0aW9uI3F9CgkJCTs7CgkJICAgIG4qKQoJCQlnX25vcm91dGVzPVllcwoJCQlvcHRpb249JHtvcHRpb24jbn0KCQkJOzsKCQkgICAgdCopCgkJCWdfdGltZXN0YW1wPVllcwoJCQlvcHRpb249JHtvcHRpb24jdH0KCQkJOzsKCQkgICAgcCopCgkJCWdfcHVyZ2U9WWVzCgkJCW9wdGlvbj0ke29wdGlvbiNwfQoJCQk7OwoJCSAgICByKikKCQkJZ19yZWNvdmVyaW5nPVllcwoJCQlvcHRpb249JHtvcHRpb24jcn0KCQkJOzsKCQkgICAgViopCgkJCW9wdGlvbj0ke29wdGlvbiNWfQoKCQkJaWYgWyAteiAiJG9wdGlvbiIgLWEgJCMgLWd0IDAgXTsgdGhlbgoJCQkgICAgc2hpZnQKCQkJICAgIG9wdGlvbj0kMQoJCQlmaQoKCQkJaWYgWyAtbiAiJG9wdGlvbiIgXTsgdGhlbgoJCQkgICAgY2FzZSAkb3B0aW9uIGluCgkJCQktMXwwfDF8MikKCQkJCSAgICBWRVJCT1NJVFk9JG9wdGlvbgoJCQkJICAgIG9wdGlvbj0KCQkJCSAgICA7OwoJCQkJKikKCQkJCSAgICBzdGFydHVwX2Vycm9yICJJbnZhbGlkIC1WIG9wdGlvbiB2YWx1ZSAoJG9wdGlvbikiCgkJCQkgICAgOzsKCQkJICAgIGVzYWMKCQkJZWxzZQoJCQkgICAgc3RhcnR1cF9lcnJvciAiTWlzc2luZyAtViBvcHRpb24gdmFsdWUiCgkJCWZpCgkJCTs7CgkJICAgIFIqKQoJCQlvcHRpb249JHtvcHRpb24jUn0KCgkJCWlmIFsgLXogIiRvcHRpb24iIC1hICQjIC1ndCAwIF07IHRoZW4KCQkJICAgIHNoaWZ0CgkJCSAgICBvcHRpb249JDEKCQkJZmkKCgkJCWlmIFsgLW4gIiRvcHRpb24iIF07IHRoZW4KCQkJICAgIGNhc2UgJG9wdGlvbiBpbgoJCQkJKi8qKQoJICAgIAkJCSAgICBzdGFydHVwX2Vycm9yICItUiBtdXN0IHNwZWNpZnkgYSBzaW1wbGUgZmlsZSBuYW1lOiAkb3B0aW9uIgoJCQkJICAgIDs7CgkJCQkuc2FmZXwudHJ5fE5PTkUpCgkJCQkgICAgOzsKCQkJCS4qKQoJCQkJICAgIGVycm9yX21lc3NhZ2UgIkVSUk9SOiBSZXNlcnZlZCBGaWxlIE5hbWU6ICRSRVNUT1JFRklMRSIKCQkJCSAgICBleGl0IDIKCQkJCSAgICA7OwoJCQkgICAgZXNhYwoJCQllbHNlCgkJCSAgICBzdGFydHVwX2Vycm9yICJNaXNzaW5nIC1SIG9wdGlvbiB2YWx1ZSIKCQkJZmkKCgkJCVJFU1RPUkVGSUxFPSRvcHRpb24KCQkJb3B0aW9uPQoJCQk7OwoJCSAgICAqKQoJCQl1c2FnZSAxCgkJCTs7CgkJZXNhYwoJICAgIGRvbmUKCSAgICBzaGlmdAoJICAgIDs7CgkqKQoJICAgIGZpbmlzaGVkPTEKICAgICAgICAgICAgOzsKICAgIGVzYWMKZG9uZQoKQ09NTUFORD0iJDEiCgpjYXNlICIkQ09NTUFORCIgaW4KICAgIHN0YXJ0KQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCWlmIHNob3Jld2FsbF9pc19zdGFydGVkOyB0aGVuCgkgICAgZXJyb3JfbWVzc2FnZSAiJGdfcHJvZHVjdCBpcyBhbHJlYWR5IFJ1bm5pbmciCgkgICAgc3RhdHVzPTAKCWVsc2UKCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiU3RhcnRpbmcgJGdfcHJvZHVjdC4uLi4iCgkgICAgZGV0ZWN0X2NvbmZpZ3VyYXRpb24KCSAgICBkZWZpbmVfZmlyZXdhbGwKCSAgICBzdGF0dXM9JD8KCSAgICBbIC1uICIkU1VCU1lTTE9DSyIgLWEgJHN0YXR1cyAtZXEgMCBdICYmIHRvdWNoICRTVUJTWVNMT0NLCgkgICAgcHJvZ3Jlc3NfbWVzc2FnZTMgImRvbmUuIgoJZmkKCTs7CiAgICBzdG9wKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCXByb2dyZXNzX21lc3NhZ2UzICJTdG9wcGluZyAkZ19wcm9kdWN0Li4uLiIKCWRldGVjdF9jb25maWd1cmF0aW9uCglzdG9wX2ZpcmV3YWxsCglzdGF0dXM9MAoJWyAtbiAiJFNVQlNZU0xPQ0siIF0gJiYgcm0gLWYgJFNVQlNZU0xPQ0sKCXByb2dyZXNzX21lc3NhZ2UzICJkb25lLiIKCTs7CiAgICByZXNldCkKCWlmICEgc2hvcmV3YWxsX2lzX3N0YXJ0ZWQgOyB0aGVuCgkgICAgZXJyb3JfbWVzc2FnZSAiJGdfcHJvZHVjdCBpcyBub3QgcnVubmluZyIKCSAgICBzdGF0dXM9MgoJZWxpZiBbICQjIC1lcSAxIF07IHRoZW4KCSAgICAkSVBUQUJMRVMgLVoKCSAgICAkSVBUQUJMRVMgLXQgbmF0IC1aCgkgICAgJElQVEFCTEVTIC10IG1hbmdsZSAtWgoJICAgIGRhdGUgPiAke1ZBUkRJUn0vcmVzdGFydGVkCgkgICAgc3RhdHVzPTAKCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiJGdfcHJvZHVjdCBDb3VudGVycyBSZXNldCIKCWVsc2UKCSAgICBzaGlmdAoJICAgIHN0YXR1cz0wCgkgICAgZm9yIGNoYWluIGluICRAOyBkbwoJCWlmIGNoYWluX2V4aXN0cyAkY2hhaW47IHRoZW4KCQkgICAgaWYgcXQgJElQVEFCTEVTIC1aICRjaGFpbjsgdGhlbgoJCQlwcm9ncmVzc19tZXNzYWdlMyAiRmlsdGVyICRjaGFpbiBDb3VudGVycyBSZXNldCIKCQkgICAgZWxzZQoJCQllcnJvcl9tZXNzYWdlICJFUlJPUjogUmVzZXQgb2YgY2hhaW4gJGNoYWluIGZhaWxlZCIKCQkJc3RhdHVzPTIKCQkJYnJlYWsKCQkgICAgZmkKCQllbHNlCgkJICAgIGVycm9yX21lc3NhZ2UgIldBUk5JTkc6IEZpbHRlciBDaGFpbiAkY2hhaW4gZG9lcyBub3QgZXhpc3QiCgkJZmkKCSAgICBkb25lCglmaQoJOzsKICAgIHJlc3RhcnQpCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJaWYgc2hvcmV3YWxsX2lzX3N0YXJ0ZWQ7IHRoZW4KCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiUmVzdGFydGluZyAkZ19wcm9kdWN0Li4uLiIKCWVsc2UKCSAgICBlcnJvcl9tZXNzYWdlICIkZ19wcm9kdWN0IGlzIG5vdCBydW5uaW5nIgoJICAgIHByb2dyZXNzX21lc3NhZ2UzICJTdGFydGluZyAkZ19wcm9kdWN0Li4uLiIKCSAgICBDT01NQU5EPXN0YXJ0CglmaQoKCWRldGVjdF9jb25maWd1cmF0aW9uCglkZWZpbmVfZmlyZXdhbGwKCXN0YXR1cz0kPwoJaWYgWyAtbiAiJFNVQlNZU0xPQ0siIF07IHRoZW4KIAkgICAgWyAkc3RhdHVzIC1lcSAwIF0gJiYgdG91Y2ggJFNVQlNZU0xPQ0sgfHwgcm0gLWYgJFNVQlNZU0xPQ0sKICAgICAgICBmaQoJcHJvZ3Jlc3NfbWVzc2FnZTMgImRvbmUuIgoJOzsKICAgIHJlZnJlc2gpCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJaWYgc2hvcmV3YWxsX2lzX3N0YXJ0ZWQ7IHRoZW4KCSAgICBwcm9ncmVzc19tZXNzYWdlMyAiUmVmcmVzaGluZyAkZ19wcm9kdWN0Li4uLiIKCSAgICBkZXRlY3RfY29uZmlndXJhdGlvbgoJICAgIGRlZmluZV9maXJld2FsbAoJICAgIHN0YXR1cz0kPwoJICAgIHByb2dyZXNzX21lc3NhZ2UzICJkb25lLiIKCWVsc2UKCSAgICBlY2hvICIkZ19wcm9kdWN0IGlzIG5vdCBydW5uaW5nIiA+JjIKCSAgICBzdGF0dXM9MgoJZmkKCTs7CiAgICByZXN0b3JlKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCWRldGVjdF9jb25maWd1cmF0aW9uCglkZWZpbmVfZmlyZXdhbGwKCXN0YXR1cz0kPwoJaWYgWyAtbiAiJFNVQlNZU0xPQ0siIF07IHRoZW4KIAkgICAgWyAkc3RhdHVzIC1lcSAwIF0gJiYgdG91Y2ggJFNVQlNZU0xPQ0sgfHwgcm0gLWYgJFNVQlNZU0xPQ0sKICAgICAgICBmaQoJOzsKICAgIGNsZWFyKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCXByb2dyZXNzX21lc3NhZ2UzICJDbGVhcmluZyAkZ19wcm9kdWN0Li4uLiIKCWNsZWFyX2ZpcmV3YWxsCglzdGF0dXM9MAoJaWYgWyAtbiAiJFNVQlNZU0xPQ0siIF07IHRoZW4KCSAgICBybSAtZiAkU1VCU1lTTE9DSwoJZmkKCXByb2dyZXNzX21lc3NhZ2UzICJkb25lLiIKCTs7CiAgICBzdGF0dXMpCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJZWNobyAiJGdfcHJvZHVjdC0kU0hPUkVXQUxMX1ZFUlNJT04gU3RhdHVzIGF0ICQoaG9zdG5hbWUpIC0gJChkYXRlKSIKCWVjaG8KCWlmIHNob3Jld2FsbF9pc19zdGFydGVkOyB0aGVuCgkgICAgZWNobyAiJGdfcHJvZHVjdCBpcyBydW5uaW5nIgoJICAgIHN0YXR1cz0wCgllbHNlCgkgICAgZWNobyAiJGdfcHJvZHVjdCBpcyBzdG9wcGVkIgoJICAgIHN0YXR1cz00CglmaQoKCWlmIFsgLWYgJHtWQVJESVJ9L3N0YXRlIF07IHRoZW4KCSAgICBzdGF0ZT0iJChjYXQgJHtWQVJESVJ9L3N0YXRlKSIKCSAgICBjYXNlICRzdGF0ZSBpbgoJCVN0b3BwZWQqfGxDbGVhciopCgkJICAgIHN0YXR1cz0zCgkJICAgIDs7CgkgICAgZXNhYwoJZWxzZQoJICAgIHN0YXRlPVVua25vd24KCWZpCgllY2hvICJTdGF0ZTokc3RhdGUiCgllY2hvCgk7OwogICAgdXB8ZG93bikKCVsgJCMgLWVxIDEgXSAmJiBleGl0IDAKCXNoaWZ0CglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJdXBkb3duICRACglzdGF0dXM9MDsKCTs7CiAgICB2ZXJzaW9uKQoJWyAkIyAtbmUgMSBdICYmIHVzYWdlIDIKCWVjaG8gJFNIT1JFV0FMTF9WRVJTSU9OCglzdGF0dXM9MAoJOzsKICAgIGhlbHApCglbICQjIC1uZSAxIF0gJiYgdXNhZ2UgMgoJdXNhZ2UgMAoJOzsKICAgICopCgl1c2FnZSAyCgk7Owplc2FjCgpleGl0ICRzdGF0dXMK"
    }

###Response JSON :

    {
       "result": "true"
    }



**/shorewall/client/:group/:action,  Action API is to start/status/clear/stop/restart the shorewall service on shorewall-lite clients :**



**POST /shorewall/client/:group/start**

**Describe Service:**

    Verb  URI                                                  Description
    POST  /shorewall/client/cpn-client1/start                  Start of the firewall service on shorewall-lite clients


    
###Response JSON :

    {
       "result": "Starting Shorewall Lite.... done. "
    }

 
**POST /shorewall/client/:group/restart**

**Describe Service:**

    Verb  URI                                                  Description
    POST  /shorewall/client/cpn-client1/restart                Restarts of the firewall service on shorewall-lite clients


    
###Response JSON :

    {
       "result": "Starting Shorewall Lite.... done. "
    }

**POST /shorewall/client/:group/status**

**Describe Service:**

    Verb  URI                                                  Description
    POST  /shorewall/client/cpn-client1/status                 Gets the firewall service status  on shorewall-lite clients


    
###Response JSON :
 
     {
       "result": "Shorewall Lite-4.4.11.6 Status at clpstpdfc78 - Wed Oct 31 20:45:58 IST 2012 Shorewall Lite is running State:Started (Wed Oct 31 20:45:01 IST 2012) "
    }

**POST /shorewall/client/:group/stop**

**Describe Service:**

    Verb  URI                                                Description
    POST  /shorewall/client/cpn-client1/stop                 Stops the firewall service on shorewall-lite clients

###Response JSON :

    {
       "result": "Stopping Shorewall Lite.... done. "
    }


**POST /shorewall/client/:group/clear**

**Describe Service:**

    Verb  URI                                               Description
    POST  /shorewall/client/cpn-client1/clear               Clears the firewall service on shorewall-lite clients

###Response JSON :


    {
       "result": "Clearing Shorewall Lite.... done. "
    }

**POST /shorewall/client/:group/restart**

**Describe Service:**

    Verb  URI                                            Description
    POST  /shorewall/client/cpn-client1/restart          Restarts the firewall service on shorewall-lite clients

###Response JSON :

    {
       "result": "Restarting Shorewall Lite.... done. "
    }

