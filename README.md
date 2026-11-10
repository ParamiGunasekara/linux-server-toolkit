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
├── scripts/
│   ├── server-monitor.sh
│   ├── disk-alert.sh
│   └── log-monitor.sh
├── tests/
│   └── test-server-monitor.sh
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

This project uses GitHub Actions to automatically validate and test Bash scripts whenever code is pushed to the main branch or a pull request targets main.

The CI pipeline includes:

- Bash syntax validation using `bash -n`
- Static code analysis using ShellCheck
- Automated functional smoke testing of the server monitoring script
- Automatic pass/fail reporting through GitHub Actions

Workflow file: `.github/workflows/bash-check.yml`

Test file: `tests/test-server-monitor.sh`

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
- Add automated tests for disk and log monitoring
- Send alerts using email or Slack
- Add Docker-based testing
- Expand CI pipeline with additional quality checks

