#!/bin/bash

COUNT=0

while true; do
  COUNT=COUNT+1;
  firefox --new-tab 'https://zasterr.com/dJoAEXO';
  sleep 16;  
  i3-msg '[class=firefox]' focus
  xdotool key Ctrl+w;

  echo "Contador execuções Zaster: $COUNT"
done
