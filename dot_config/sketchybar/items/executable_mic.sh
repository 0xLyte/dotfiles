#!/bin/bash

MIC=(
  update_freq=1
  icon.color=$YELLOW
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/mic.sh"
)

sketchybar --add item mic right \
 --set mic "${MIC[@]}" \
 --subscribe sound volume_change 

