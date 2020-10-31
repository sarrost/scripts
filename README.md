# My Scripts

Some shell scripts I've written/gathered which I use on my linux setup on a daily basis. I use [zsh](https://wiki.archlinux.org/index.php/Zsh) as my main shell, 99% of the scripts will work on [bash](https://wiki.archlinux.org/index.php/Bash) though. I'm not anal about remaining [POSIX](https://en.wikipedia.org/wiki/POSIX) compliant. If you absolutely must repurpose any of the scripts for a POSIX shell I assume you are capable of doing so.

**IMPORTANT**: Many of the scripts rely on variables I set in my `~/.profile` contained in my [dotfiles](https://github.com/sarrost/dotfiles). Some scripts use external programs, I do mention (as much as I can recall) which programs are required within the scripts.

# Table of Content

* [Installation](#installation)
* [List of Scripts](#list-of-scripts)
* [Why not use `.local/bin`?](#why-not-use-localbin)
* [Contact](#contact)

## Installation

Simply copy-pasta to your own scripts dir, or clone this repo and add them to your `$PATH`. For the latter method do:
```bash
cd ~
git clone https://github.com/sarrost/scripts
```

Add the following line to your `~/.profile`. It will allow the scripts to be executed from within any working dir:
```bash
...
export PATH="$PATH:$(du -L "$HOME/scripts/scripts" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
...
```

To test if everything is working correctly open up a new terminal and do:
```bash
cd ~
testpath
```

If the above doesn't work please make sure you properly set the `$PATH` variable in your `~/.profile`. If the scripts refuse to execute do, give them all execute permissions.
```bash
chmod +x -R ~/scripts/scripts
```

## List of Scripts

Many of the scripts are designed to be used with other programs, such as [vim](https://wiki.archlinux.org/index.php/Vim), [vifm](https://wiki.archlinux.org/index.php/Vifm), [zsh](https://wiki.archlinux.org/index.php/Zsh), [fzf](https://wiki.archlinux.org/index.php/Fzf), [tmux](https://wiki.archlinux.org/index.php/Tmux), etc. See my [dotfiles](https://github.com/sarrost/dotfiles) for how I integrate the scripts.

- [albumtag](https://github.com/sarrost/scripts/blob/master/scripts/albumtag?ts=2) - tag albums
- [audioinfo](https://github.com/sarrost/scripts/blob/master/scripts/audioinfo?ts=2) - print song info
- [backlightwrap](https://github.com/sarrost/scripts/blob/master/scripts/backlightwrap?ts=2) - adjust backlight brightness 
- [backup](https://github.com/sarrost/scripts/blob/master/scripts/backup?ts=2) - backup a file
- [cf](https://github.com/sarrost/scripts/blob/master/scripts/cf?ts=2) - quickly access files
- [cf_fzf](https://github.com/sarrost/scripts/blob/master/scripts/fzf/cf_fzf?ts=2) - select config/special file with fzf menu and print it
- [cleanempty](https://github.com/sarrost/scripts/blob/master/scripts/cleanempty?ts=2) - remove empty files and directories
- [comptontoggle](https://github.com/sarrost/scripts/blob/master/scripts/comptontoggle?ts=2) - toggle compton
- [cssfont](https://github.com/sarrost/scripts/blob/master/scripts/cssfont?ts=2) - import web font into project and print css definition
- [dec2hex](https://github.com/sarrost/scripts/blob/master/scripts/dec2hex?ts=2) - convert a decimal to hex
- [deci](https://github.com/sarrost/scripts/blob/master/scripts/deci?ts=2) - sensibly print float with two decimal points
- [def](https://github.com/sarrost/scripts/blob/master/scripts/def?ts=2) - search up word in dictionary
- [devour](https://github.com/sarrost/scripts/blob/master/scripts/devour?ts=2) - open files with default programs
- [dirs_fzf](https://github.com/sarrost/scripts/blob/master/scripts/fzf/dirs_fzf?ts=2) - select directory from fzf menu and print it
- [dmenupass](https://github.com/sarrost/scripts/blob/master/scripts/dmenu/dmenu_pass?ts=2) - select a password from a rofi menu and copy it to the clipboard for a few seconds
- [dockerpurge](https://github.com/sarrost/scripts/blob/master/scripts/dockerpurge?ts=2) - purge all docker images/containers
- [dunsttoggle](https://github.com/sarrost/scripts/blob/master/scripts/dunsttoggle?ts=2) - toggle dunst
- [ext](https://github.com/sarrost/scripts/blob/master/scripts/ext?ts=2) - extract files from archives
- [ffmgif](https://github.com/sarrost/scripts/blob/master/scripts/ffmgif?ts=2) - convert video to gif
- [genalbumtag](https://github.com/sarrost/scripts/blob/master/scripts/genalbumtag?ts=2) - generate files for tagging albums
- [gencssfont](https://github.com/sarrost/scripts/blob/master/scripts/gencssfont?ts=2) - generate css definitions for a web font and it's variants
- [gennumseq](https://github.com/sarrost/scripts/blob/master/scripts/gennumseq?ts=2) - generate numbered sequence
- [genpreviews](https://github.com/sarrost/scripts/blob/master/scripts/genpreviews?ts=2) - generate thumbnail previews for video and gif files.
- [genscriptsumm](https://github.com/sarrost/scripts/blob/master/scripts/genscriptsumm?ts=2) - print script summaries for `README.md`
- [genshortcuts](https://github.com/sarrost/scripts/blob/master/scripts/genshortcuts?ts=2) - generate dir shortcuts
- [grepcssfont](https://github.com/sarrost/scripts/blob/master/scripts/grepcssfont?ts=2) - grep definition for web font and it's variants
- [hex2dec](https://github.com/sarrost/scripts/blob/master/scripts/hex2dec?ts=2) - convert a hex to decimal
- [journal](https://github.com/sarrost/scripts/blob/master/scripts/journal?ts=2) - manage personal journal entries
- [keyboardtoggle](https://github.com/sarrost/scripts/blob/master/scripts/keyboardtoggle?ts=2) - toggle laptop keyboard
- [maketex](https://github.com/sarrost/scripts/blob/master/scripts/maketex?ts=2) - quickly compile LaTeX pdf
- [mpcvolumewrap](https://github.com/sarrost/scripts/blob/master/scripts/mpcvolumewrap?ts=2) - manipulate mpd volume
- [n](https://github.com/sarrost/scripts/blob/master/scripts/n?ts=2) - nnn wrapper
- [nn](https://github.com/sarrost/scripts/blob/master/scripts/nn?ts=2) - custom nnn launch environment
- [perms](https://github.com/sarrost/scripts/blob/master/scripts/perms?ts=2) - recursively normalize permissions
- [pickcolor](https://github.com/sarrost/scripts/blob/master/scripts/pickcolor?ts=2) - pick color on screen and copy to clipboard
- [pwdclipboard](https://github.com/sarrost/scripts/blob/master/scripts/pwdclipboard?ts=2) - copy the working dir to the clipboard
- [remapkeys](https://github.com/sarrost/scripts/blob/master/scripts/remapkeys?ts=2) - ramap certain keys
- [rofi_emoji](https://github.com/sarrost/scripts/blob/master/scripts/dmenu/dmenu_emoji?ts=2) - select emoji and copy to clipboard
- [rofi_mount](https://github.com/sarrost/scripts/blob/master/scripts/dmenu/dmenu_mount?ts=2) - mount usb devices
- [rofi_mount](https://github.com/sarrost/scripts/blob/master/scripts/dmenu/dmenu_umount?ts=2) - unmount usb devices
- [screenkeytoggle](https://github.com/sarrost/scripts/blob/master/scripts/screenkeytoggle?ts=2) - toggle screenkey
- [screenshot](https://github.com/sarrost/scripts/blob/master/scripts/screenshot?ts=2) - take screenshots
- [setwallpaper](https://github.com/sarrost/scripts/blob/master/scripts/setwallpaper?ts=2) - set the desktop background
- [statusbar_backlight](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_backlight?ts=2) - print backlight level
- [statusbar_batcapacity](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_batcapacity?ts=2) - print the current battery capacity 
- [statusbar_batstatus](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_batstatus?ts=2) - print battery status as icon
- [statusbar_clock](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_clock?ts=2) - print the current time
- [statusbar_cpuusage](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_cpuusage?ts=2) - print the cpu usage for all cores
- [statusbar_memavail](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_memavail?ts=2) - print available memory
- [statusbar_memused](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_memused?ts=2) - print current memory usage
- [statusbar_music](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_music?ts=2) - print song details and music volume
- [statusbar_news](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_news?ts=2) - print unread rss feed updates
- [statusbar_today](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_today?ts=2) - print the current date
- [statusbar_volume](https://github.com/sarrost/scripts/blob/master/scripts/statusbar/statusbar_volume?ts=2) - print the system volume level
- [syncmail](https://github.com/sarrost/scripts/blob/master/scripts/syncmail?ts=2) - sync email
- [systray](https://github.com/sarrost/scripts/blob/master/scripts/systray?ts=2) - wrapper for stalonetray
- [taste](https://github.com/sarrost/scripts/blob/master/scripts/taste?ts=2) - preview files with default programs
- [termcolor256](https://github.com/sarrost/scripts/blob/master/scripts/termcolor?ts=2) - print 256 terminal colors
- [termcolortable](https://github.com/sarrost/scripts/blob/master/scripts/termcolortable?ts=2) - print color codes in table
- [testpath](https://github.com/sarrost/scripts/blob/master/scripts/testpath?ts=2) - check if containing dir is in `$PATH`
- [torrentadd](https://github.com/sarrost/scripts/blob/master/scripts/torrentadd?ts=2) - add and start torrent
- [torrentcomplete](https://github.com/sarrost/scripts/blob/master/scripts/torrentcomplete?ts=2) - send notification when torrent is finished
- [ueberimg](https://github.com/sarrost/scripts/blob/master/scripts/ueberimg?ts=2) - preview media as image in terminal
- [uebernnn](https://github.com/sarrost/scripts/blob/master/scripts/uebernnn?ts=2) - prepare ueberzug environment for nnn instance
- [up](https://github.com/sarrost/scripts/blob/master/scripts/up?ts=2) - quickly update system packages
- [vid_merge](https://github.com/sarrost/scripts/blob/master/scripts/video_editing/vid_merge?ts=2) - merge video and audio back together
- [vid_split](https://github.com/sarrost/scripts/blob/master/scripts/video_editing/vid_split?ts=2) - split audio and video
- [vifmimg](https://github.com/sarrost/scripts/blob/master/scripts/vifmimg?ts=2) - use ueberzug to draw images in vifm
- [vifmrun](https://github.com/sarrost/scripts/blob/master/scripts/vifmrun?ts=2) - run vifm with ueberzug integration
- [vifmsplittoggle](https://github.com/sarrost/scripts/blob/master/scripts/vifmsplittoggle?ts=2) - cycle toggle split in vifm
- [volumewrap](https://github.com/sarrost/scripts/blob/master/scripts/volumewrap?ts=2) - manipulate system volume
- [vpwd](https://github.com/sarrost/scripts/blob/master/scripts/vpwd_wrappers/vpwd?ts=2) - set terminal virtual pwd
- [vpwd_cf](https://github.com/sarrost/scripts/blob/master/scripts/vpwd_wrappers/vpwd_cf?ts=2) - quickly access files
- [vpwd_nvim](https://github.com/sarrost/scripts/blob/master/scripts/vpwd_wrappers/vpwd_nvim?ts=2) - edit files in nvim
- [vpwd_vifm](https://github.com/sarrost/scripts/blob/master/scripts/vpwd_wrappers/vpwd_vifm?ts=2) - vi file manager
- [vs](https://github.com/sarrost/scripts/blob/master/scripts/vs?ts=2) - quickly create and edit script
- [zan](https://github.com/sarrost/scripts/blob/master/scripts/zan?ts=2) - read man pages using zathura

## Why not use `.local/bin`?

I wanted a seperate repo for my scripts, it seemed redundant to have sync the scripts to another dir.

## Contact

* Herbert Magaya <herbert.magaya@protonmail.com>
