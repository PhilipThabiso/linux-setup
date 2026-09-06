#!/bin/bash

set -e

YAZI_CONFIG="$HOME/.config/yazi/theme.toml"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIG="$SCRIPT_DIR/theme.toml"



# Check if the source exists before copying
if [ ! -f "$MY_CONFIG" ]; then
    echo "Error: Source file $MY_CONFIG not found."
    exit 1
fi

# Check if the destination exists
if [ -f "$YAZI_CONFIG" ]; then
    echo "Warning: [$YAZI_CONFIG] Is overridden"
fi

# copying from-to
cp "$MY_CONFIG" "$YAZI_CONFIG"


echo "Success: $YAZI_CONFIG has been updated with your personal settings."

