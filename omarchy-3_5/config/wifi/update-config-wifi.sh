#!/bin/bash

WIFI_CONF="/etc/modprobe.d/iwlwifi.conf"
WIFI_CONF_DIR="$(dirname "$WIFI_CONF")"

# echo "Info: This is the wifi dir: $WIFI_CONF_DIR"

# Check if dir is present. if not, create new dir
if [ ! -d "$WIFI_CONF_DIR" ]; then
    mkdir -p "$WIFI_CONF_DIR"
    echo "Info: [$WIFI_CONF] has been created"
fi

# Create the configuration file for the iwlwifi driver
echo "options iwlwifi 11n_disable=1" > $WIFI_CONF 

# Optional: Disable power management for extra stability
echo "options iwlmvm power_scheme=1" >> $WIFI_CONF

# Apply changes by reloading the driver
modprobe -r iwlmvm iwlwifi && modprobe iwlwifi

echo "WiFi driver settings applied successfully."
