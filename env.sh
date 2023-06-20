#!/bin/sh

ip=$(ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

i=0
while [ -z $ip ]
do
        sleep 1
        ip=$(ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
        ((i++))
        if [[ $i -eq 30 ]]; then
                break
        fi
done

export ROS_IP="$(echo $ip | xargs)"
export ROS_HOSTNAME=$ROS_IP
export ROS_MASTER_URI=http://$ROS_HOSTNAME:11311
