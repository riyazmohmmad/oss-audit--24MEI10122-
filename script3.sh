#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Riyaz Mohammad
# Registation number : 24MEI10122

# List of directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "      Directory Audit Report"
echo "======================================"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Checking Git Config Directory"
echo "--------------------------------"

# Check Git config directory
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    ls -l $GIT_CONFIG
else
    echo "Git config file not found"
fi
