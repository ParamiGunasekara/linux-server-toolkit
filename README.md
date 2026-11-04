# Linux Server Management Toolkit
 This is my beginner DevOps project.

## Tools
- Ubuntu Linux
- VirtualBox
- MobaXterm
- Bash
- Git and Github

## Project Goals
- Learn Linux Commands
- Monitor server health
- Automate tasks using Bash
- Practice Git and Github

## Project Structure

```text
linux-server-toolkit/
├── README.md
└── scripts/
    ├── server-monitor.sh
    ├── disk-alert.sh
    └── log-monitor.sh
```

## Features

### 1. Server Health Monitoring
Script: `scripts/server-monitor.sh`

- Check server uptime
- Monitor memory usage
- Check disk space
- Display running processes

Run:
```bash
bash scripts/server-monitor.sh
```

### 2. Disk Usage Alert
Script: `scripts/disk-alert.sh`

- Check root filesystem usage
- Display a warning when disk usage reaches 80%

Run:
```bash
bash scripts/disk-alert.sh
```

### 3. Linux Log Monitoring
Script: `scripts/log-monitor.sh`

- Display the latest 5 system log entries
- Find recent error messages
- Find recent warning messages

Run:
```bash
bash scripts/log-monitor.sh
```

The log monitoring script reads `/var/log/syslog`
and may require sudo permissions.

## Skills Practiced

- Linux command-line operations
- Bash scripting
- Server health monitoring
- Log analysis and troubleshooting
- Git version control
- GitHub and SSH authentication

## Future Improvements

- Automate monitoring using cron
- Save monitoring results to log files
- Add configurable alert thresholds
- Improve error handling
- Add automated testing with GitHub Actions
