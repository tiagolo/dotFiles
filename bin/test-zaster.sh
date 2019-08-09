#!/bin/bash

[ -n "$1" ] && URL="$1" || URL="https://zasterr.com/dJoAEXO"
COUNT=0

while true; do
  COUNT=$((COUNT+1));
  firefox --new-tab "$URL"
  # echo "waiting";
  sleep 20;  
  i3-msg '[class=firefox]' focus;
  xdotool key Ctrl+w;

  echo "Contador execuções Zaster: $COUNT"
done
