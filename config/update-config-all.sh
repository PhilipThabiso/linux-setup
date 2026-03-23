#!/bin/sh


UPDATE_CONF_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


. "$UPDATE_CONF_DIR/bash/install-overrides-bashrc.sh"
. "$UPDATE_CONF_DIR/hypr/install-overrides-hyperland.sh"
. "$UPDATE_CONF_DIR/nvim/update-config-nvim.sh"
# . "$UPDATE_CONF_DIR/yazi/update-config-yazi.sh"

# Call the wifi script with sudo
sudo sh "$UPDATE_CONF_DIR/wifi/update-config-wifi.sh"
