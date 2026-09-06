#!/usr/bin/env bash

STATE_FILE="/tmp/waybar-resource-useage-hidden"

if [[ -f "$STATE_FILE" ]]; then
  rm -f "$STATE_FILE"
else
  touch "$STATE_FILE"
fi

pkill -RTMIN+11 waybar
