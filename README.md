# DevOps Foundations Toolkit

## Overview
A beginner-friendly DevOps project built using Linux, Bash scripting, and Git. It combines system monitoring, configuration backups, and network diagnostics into a collection of reusable tools.

## Features
- **System Monitor:** Displays disk usage, memory usage, date and time, and top CPU-consuming processes.
- **Automatic Logging:** Saves monitoring reports to `logs/system_monitor.log`.
- **Backup Script:** Creates timestamped compressed backups of configuration files.
- **Network Diagnostic:** Checks local IP addresses, default gateway, DNS resolution, and HTTPS connectivity.

## Project Structure
```text
devops-foundations/
├── scripts/
│   ├── system_monitor.sh
│   ├── backup.sh
│   └── network_diagnostic.sh
├── config/
│   └── app.conf
├── backups/
├── logs/
├── docs/
├── .gitignore
└── README.md
```

## Requirements
- Linux or Ubuntu on WSL
- Bash
- Standard Linux utilities: `df`, `free`, `ps`, `tar`, `ip`, and `getent`
- `curl` for HTTPS connectivity checks
- Git for version control

## How to Run

Run these commands from the project directory:

```bash
bash scripts/system_monitor.sh
bash scripts/backup.sh
bash scripts/network_diagnostic.sh
```

Monitoring reports are saved in `logs/system_monitor.log`. Compressed configuration backups are saved in `backups/`.

## Skills Demonstrated
- Linux commands and filesystem navigation
- Bash scripting and conditional statements
- System resource monitoring
- File backups and compression
- IP addressing, DNS, gateway, and HTTPS troubleshooting
- Git version control

## Future Improvements
- Add command-line options and better error handling.
- Schedule monitoring with cron.
- Add automated tests and a GitHub Actions workflow.
- Containerize the toolkit using Docker.
- Deploy it on a cloud virtual machine.

## Disclaimer
This is a learning project. The scripts are intended for a local development environment and have not been designed as production-grade monitoring or backup software.
