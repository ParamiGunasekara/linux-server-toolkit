#!/bin/bash

LOG_FILE="${LOG_FILE:-/var/log/syslog}"

echo "===== Linux Log Monitor ====="

if [ ! -r "$LOG_FILE" ]; then
    echo "ERROR: Cannot read log file: $LOG_FILE"
    exit 1
fi

echo "===== Recent System Logs ====="
tail -n 5 "$LOG_FILE"

echo "===== Recent Errors ====="
grep -i "error" "$LOG_FILE" | tail -n 5

echo "===== Recent Warnings ====="
grep -i "warning" "$LOG_FILE" | tail -n 5

echo "===== Monitoring Complete ====="
