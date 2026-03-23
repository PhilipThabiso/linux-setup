#!/bin/bash

set -e

WAYBAR_CONFIG="$HOME/.config/waybar/scripts/cpu-cores.sh"
WAYBAR_CONFIG_DIR="$(dirname "$WAYBAR_CONFIG")"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIG="$SCRIPT_DIR/cpu-cores.sh"



# Check if the source exists before copying
if [ ! -f "$MY_CONFIG" ]; then
    echo "Error: Source file $MY_CONFIG not found."
    exit 1
fi

if [ ! -d "$WAYBAR_CONFIG_DIR" ]; then
    mkdir -p "$WAYBAR_CONFIG_DIR"
    echo "Info: [$WAYBAR_CONFIG] has been created"
fi

# Check if the destination exists
if [ -f "$WAYBAR_CONFIG" ]; then
    echo "Info: [$WAYBAR_CONFIG] Is overridden"
fi

# copying from-to
cp "$MY_CONFIG" "$WAYBAR_CONFIG"


echo "Success: $WAYBAR_CONFIG has been updated with your personal settings."


