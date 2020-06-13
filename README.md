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

- [vifmsplittoggle](https://github.com/sarrost/scripts/blob/master/scripts/vifmsplittoggle?ts=2) - cycle toggle split in vifm
- [vifmimg](https://github.com/sarrost/scripts/blob/master/scripts/vifmimg?ts=2) - use ueberzug to draw images in vifm
- [screenkeytoggle](https://github.com/sarrost/scripts/blob/master/scripts/screenkeytoggle?ts=2) - toggle screenkey
- [ffmgif](https://github.com/sarrost/scripts/blob/master/scripts/ffmgif?ts=2) - convert video to gif
- [torrentcomplete](https://github.com/sarrost/scripts/blob/master/scripts/torrentcomplete?ts=2) - send notification when torrent is finished
- [testpath](https://github.com/sarrost/scripts/blob/master/scripts/testpath?ts=2) - check if containing dir is in `$PATH`
- [volumewrap](https://github.com/sarrost/scripts/blob/master/scripts/volumewrap?ts=2) - manipulate system volume
- [backlightwrap](https://github.com/sarrost/scripts/blob/master/scripts/backlightwrap?ts=2) - adjust backlight brightness 
- [deci](https://github.com/sarrost/scripts/blob/master/scripts/deci?ts=2) - sensibly print float with two decimal points
- [vifmsplittoggle](https://github.com/sarrost/scripts/blob/master/scripts/vpwd?ts=2) - cycle toggle split in vifm
- [keyboardtoggle](https://github.com/sarrost/scripts/blob/master/scripts/keyboardtoggle?ts=2) - toggle laptop keyboard
- [taste](https://github.com/sarrost/scripts/blob/master/scripts/taste?ts=2) - preview files with default programs
- [vs](https://github.com/sarrost/scripts/blob/master/scripts/vs?ts=2) - quickly create and edit script
- [systray](https://github.com/sarrost/scripts/blob/master/scripts/systray?ts=2) - wrapper for stalonetray
- [dockerpurge](https://github.com/sarrost/scripts/blob/master/scripts/dockerpurge?ts=2) - purge all docker images/containers
- [genshortcuts](https://github.com/sarrost/scripts/blob/master/scripts/genshortcuts?ts=2) - generate dir shortcuts
- [screenshot](https://github.com/sarrost/scripts/blob/master/scripts/screenshot?ts=2) - take screenshots
- [backup](https://github.com/sarrost/scripts/blob/master/scripts/backup?ts=2) - backup a file
- [torrentadd](https://github.com/sarrost/scripts/blob/master/scripts/torrentadd?ts=2) - add and start torrent
- [termcolortable](https://github.com/sarrost/scripts/blob/master/scripts/termcolortable?ts=2) - print color codes in table
- [def](https://github.com/sarrost/scripts/blob/master/scripts/def?ts=2) - search up word in dictionary
- [devour](https://github.com/sarrost/scripts/blob/master/scripts/devour?ts=2) - open files with default programs
- [remapkeys](https://github.com/sarrost/scripts/blob/master/scripts/remapkeys?ts=2) - ramap certain keys
- [tmuxcustomconf](https://github.com/sarrost/scripts/blob/master/scripts/tmuxcustomconf?ts=2) - set custom tmux conf location
- [cf](https://github.com/sarrost/scripts/blob/master/scripts/cf?ts=2) - quickly access files
- [pwdclipboard](https://github.com/sarrost/scripts/blob/master/scripts/pwdclipboard?ts=2) - copy the working dir to the clipboard
- [mpcvolumewrap](https://github.com/sarrost/scripts/blob/master/scripts/mpcvolumewrap?ts=2) - manipulate system volume
- [up](https://github.com/sarrost/scripts/blob/master/scripts/up?ts=2) - quickly update system packages
- [maketex](https://github.com/sarrost/scripts/blob/master/scripts/maketex?ts=2) - quickly compile LaTeX pdf
- [vifmrun](https://github.com/sarrost/scripts/blob/master/scripts/vifmrun?ts=2) - run vifm with ueberzug integration
- [setwallpaper](https://github.com/sarrost/scripts/blob/master/scripts/setwallpaper?ts=2) - set the desktop background
- [genscriptsumm](https://github.com/sarrost/scripts/blob/master/scripts/genscriptsumm?ts=2) - print script summaries for `README.md`
- [termcolor256](https://github.com/sarrost/scripts/blob/master/scripts/termcolor256?ts=2) - print 256 terminal colors
- [statusbar_cpuusage](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_cpuusage?ts=2) - print the cpu usage for all cores
- [vid_merge](https://github.com/sarrost/scripts/blob/master/scripts/video_editing/vid_merge?ts=2) - merge video and audio back together
- [vid_split](https://github.com/sarrost/scripts/blob/master/scripts/video_editing/vid_split?ts=2) - split audio and video
- [statusbar_batstatus](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_batstatus?ts=2) - print battery status as icon
- [statusbar_clock](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_clock?ts=2) - print the current time
- [statusbar_today](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_today?ts=2) - print the current date
- [statusbar_memavail](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_memavail?ts=2) - print available memory
- [statusbar_backlight](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_backlight?ts=2) - print backlight level
- [statusbar_memused](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_memused?ts=2) - print current memory usage
- [statusbar_volume](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_volume?ts=2) - print the system volume level
- [statusbar_batcapacity](https://github.com/sarrost/scripts/blob/master/scripts/statusbar_modules/statusbar_batcapacity?ts=2) - print the current battery capacity 
- [emoji-rofi](https://github.com/sarrost/scripts/blob/master/scripts/rofi_apps/rofi_emoji?ts=2) - select emoji and copy to clipboard

## Why not use `.local/bin`?

I wanted a seperate repo for my scripts, it seemed redundant to have sync the scripts to another dir.

## Contact

* Herbert Magaya <herbert.magaya@protonmail.com>
