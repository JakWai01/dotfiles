#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default ocnfig location ~/.config/polybar/config.ini
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

if [[ $(xrandr -q | grep 'DisplayPort-1 connected') ]]; then
	polybar example_external &
fi

echo "Polybar launched..."
