#!/bin/sh

# this is example. content of the termbar is up to you.
# Please share your ideas. :)

while true; do
	wm_name="cwm"
	cpu_temp=`sysctl hw.sensors.cpu0.temp0 | cut -d "=" -f 2 | cut -d "." -f 1`
	date=`date`
	echo -en "$wm_name - cpu:$cpu_temp° - $date\r"
	sleep 1
done
