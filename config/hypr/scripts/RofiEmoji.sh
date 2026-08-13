#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# Variables
rofi_theme="$HOME/.config/rofi/config-emoji.rasi"
msg='** note ** 👀 Click or Return to choose || Ctrl V to Paste'

# Check if rofi is already running
if pidof rofi > /dev/null; then
  pkill rofi
fi

cat "$(dirname "$0")/RofiEmoji-data.txt" | \
rofi -i -dmenu -mesg "$msg" -config $rofi_theme | \
awk '{print $1}' | \
head -n 1 | \
tr -d '\n' | \
wl-copy

exit

# # DATA # #
