#!/bin/bash
set -e

echo "Testing server monitor..."

output=$(bash scripts/server-monitor.sh)

if echo "$output" | grep -q "Memory usage:"; then
    echo "PASS: Memory usage output found"
else
    echo "FAIL: Memory usage output missing"
    exit 1
fi
