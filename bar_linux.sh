#!/bin/sh

print_time()
{
	date +%H:%M
}

print_network()
{
	ssid=$(iw wlan0 info | grep 'ssid' | awk -F ' ' '{ print $2 }')
	if [ -z $ssid ]
	then
		echo "ssid: none";
	else
		echo "ssid: $ssid";
	fi
}

print_ram()
{
	#top_out=$(top -b)
	#echo "$top_out" | grep "CPU:" | awk -F ' ' '{ printf "cpu: %d%%", $2 }'
	top -b -n1 | grep "Spch:" | awk -F ' ' '{ print "ram: " $7 }' 
}

print_uptime()
{
	uptime | awk -F ',' '{ print $1 }' | awk -F 'up ' ' { print $2 }'
}

lemonbar_input()
{
	while :
	do
		echo "%{l}up: $(print_uptime) | $(print_ram) | $(print_network) %{c}$(print_time)"
		sleep 5;
	done
}

lemonbar_input | lemonbar -B "#80728484"
