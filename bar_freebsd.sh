#!/bin/sh

print_time()
{
	date +%H:%M
}

print_network()
{
	ssid=$(ifconfig wlan0 | grep 'ssid' | awk -F ' ' '{ print $2 }')
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
	top -b | grep "Mem:" | awk -F ' ' '{ print "ram: " $2 }' 
}

print_uptime()
{
	uptime | awk -F ',' '{ print $1 }' | awk -F 'up ' ' { print $2 }'
}

print_battery()
{
    acpiconf -i 0 | grep "Remaining capacity" | awk -F ' ' '{ print $3 }'
}

lemonbar_input()
{
	while :
	do
		echo "%{l}up: $(print_uptime) | $(print_ram) | $(print_network) %{c}$(print_time) %{r}$(print_battery)"
		sleep 5;
	done
}

lemonbar_input | lemonbar -B "#80728484"
