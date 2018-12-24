#!/bin/sh

while [ 1 ]
do
	STATE=`cat /sys/class/power_supply/BAT0/status`
	PERCENT=`cat /sys/class/power_supply/BAT0/capacity`
	DATE=`date`

	if [ $STATE = "Discharging" ]; then
		STATE_CHAR='-'
	else
		STATE_CHAR='+'
	fi

	echo "$DATE | [ $STATE_CHAR ] $PERCENT %"
	sleep 1
done
