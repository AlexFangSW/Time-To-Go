#!/bin/bash

#######################################
# CONFIGURATION — SET YOUR TIME HERE
#######################################
TARGET_HOUR=18   # Hour (0–23)
TARGET_MIN=0    # Minute (0–59)
TARGET_SEC=0     # Second (0–59)
#######################################

# Get current time
CURRENT_HOUR=$((10#$(date +%H)))
CURRENT_MIN=$((10#$(date +%M)))
CURRENT_SEC=$((10#$(date +%S)))

CURRENT_TOTAL=$(( $CURRENT_HOUR * 3600 + $CURRENT_MIN * 60 + $CURRENT_SEC ))
TARGET_TOTAL=$(( TARGET_HOUR * 3600 + TARGET_MIN * 60 + TARGET_SEC ))

if [ "$CURRENT_TOTAL" -lt "$TARGET_TOTAL" ]; then
    DELAY=$(( TARGET_TOTAL - CURRENT_TOTAL ))
else
    # Fire the notification right now if the time has already passed
    DELAY=0 
fi

echo "Current time: $CURRENT_HOUR:$CURRENT_MIN:$CURRENT_SEC"
echo "Target time: $TARGET_HOUR:$TARGET_MIN:$TARGET_SEC"
echo "Waiting $DELAY seconds..."

sleep "$DELAY"

notify-send "Time to go home !" "You've finished for the day — enjoy your evening !"
