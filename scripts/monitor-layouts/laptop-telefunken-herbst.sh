#! /bin/sh

hc() { 
    herbstclient "$@" 
}

laptop-telefunken-monitor.sh    # set active monitor(s).

# place and positon monitors.
hc set_monitors 1680x1050+0+0 1920x1080+1680+0

# rename monitor(s).
hc rename_monitor 0 hdmi
hc rename_monitor 1 laptop

# make space for statusbar(s).
hc pad hdmi 10 0 0 0
hc pad laptop 10 0 0 0

# place statusbar on (all) monitor(s).
statusbar &

# refresh wallpaper.  
setwallpaper
