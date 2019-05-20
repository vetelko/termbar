#!/bin/sh

# this is example. content of the termbar is up to you.
# Please share your ideas. :)

while true; do
	date=`date`
	user=`whoami`
	memos="" #`cat /home/$user/work/openbsd/memoize | sort -R | head -n1`
	terms=`ps -c -U $user | grep st | wc -l | tr -s ' '`
	sshs=`ps -c -U $user | grep ssh | wc -l | tr -s ' '`
	part=`df -h | tail -n+2 | awk '{print $6 " " $5}' | paste -s - | tr '\t' ' '`
	cpu=`sysctl hw.sensors.cpu0.temp0 | cut -d "=" -f 2 | cut -d "." -f 1`
	bat=`apm -l`
	vol=$((`mixerctl -n outputs.master|cut -f 1 -d ','`*100/255))
	
	printf "Termbar: %-5s %s | terms:%s | sshs:%s | bat:%s%% | vol:%s%% | cpu:%s° | %s\r" \
		"$memos" "$part" "$terms" "$sshs" "$bat" "$vol" "$cpu" "$date"

	sleep 5
done

