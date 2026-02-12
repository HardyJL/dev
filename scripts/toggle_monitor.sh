#!/bin/bash

MONITOR="eDP-1"
ENABLE_ARGS="highres,0x0,1.2"

if hyprctl monitors | grep -q "$MONITOR"; then
    hyprctl keyword monitor "$MONITOR,disable"
else
    hyprctl keyword monitor "$MONITOR,$ENABLE_ARGS"
fi
