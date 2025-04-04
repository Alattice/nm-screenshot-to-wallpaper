#!/bin/sh
# Find latest screenshot file
latest_screenshot=$(find /mnt/onboard -name "screen_*.png" | sort -V | tail -n 1)

# Delete existing screenshot files in screensaver directory
if [ -n "$(find /mnt/onboard/.kobo/screensaver -name "*screen_*.png")" ]; then
    rm -f /mnt/onboard/.kobo/screensaver/screen_*.png
fi
if [ -n "$latest_screenshot" ]; then
    # Move the latest screenshot to screensaver directory
    mv "$latest_screenshot" /mnt/onboard/.kobo/screensaver/
    printf "Moved ${latest_screenshot} to screensavers folder"
fi
