#!/bin/bash
clear
echo
echo "########### Cryptocurrency Coffee Club cpuminer Autostart ###########"
echo "########### The server will reboot when the script is complete ###########"

FILE="/usr/bin/minerd"
if [ -e ${FILE} ]; then
	while true; do
		echo "########### WARNING: File already exists [${FILE}], it will be replaced by this script. ###########"
		echo "Would you like to continure? Enter [Y]es/[N]o"
		read n
		if [ $n = "Yes" -o $n = "yes" -o $n = "YES" -o $n = "Y" -o $n = "y" ]; then
			echo "File [${FILE}] will be replaced during this script."
			break
		elif [ $n = "No" -o $n = "no" -o $n = "NO" -o $n = "N" -o $n = "n" ]; then
			echo "File [${FILE}] will be replaced and script will exit now."
			exit 2
		else
			echo "Non-acceptable option entered... Press [Enter] to try again."
			read repeat
		fi
	done
fi

FILE="/etc/init/minerd.conf"
if [ -e ${FILE} ]; then
        while true; do
                echo "########### WARNING: File already exists [${FILE}], it will be replaced by this script. ###########"
                echo "Would you like to continure? Enter [Y]es/[N]o"
                read n
                if [ $n = "Yes" -o $n = "yes" -o $n = "YES" -o $n = "Y" -o $n = "y" ]; then
                        echo "File [${FILE}] will be replaced during this script."
                        break
                elif [ $n = "No" -o $n = "no" -o $n = "NO" -o $n = "N" -o $n = "n" ]; then
                        echo "File [${FILE}] will be replaced and script will exit now."
                        exit 2
                else
                        echo "Non-acceptable option entered... Press [Enter] to try again."
                        read repeat
                fi
        done
fi

FILE="/home/${LOGNAME}/cpuminer-2.3.3/minerd"
if [ -e ${FILE} ]; then
        echo "########### INFO: Using executable file [${FILE}]. ###########"
else
	echo "########### WARNING: Executable file [${FILE}] not present in expected location. Script will exit now. ###########"
	exit 2
fi

FILE="/home/${LOGNAME}/cpuminer-2.3.3/minerd"
if [ -e ${FILE} ]; then
        echo "########### INFO: Using executable file [${FILE}]. ###########"
else
        echo "########### WARNING: Executable file [${FILE}] not present in expected location. Script will exit now. ###########"
        exit 2
fi


touch /usr/bin/minerd
touch /etc/init/minerd.conf

