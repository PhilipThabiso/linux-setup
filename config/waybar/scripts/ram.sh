#!/usr/bin/env bash

STATE_FILE="/tmp/waybar-resource-useage-hidden"
THEME_CSS="/home/philip/.config/omarchy/current/theme/waybar.css"

if [[ -f "$STATE_FILE" ]]; then
  echo
  exit 0
fi

PREV_TOTAL=()
PREV_IDLE=()

get_theme_color() {
  local name=$1
  sed -n \
    "s/^@define-color[[:space:]]\\+$name[[:space:]]\\+\\(#[A-Fa-f0-9]\\+\\);/\\1/p" \
    "$THEME_CSS" | head -n1
}

FG_LOW="$(get_theme_color foreground)"
BG_LOW="$(get_theme_color color0)"
FG_MID="$(get_theme_color background)"
BG_MID="$(get_theme_color color11)"
FG_HIG="$(get_theme_color foreground)"
BG_HIG="$(get_theme_color color1)"

: "${FG_LOW:=#C1C497}"
: "${BG_LOW:=#23372B}"
: "${FG_MID:=#111C18}"
: "${BG_MID:=#E5C736}"
: "${FG_HIG:=#111C18}"
: "${BG_HIG:=#FF5345}"

get_colors() {
  local usage=$1

  if ((usage >= 80)); then
    CHIP_BG="$BG_HIG"
    CHIP_FG="$FG_HIG"
  elif ((usage >= 50)); then
    CHIP_BG="$BG_MID"
    CHIP_FG="$FG_MID"
  else
    CHIP_BG="$BG_LOW"
    CHIP_FG="$FG_LOW"
  fi
}

read_ram_stats() {
  mem_total_kb=$(awk '/MemTotal:/ { print $2 }' /proc/meminfo)
  mem_avail_kb=$(awk '/MemAvailable:/ { print $2 }' /proc/meminfo)
  mem_used_kb=$((mem_total_kb - mem_avail_kb))

  mem_used_gb=$(awk -v kb="$mem_used_kb" 'BEGIN { printf "%.2f", kb / 1000000 }')
  mem_total_gb=$(awk -v kb="$mem_total_kb" 'BEGIN { printf "%.2f", kb / 1000000 }')
  mem_used_percent=$((mem_used_kb * 100 / mem_total_kb))

  get_colors "$mem_used_percent"


  # printf "total memory kb: %s\n" "$mem_total_kb"
  # printf "used memory: %s\n" "$mem_used_gb"
  # printf "total memory percent: %s\n" "$mem_used_percent"

  printf "<span foreground='%s'></span>" "$CHIP_BG"
  printf "<span background='%s' foreground='%s'>Ram:%sGB/%sGB</span>" \
    "$CHIP_BG" "$CHIP_FG" "$mem_used_gb" "$mem_total_gb"
  printf "<span foreground='%s'></span> " "$CHIP_BG"

  #
}

read_ram_stats
# sleep 1
# read_ram_stats
echo



