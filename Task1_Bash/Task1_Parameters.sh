#!/bin/sh
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo -e "List of available arguments: \n--all \n--target"
elif [ $# -eq 1 ]; then
    while test $# -gt 0
	do
	case "$1" in
	      --all)  
                 ip4="$(/sbin/ip -o -4 addr list ens33 | awk '{print $4}' | cut -d/ -f1)/24"
                 nmap -sn $ip4
                 echo "Argument --all"
		;;
	     --target)
		 ss -tlpn	
		 echo "Argument --target"
		;;
	     --*) echo "Bad option"
                ;;
	     -*) echo "Bad option"
	       ;;
	     *) echo "Bad option"
	       ;;
	esac
	shift 
    done
else
   echo "Unknown argument"
fi
