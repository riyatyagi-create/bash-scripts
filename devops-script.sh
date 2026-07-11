#!/bin/bash

APP_NAME="Meri App"

function check_status() {
    SERVICE=$1
    STATUS=$(systemctl is-active $SERVICE)
    if [ "$STATUS" = "active" ]; then
        echo "[OK] $SERVICE chal raha hai"
    else
        echo "[FAIL] $SERVICE band hai"
    fi
}

echo "=== $APP_NAME Status Check ==="
echo "Date: $(date)"
echo "User: $(whoami)"
check_status "nginx"
check_status "ssh"
echo "Check complete!"
