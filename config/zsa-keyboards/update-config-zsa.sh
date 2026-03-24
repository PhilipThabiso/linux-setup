#!/bin/bash

set -e

ZSA_CONFIG="/etc/udev/rules.d/50-zsa.rules"
ZSA_CONFIG_DIR="$(dirname "$ZSA_CONFIG")"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIG="$SCRIPT_DIR/50-zsa.rules"



# Check if the source exists before copying
if [ ! -f "$MY_CONFIG" ]; then
    echo "Error: Source file $MY_CONFIG not found."
    exit 1
fi

if [ ! -d "$ZSA_CONFIG_DIR" ]; then
    mkdir -p "$ZSA_CONFIG_DIR"
    echo "Info: [$ZSA_CONFIG] has been created"
fi

# Check if the destination exists
if [ -f "$ZSA_CONFIG" ]; then
    echo "Info: [$ZSA_CONFIG] Is overridden"
fi


# copying from-to
cp "$MY_CONFIG" "$ZSA_CONFIG"


echo "Success: $ZSA_CONFIG has been updated with your personal settings."


