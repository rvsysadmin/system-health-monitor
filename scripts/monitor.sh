#!/bin/bash

LOG_DIR="$(dirname "$0")/../logs"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/system.log"

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2 + $4)}')
MEM=$(free | grep Mem | awk '{print int($3/$2 * 100)}')
DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "$(date) | CPU:$CPU% | MEM:$MEM% | DISK:$DISK%" >> "$LOG_FILE"

echo "CPU:$CPU% MEM:$MEM% DISK:$DISK%"
