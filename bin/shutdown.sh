#! /bin/sh

option=`echo -e "Yes\nNo"|dmenu -i -p "Do you want to shutdown your computer?"`
if [ "$option" = 'Yes' ]; then
	shutdown now
fi
