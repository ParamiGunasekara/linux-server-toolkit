#!/bin/bash

echo "===== Disk Usage Alert ====="

usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Current Disk Usage: $usage%"

if [ "$usage" -ge 80 ]; then
    echo "WARNING: Disk usage is high!"
else
    echo "OK: Disk usage is normal."
fi
