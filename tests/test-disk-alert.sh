#!/bin/bash
set -e

echo "Testing disk alert..."

check_usage() {
    usage="$1"
    expected="$2"

    output=$(DISK_USAGE_OVERRIDE="$usage" bash scripts/disk-alert.sh)

    if [[ "$output" == *"$expected"* ]]; then
        echo "PASS: Disk usage $usage%"
    else
        echo "FAIL: Disk usage $usage%"
        exit 1
    fi
}

check_usage 40 "OK: Disk usage is normal."
check_usage 79 "OK: Disk usage is normal."
check_usage 80 "WARNING: Disk usage is high!"
check_usage 95 "WARNING: Disk usage is high!"

echo "All disk alert tests passed!"
