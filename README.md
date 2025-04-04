# nm-screenshot-to-wallpaper
NickelMenu script to move screenshot to wallpapers folder to show screenshot on sleep screen. Tested for Kobo devices.

## Prerequisite
Make sure you have NickelMenu installed.
Make sure the .kobo/screensaver/ directory exists, the script doesn't have error checking.

## Install
copy the wallpaper-snip/ folder into .adds/ and add the following to your config (or copy the move_wp file into .adds/nm/)
```
menu_item   :main :Screenshot > Wallpaper : cmd_output :500 : exec /mnt/onboard/.adds/wallpaper-snip/wp_snip.sh

```

## Usage
Make sure Settings > Energy and Privacy > Show book covers full screen is enabled, and you have it set to wallpaper mode in NickelMenu.
After taking a screenshot (using the NickelMenu screenshot function), run the "Screenshot > Wallpaper". 
<img src="https://github.com/user-attachments/assets/9b5af2fb-bdc0-4dd9-b090-dd4775309f25" width="640">

This will delete any .png file containing "screen_" in the screensaver folder, and move the highest number screen_0xx.png file into the screensavers. This makes sure there's only ever 1 screenshot picture (other pictures in screensavers won't be affected) in the folder.

<img src="https://github.com/user-attachments/assets/f95b6337-1f66-4b88-b2e9-b34f6d634177" width="640">
