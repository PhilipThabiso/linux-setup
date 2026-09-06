#!/bin/bash

set -e

OVERIDE_WAYBAR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. "$OVERIDE_WAYBAR_DIR/config/update-config-config.sh"
. "$OVERIDE_WAYBAR_DIR/config/update-config-style.sh"
. "$OVERIDE_WAYBAR_DIR/scripts/update-scripts-cpu-cores.sh"
. "$OVERIDE_WAYBAR_DIR/scripts/update-scripts-resource-useage-toggle.sh"
. "$OVERIDE_WAYBAR_DIR/scripts/update-scripts-ram.sh"
