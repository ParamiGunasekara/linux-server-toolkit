# Linux Server Management Toolkit

[![Bash Script Checks](https://github.com/ParamiGunasekara/linux-server-toolkit/actions/workflows/bash-check.yml/badge.svg)](https://github.com/ParamiGunasekara/linux-server-toolkit/actions/workflows/bash-check.yml)

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
├── .github/
│   └── workflows/
│       └── bash-check.yml
├── docs/
│   └── linux-commands.md
├── scripts/
│   ├── server-monitor.sh
│   ├── disk-alert.sh
│   └── log-monitor.sh
├── tests/
│   ├── sample.log
│   ├── test-server-monitor.sh
│   ├── test-disk-alert.sh
│   └── test-log-monitor.sh
├── .gitignore
└── README.md
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


### 4. Automated CI Pipeline

This project uses GitHub Actions to automatically validate and test Bash scripts whenever code is pushed to `main` or a pull request targets `main`.

The CI pipeline includes:

- Bash syntax validation using `bash -n`
- Static code analysis using ShellCheck
- Automated Server Monitor Test
- Automated Disk Alert Tests
- Automated Log Monitor Test
- Automatic pass/fail reporting through GitHub Actions

Workflow file: `.github/workflows/bash-check.yml`

### Automated Tests

Run all tests locally:

```bash
bash tests/test-server-monitor.sh
bash tests/test-disk-alert.sh
bash tests/test-log-monitor.sh
```

The Log Monitor Test uses `tests/sample.log` to simulate system logs without requiring administrator permissions.

## Skills Practiced

- Linux command-line operations
- Bash scripting and automation
- Server health monitoring
- Log analysis and troubleshooting
- Git version control
- GitHub and SSH authentication
- GitHub Actions CI/CD
- Bash syntax validation
- ShellCheck static analysis
- Automated functional smoke testing
- CI pipeline debugging


## Future Improvements

- Add configurable alert thresholds
- Improve error handling in Bash scripts
- Send alerts using email or Slack
- Add Docker-based testing
- Expand CI pipeline with additional quality checks


## Automated Disk Monitoring with Cron

Cron is used to run the disk monitoring script automatically every 5 minutes on Ubuntu Linux.

### Configure Cron

Open the user crontab:

```bash
crontab -e
```

Add the following scheduled job:

```cron
*/5 * * * * /bin/bash /home/parami/linux-server-toolkit/scripts/disk-alert.sh >> /home/parami/linux-server-toolkit/logs/disk-monitor.log 2>&1
```

Create the log directory before using this job:

```bash
mkdir -p logs
```

The schedule `*/5 * * * *` runs every 5 minutes.

### Verify Cron

Check the Cron service:

```bash
systemctl status cron
```

View the monitoring results:

```bash
tail -n 10 logs/disk-monitor.log
```

Check Cron execution history:

```bash
sudo grep "disk-alert.sh" /var/log/syslog | tail -n 5
```

### Important Notes

- Cron runs only while the Ubuntu VM is running and the Cron service is active.
- Monitoring output is appended to `logs/disk-monitor.log`.
- Generated log files are excluded from Git using `.gitignore`.
- Update the absolute paths in the Cron job when using a different username or project location.
