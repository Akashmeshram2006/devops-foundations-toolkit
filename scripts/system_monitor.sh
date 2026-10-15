
#!/bin/bash

# DevOps Foundations Toolkit - System Monitor

LOG_FILE="$HOME/devops/devops-foundations/logs/system_monitor.log"

{
    echo "================================"
    echo "       SYSTEM MONITOR"
    echo "================================"
    echo "Date and Time:"
    date

    echo ""
    echo "Disk Usage:"
    df -h /

    echo ""
    echo "Memory Usage:"
    free -h

    echo ""
    echo "Top Running Processes:"
    ps aux --sort=-%cpu | head -n 6

    echo ""
    echo "System monitoring completed."
    echo ""
} | tee -a "$LOG_FILE"

