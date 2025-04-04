# nm-screenshot-to-wallpaper
NickelMenu script to move screenshot to wallpapers folder to show screenshot on sleep screen. Tested for Kobo devices.

## Prerequisite
Make sure you have NickelMenu installed.
Make sure the .kobo/screensaver/ directory exists, the script doesn't have error checking.

## Install
copy the wallpaper-snip/ folder into .adds/ and add the following to your config (or copy the move_wp file into .adds/nm/)
```
menu_item   :main :Screenshot > Wallpaper : cmd_output :500  :quiet :test -e /mnt/onboard/screen_*.png
      chain_failure     : skip : 2
      chain_success     : cmd_spawn       : quiet : exec /mnt/onboard/.adds/wallpaper-snip/wp_snip.sh
      chain_always      : skip : -1
      chain_failure     : dbg_toast       : Copy screenshot failed. Make sure you have a screensaver folder or there's a screenshot
```

## Usage
Make sure Settings > Energy and Privacy > Show book covers full screen is enabled, and you have it set to wallpaper mode in NickelMenu.
After taking a screenshot (using the NickelMenu screenshot function), run the "Screenshot > Wallpaper". This will delete any .png file containing "screen_" in the screensaver folder, and move the highest number screen_0xx.png file into the screensavers. This makes sure there's only ever 1 screenshot picture (other pictures in screensavers won't be affected) in the folder.
