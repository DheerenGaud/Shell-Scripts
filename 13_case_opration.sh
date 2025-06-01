#!/bin/bash

echo "This script gives System Information"
echo "a -> Today's Date and Time"
echo "b -> Current Directory"
echo "c -> RAM Info"
echo "d -> Disk Info"
echo "e -> List of Files in Current Directory"
echo "f -> CPU Info"
echo "g -> Currently Logged In Users"
echo "h -> System Uptime"
echo "i -> IP Address of System"
echo "j -> OS Version"
echo "k -> Number of Running Processes"

read -p "Select option: " option

case $option in
    a)
        echo "Date and Time: "
        date ;;
    b)
        echo "Current Directory: "
        pwd ;;
    c)
        echo "RAM Info: "
        free -h ;;
    d)
        echo "Disk Info: "
        df -h ;;
    e)
        echo "Files in Current Directory: "
        ls ;;
    f)
        echo "CPU Info: "
        lscpu ;;
    g)
        echo "Logged In Users: "
        who ;;
    h)
        echo "System Uptime: "
        uptime ;;
    i)
        echo "IP Address: "
        hostname -I ;;
    j)
        echo "OS Version: "
        cat /etc/os-release ;;
    k)
        echo "Running Processes: "
        ps aux | wc -l ;;
    *)
        echo "Wrong Option"
esac

