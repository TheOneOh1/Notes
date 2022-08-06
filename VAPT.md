# VAPT

### Vulnerability Assessment and Penetration Testing

[ Blue, Red and Purple Teams of Cyber Security ]

**Red Team**
	- Offensive Security Professional

**Blue Team** 
	- Defensive Security Specialist

**Purple Team**
	- Manages both Red and Blue Teams

___________________________________________________________________________________


### TCP Flags 

- SYNC
- ACK
- Reset
- Push
- Urgent
- Fin

___________________________________________________________________________________

### 3 Way Handshake


**source** ---- *SYNC* ---------> **destination**

**source** <--- *SYNC / ACK* ---- **destination**

**source** ---- *ACK* ----------> **destination**

___________________________________________________________________________________


### NMAP

- **Network Mapper** 
	-> Utility used to identify assets and map them in a network

**Types of Discoveries by NMAP**

- Host
- Port
- Service / Version
- OS 
- Bypass Scan protection against Firewall
- NSE to scan in depth

**State of Ports**

- Open
		port open, 2 way communication active

- Closed
		port may be closed but service may be availble on that port

- Filtered
		communication filtered by the firewall

- Open / Filtered
		communication filtered and communication active at the target

- Closed / Filtered
		port closed, service maybe availble but filtered by firewall

___________________________________________________________________________________

## Scanning Techniques

**1) TCP Scan (Full open Scan)**
- Checks if port alive or dead by 3-Way-Handshake

[ If you execute nmap using Regular User, it will use Full Open Scan by default]
[ By default nmap will scan maximum of 1000 ports ]

```
nmap -sT <target>
```
___________________________________________________________________________________

**2) SYN SCAN [ half open scan ]**
- Check if port is alive or dead by sending SYNC and when target sends SYN/ACK, we will terminate the communication

```
nmap -sS <target>
nmap -sS 192.168.80.128
```
___________________________________________________________________________________

**3) Service & Version Scan**
- Shows version of service that is active on ports
- (s) Scan, (S) Half Open, (V) Version

```
nmap -sSV example.com
```
___________________________________________________________________________________

**4) OS Scan**
- (O) shows OS 

```
> nmap -O <target>
```
___________________________________________________________________________________

**5) Aggresive Scan**
- Shows all the details such as Host, Port, Version, OS and default NSE discovery
[ NSE - Nmap Script Engine ]

```
nmap -A <target>
```
___________________________________________________________________________________

**6) NULL Scan**
- Source sends Null Flag and if target sends Reset Flag then port up and active if not sends unreachable

```
nmap -sN <target>
```
___________________________________________________________________________________

**7) FIN Scan**
- Source sends FIN Flag and if target sends Reset Flag then port up and active if not sends unreachable

```
nmap -sF <target>
```
___________________________________________________________________________________

**8) XMAS Scan**
- Source sends FIN, Push, Urgent Flag and if target sends Reset Flag then port up and active if not sends unreachable

```
nmap -sX <target>
```
___________________________________________________________________________________

## Istallation NMAP

```
apt install nmap -y

nmap <options><scan-type> <target>

nmap -sT 192.168.80.128										--- one ip target
nmap -sT 192.168.80.128 192.168.80.129						--- multiple ip target
nmap -sT 192.168.80.1-128										--- number of ip range
nmap -sT 192.168.80.1-128 --exclude 192.168.80.10				--- range with ip exclusion
nmap -sT 192.168.80.0/24										--- whole network
nmap -sT example.com 											--- scan domain
nmap -sT -iL file.txt											--- (i) Input (L) List 

nmap -sT 192.168.80.128 -p80							--- just scan port 80		
nmap -sT 192.168.80.128 -p80,443						--- scan multiple ports seperated by comma
nmap -sT 192.168.80.128 -p80-100						--- scan range of ports
nmap -sT 192.168.80.128 -p-							--- scan the entire ports range

nmap -sT 192.168.80.128
[ press "space bar" to debug ]

nmap -sT 192.168.80.128 -v 							--- (v) Verbose

nmap -sT 192.168.80.128 -p22,80 --reason				--- (reason) shows reason for port status

nmap -sS tesla.com -p80 -n							--- (n) not resolve, does not resolve the domain

```
________________________________________________________________

- [ contains MAC prefixes ]

```
cat /usr/share/nmap/nmap-mac-prefixes
```

- [ NSE Script Location ]

```
cd /usr/share/nmap/scripts/
```
- How to Use Scripts

```
nmap -sSV <domain.tld> -p80 --script=http-put.nse
[ to use particular script ]

nmap -sSV <domain.tld> -p80 --script=*http*
[ to use all the scripts related to "http" ]
```
___________________________________________________________________________________

**Saving the output of Nmap query**

```
-oN <file-name> : nmap Format
-oX <file-name> : XML Format
-oG <file-name> : Greppable Format
-oA <file-name> : All format
```

eg.
```
nmap -sS tesla.com -p80 -oN nmap
```
___________________________________________________________________________________

**[ Specify Source Port]**

```
nmap -sS <target> -p80 --source-port 53
```

___________________________________________________________________________________

```
nmap -sS -p80,443,25 --min-parallelism 10 --min-hostgroup 10 --max-hostgroup 20 --max-retries 2 --max-scan-delay 5 <target-range>
```
```
--min-parallelism        [min parallel tasks]
--min-hostgroup         [min hosts scan at a time]
--max-retries               [max port scan retries]
--max-scan-delay        [max delay between each scan]
```
___________________________________________________________________________________
