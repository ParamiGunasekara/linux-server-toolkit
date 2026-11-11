
#!/bin/bash
set -e

echo "Testing Log Monitor..."

output=$(LOG_FILE=tests/sample.log bash scripts/log-monitor.sh)

echo "$output" | grep -q "Database connection failed"
echo "$output" | grep -q "Disk usage is high"
echo "$output" | grep -q "Network connection lost"
echo "$output" | grep -q "Monitoring Complete"

echo "PASS: Log monitoring test successful"
