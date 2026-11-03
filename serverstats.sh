#!/bin/bash

echo "===Server stats==="
echo  "1  total CPU usage"
echo  "2 total RAM usage"
echo "3 total disk usage"
echo "4 top 5 proccess by CPU"
echo "5 top 5 proccess by RAM"
echo "6 server temperature"



read -p  "choose an option:" choice 

if [ "$choice" -eq 1 ]; then
 top
elif [ "$choice" -eq 2 ]; then
free -h
elif [ "$choice" -eq 3 ]; then
df -h
elif [ "$choice" -eq 4 ]; then
ps aux --sort=-%cpu | head -n 6
elif [  "$choice" -eq 5 ]; then
ps aux --sort=-%mem | head -n 6
elif [ "$choice" -eq 6 ]; then
sensors
fi
