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

read_cpu_stats() {
  local i=0

  while read -r cpu user nice system idle iowait irq softirq steal guest
  do
    [[ $cpu =~ ^cpu[0-9]+$ ]] || continue

    local total=$((user + nice + system + idle + iowait + irq + softirq + steal))
    local idle_all=$((idle + iowait))

    if [[ -n ${PREV_TOTAL[$i]:-} ]]; then
      local diff_total=$((total - PREV_TOTAL[$i]))
      local diff_idle=$((idle_all - PREV_IDLE[$i]))
      local usage=0

      if ((diff_total > 0)); then
        usage=$(((100 * (diff_total - diff_idle)) / diff_total))
      fi



      get_colors "$usage"

      printf "<span foreground='%s'></span>" "$CHIP_BG"
      printf "<span background='%s' foreground='%s'>C%d:%02d%%</span>" \
        "$CHIP_BG" "$CHIP_FG" "$i" "$usage"
      printf "<span foreground='%s'></span> " "$CHIP_BG"
    fi

    PREV_TOTAL[$i]=$total
    PREV_IDLE[$i]=$idle_all
    ((i++))
  done < /proc/stat
}

read_cpu_stats
sleep 1
read_cpu_stats
echo






##!/usr/bin/env bash
#
#PREV_TOTAL=()
#PREV_IDLE=()
#
#read_cpu_stats() {
#  local i=0
#  while read -r cpu user nice system idle iowait irq softirq steal guest
#  do
#    [[ $cpu =~ ^cpu[0-9]+$ ]] || continue
#    local total=$((user + nice + system + idle + iowait + irq + softirq + steal))
#    local idle_all=$((idle + iowait))
#
#    if [[ -n ${PREV_TOTAL[$i]:-} ]]; then
#      local diff_total=$((total - PREV_TOTAL[$i]))
#      local diff_idle=$((idle_all - PREV_IDLE[$i]))
#      local usage=0
#
#      if ((diff_total > 0)); then
#        usage=$(((100 * (diff_total - diff_idle)) / diff_total))
#      fi
#
#      printf "󰍛:%d %d%% " "$i" "$usage"
#    fi
#
#    PREV_TOTAL[$i]=$total
#    PREV_IDLE[$i]=$idle_all
#    ((i++))
#  done < /proc/stat
#}
#
#read_cpu_stats
#sleep 1
#read_cpu_stats
#echo
