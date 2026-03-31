#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Aditya Raj Singh

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================"
echo "Directory Audit Report"
echo "================================"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "================================"
echo "Git Configuration Check"
echo "================================"

# Check Git global config
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    echo "Git config file exists:"
    ls -l $GIT_CONFIG
else
    echo "Git config file not found."
fi#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Check config directory of software (example: Apache)
CONFIG_DIR="/etc/apache2"

echo "----------------------"
echo "Software Config Check"

if [ -d "$CONFIG_DIR" ]; then
    ls -ld $CONFIG_DIR
else
    echo "Config directory not found."
fi
