#!/bin/bash

echo "===== Linux Log Monitor ====="

echo "===== Recent System Logs ====="
sudo tail -n 5 /var/log/syslog

echo "===== Recent Errors ====="
sudo grep -i "error" /var/log/syslog | tail -n 5

echo "===== Recent Warnings ====="
sudo grep -i "warning" /var/log/syslog | tail -n 5

echo "===== Monitoring Complete ====="
