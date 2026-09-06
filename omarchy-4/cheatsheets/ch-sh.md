# Header 
#!/bin/bash

# paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MY_CONFIG="$SCRIPT_DIR/nvim/options.lua"

# Check if file not exists
if [ ! -f "$MY_FILE" ]; then
    echo "Error: Source file $MY_FILE not found."
    exit 1
fi


# copying from-to
cp "$MY_CONFIG" "$NVIM_CONFIG"
