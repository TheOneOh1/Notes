#!/bin/bash
function check(){
	which host &> /dev/null
	if [ "$?" != "0" ];then
		printf "Error: host command not found.\n"
		exit 1
	fi
}
function valid_domain(){
	 echo "$target" | grep -E '^([a-zA-Z0-9](([a-zA-Z0-9-]){0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}$' &> /dev/null

 if [[ "$?" -gt "0" ]];then 
	echo "-------------------------------------------------------"
 	echo "Domain: $target seems down or invalid. Make sure its a valid one."
	echo "-------------------------------------------------------"

 	exit 1
 fi
}


function help(){
	printf "\tSub Domain Enum\t\n"
	printf -- "-d\t:\tDomain as target [domain.tld]\n"
	# -- : Used to ignore "-" in printf
	printf -- "-f:\t:\tWordlist\n"
}
function main(){
	while read -r sub;do
        if host "$sub.$target" &> /dev/null;then
                echo "$sub.$target"
        fi
	done < $wordlist
}
# bash script.sh -d tesla.com -f wordlist.txt\
while [ 2 -le $# ];do
	case "$1" in
		"-d")
			target=$2
			shift
			;;
		"-f")
			wordlist=$2
			shift
			break
			;;
		"-h"|"--help")
				help
				exit 0
				;;
		"")
			printf "One argument required. Use \"-h/--help\"\n"
			help
			exit 1
			;;	
		*)
			printf "Error: $1 invalid argument. Use \"-h/--help\"\n"
			exit 1
			;;
	esac
	shift
done

if [[ ! -z "$target" ]];then
        valid_domain
else
	echo "-------------------------------------------------------"
	echo "No Target Domain given. Make sure you go through Help"
	echo "-------------------------------------------------------"
        help
        exit 1
fi

if [ -z "$wordlist" ]; then
	echo "-------------------------------------------------------"
	echo "Wordlist Required. Make sure you go through Help"
	echo "-------------------------------------------------------"
	help
	exit 1
fi  

main
