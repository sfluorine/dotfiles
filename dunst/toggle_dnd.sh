#!/usr/bin/env bash

DUNST_STATUS="$(dunstctl is-paused)"

if [ $DUNST_STATUS = "true" ]; then
    dunstctl set-paused false
    dunstctl close
    notify-send " dnd is toggled off."
    sleep 1 && dunstctl close
else
    notify-send " dnd is toggled on."
    sleep 1 && dunstctl set-paused true
fi
