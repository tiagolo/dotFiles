#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

[ -n "$1" ] && CONFIG_PATH=$1

shift 1

env

# Launch bar1 and bar2
if [ -n "$CONFIG_PATH" ]; then
    for A in "$@"; do
        echo "$A"
        polybar -c $CONFIG_PATH $A &
    done
else
    polybar MainBar &
    polybar ExtendedBar &
fi
