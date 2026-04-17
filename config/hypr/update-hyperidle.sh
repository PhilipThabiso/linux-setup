#!/bin/bash

set -e

HYPR_CONFIG="$HOME/.config/hypr/hypridle.conf"
HYPR_CONFIG_DIR="$(dirname "$HYPR_CONFIG")"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIG="$SCRIPT_DIR/hyperidle.conf"



# Check if the source exists before copying
if [ ! -f "$MY_CONFIG" ]; then
    echo "Error: Source file $MY_CONFIG not found."
    exit 1
fi

if [ ! -d "$HYPR_CONFIG_DIR" ]; then
    mkdir -p "$HYPR_CONFIG_DIR"
    echo "Info: [$HYPR_CONFIG] has been created"
fi

# Check if the destination exists
if [ -f "$HYPR_CONFIG" ]; then
    echo "Info: [$HYPR_CONFIG] Is overridden"
fi

# copying from-to
cp "$MY_CONFIG" "$HYPR_CONFIG"

# Restart hypridle to apply changes
killall hypridle || true
hypridle &

echo "Success: $HYPR_CONFIG has been updated with your personal settings."


