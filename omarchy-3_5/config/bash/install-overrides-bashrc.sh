#!/bin/bash

set -e

BASHRC="$HOME/.bashrc"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_BASHRC="$SCRIPT_DIR/bashrc"
SOURCE_LINE="source $MY_BASHRC"

# Check if hyprland config exists
if [ ! -f "$BASHRC" ]; then
    echo ".bashrc not found at $BASHRC"
    exit 1
fi

# Check if overrides config exists
if [ ! -f "$MY_BASHRC" ]; then
    echo "Overrides config not found at $MY_BASHRC"
    exit 1
fi

# Check if source line already exists in hyprland.conf
if grep -Fxq "$SOURCE_LINE" "$BASHRC"; then
    echo "Source line already exists in $BASHRC"
else
    echo "Adding source line to $BASHRC"
    echo "" >> "$BASHRC"
    echo "$SOURCE_LINE" >> "$BASHRC"
    echo "Source line added successfully"
fi

echo ".bashrc overrides setup complete!"
