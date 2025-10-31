#!/usr/bin/env bash

while true; do

	battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
	is_charging=$(cat /sys/class/power_supply/BAT0/status)

	echo "Battery level: $battery_level%"
	echo "Battery status: $is_charging"

	if [ "$battery_level" -le 100 ]; then
		notify-send -u normal "Battery level: $battery_level%" -i battery
	fi

	sleep 5 
done

