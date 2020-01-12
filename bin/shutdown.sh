#! /bin/sh

option=`echo -e "Yes\nNo"|dmenu -i -p "Do you want to shutdown your computer?"`
if [ "$option" = 'Yes' ]; then
	runas killall dhcpcd wpa_supplicant
	shutdown now
fi
