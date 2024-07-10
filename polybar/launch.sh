#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar.log
polybar logo-bar 2>&1 | tee -a /tmp/polybar.log & disown
polybar workspace-bar 2>&1 | tee -a /tmp/polybar.log & disown
polybar window-bar 2>&1 | tee -a /tmp/polybar.log & disown
polybar spotify-bar 2>&1 | tee -a /tmp/polybar.log & disown
polybar date-bar 2>&1 | tee -a /tmp/polybar.log & disown
polybar wlan-bar 2>&1 | tee -a /tmp/polybar.log & disown
polybar systray-bar 2>&1 | tee -a /tmp/polybar.log & disown
