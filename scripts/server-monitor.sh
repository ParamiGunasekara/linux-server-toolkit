
#!/bin/bash
echo "===== Linux Server Monitoring Report ====="

echo "Server Uptime:"

uptime

echo "Memory usage:"
free -h

echo "Disk Usage:"
df -h /

echo "Runing Processes:"
ps aux | head -n 6
