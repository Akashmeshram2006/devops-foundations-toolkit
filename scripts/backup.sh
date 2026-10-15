
#!/bin/bash

# DevOps Foundations Toolkit - Backup Script

SOURCE_DIR="$HOME/devops/devops-foundations/config"
BACKUP_DIR="$HOME/devops/devops-foundations/backups"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/config_backup_$TIMESTAMP.tar.gz"

# Check whether the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

# Create the backup directory if needed
mkdir -p "$BACKUP_DIR"

# Create a compressed backup
if tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .; then
    echo "Backup completed successfully!"
    echo "Backup saved at: $BACKUP_FILE"
else
    echo "Error: Backup failed."
    exit 1
fi
