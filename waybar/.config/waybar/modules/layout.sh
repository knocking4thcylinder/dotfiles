#!/bin/bash
# Get keyboard layout.

layout=$( swaymsg -mt subscribe '["input"]' |
    jq -r 'select(.change == "xkb_layout").input.xkb_active_layout_name' )
echo "$layout"
if [ "$layout" = "English" ]; then
    echo "en"
elif [ "$layout" = 'Russian' ]; then
    echo "ru"
else
    echo "$layout"
fi
