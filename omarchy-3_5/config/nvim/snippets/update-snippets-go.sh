#!/bin/bash

set -e

NVIM_CONFIG="$HOME/.config/nvim/lua/snippets/go.lua"
NVIM_CONFIG_DIR="$(dirname "$NVIM_CONFIG")"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIG="$SCRIPT_DIR/go.lua"



# Check if the source exists before copying
if [ ! -f "$MY_CONFIG" ]; then
    echo "Error: Source file $MY_CONFIG not found."
    exit 1
fi

if [ ! -d "$NVIM_CONFIG_DIR" ]; then
    mkdir -p "$NVIM_CONFIG_DIR"
    echo "Info: [$NVIM_CONFIG] has been created"
fi

# Check if the destination exists
if [ -f "$NVIM_CONFIG" ]; then
    echo "Info: [$NVIM_CONFIG] Is overridden"
fi

# copying from-to
cp "$MY_CONFIG" "$NVIM_CONFIG"


echo "Success: $NVIM_CONFIG has been updated with your personal settings."


