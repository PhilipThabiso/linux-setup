#!/bin/bash

set -e

# Get directories into an array
DIRS=($(find "$SCRIPT_DIR" -maxdepth 1 -type d ! -path "$SCRIPT_DIR"))

# Or iterate directly
for dir in "$SCRIPT_DIR"/*/; do
    if [ -d "$dir" ]; then
        dir_name=$(basename "$dir")
        echo "Processing directory: $dir_name"
    fi
done
