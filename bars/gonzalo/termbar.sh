#!/bin/sh

while true; do
        wm_name="cwm"
        cpu_speed=$(sysctl hw.cpuspeed | cut -d "=" -f 2 | cut -d "." -f 1)
        cpu_temp=$(sysctl hw.sensors.cpu0.temp0 | cut -d "=" -f 2 | cut -d "." -f 1)
        ram=$(top | grep Memory | awk {'print $3'})
        bat=$(sysctl hw.sensors.acpiac0.indicator0 | cut -d "=" -f 2 | cut -d "." -f 1)
        bat_charge=$(apm | grep Battery | awk {'print $4'})
        date=$(date)
        nwid=$(ifconfig | grep ieee | awk {'print $3'})
        ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
        echo -en "  $USER | $date | CPU: $cpu_speed GHz - $cpu_temp° | Ram: $ram | Bat: $bat_charge - $bat | Nwid: $nwid | Public IP: $ip\r"
        sleep 1
done
