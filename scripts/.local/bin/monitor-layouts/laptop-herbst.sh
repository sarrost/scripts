#! /bin/sh

hc() { 
    herbstclient "$@" 
}

laptop-monitor.sh           # set active monitor(s).

# place and positon monitors.
hc set_monitors 1920x1080+0+0

# rename monitor(s).
hc rename_monitor 0 laptop

# make space for statusbar(s).
hc pad laptop 10 0 0 0

# place statusbar on (all) monitor(s).
statusbar &

# refresh wallpaper.  
setwallpaper
