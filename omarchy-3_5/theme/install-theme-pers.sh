#!/bin/bash

set -e

THEME_CONFIG_DIR="$HOME/.config/omarchy/themes"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIGS="$SCRIPT_DIR/options.lua"

# Check if the source exists before copying
if [ ! -f "$MY_CONFIGS" ]; then
    echo "Error: Source file $MY_CONFIGS not found."
    exit 1
fi

# Check if the destination exists
if [ -f "$THEME_CONFIG_DIR" ]; then
    echo "Info: [$THEME_CONFIG_DIR] Is overridden"
fi

# copying from-to
cp "$MY_CONFIGS" "$THEME_CONFIG_DIR"


echo "Success: $THEME_CONFIG_DIR has been updated with your personal settings."


