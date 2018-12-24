#!/bin/sh

VOLTAGE="/sys/class/power_supply/BAT0/voltage_now"
CAPACITY="/sys/class/power_supply/BAT0/capacity"

echo -n "`date`|" 

if  [ -e "$VOLTAGE" ]; then
	echo -n "`cat $VOLTAGE`,"
else
	#voltage file is not found.
	echo -n "0," 
fi

if  [ -e "$CAPACITY" ]; then
	echo -n "`cat $CAPACITY`"
else
	#capacity file is not found.
	echo -n "0" 
fi
echo #enter a new line at the end
