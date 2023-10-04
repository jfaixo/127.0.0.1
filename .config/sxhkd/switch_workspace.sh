#!/bin/bash

# Loop over monitors
for monitor_id in `bspc query -M`;
do
    echo "monitor $monitor_id"
    # Focus the Nth desktop
    bspc desktop --focus "${monitor_id}:^$1"
done
