source "$HOME/.config/sketchybar/icons.sh"

VOLUME=$(osascript -e "input volume of (get volume settings)")

if [[ $VOLUME -eq 0 ]]; then
    ICON="􀊳"
    MIC="muted"
else
    ICON="􀊱"
    MIC="open"
fi

sketchybar -m \
    --set $NAME icon=$ICON \
    --set $NAME label="$MIC"
