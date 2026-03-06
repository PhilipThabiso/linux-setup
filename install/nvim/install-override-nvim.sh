#!/bin/bash

set -e

NVIM_CONFIG="$HOME/.config/nvim/lua/config/options.lua"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIG="$SCRIPT_DIR/options.lua"



# Check if the source exists before copying
if [ ! -f "$MY_CONFIG" ]; then
    echo "Error: Source file $MY_CONFIG not found."
    exit 1
fi

# Check if the destination exists
if [ -f "$NVIM_CONFIG" ]; then
    echo "Warning: [$NVIM_CONFIG] Is overridden"
fi

# copying from-to
cp "$MY_CONFIG" "$NVIM_CONFIG"


echo "Success: $NVIM_CONFIG has been updated with your personal settings."


