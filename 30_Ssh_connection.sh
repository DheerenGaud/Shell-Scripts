#!/bin/bash

# Run nmap and store output
output=$(sudo nmap -p 22,443,80,20 192.168.0.106)

# Check if port 22 is open
if echo "$output" |  grep "open     ssh"; then
    echo "Port 22 is open. Trying SSH..."
    ssh dheeren@192.168.0.106
else
    echo "Port 22 is closed. Cannot SSH."
fi

