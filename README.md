# My Scripts

Some shell scripts I've written/gathered which I use on my linux setup on a daily basis. I use [zsh](https://wiki.archlinux.org/index.php/Zsh) as my main shell, 99% of the scripts will work on [bash](https://wiki.archlinux.org/index.php/Bash) though. I'm not anal about remaining [POSIX](https://en.wikipedia.org/wiki/POSIX) compliant. If you absolutely must repurpose any of the scripts for a POSIX shell I assume you are capable of doing so.

**IMPORTANT**: Many of the scripts rely on variables I set in my `~/.profile` contained in my [dotfiles](https://github.com/sarrost/dotfiles).

# Table of Content

* [Table of Content](#table-of-content)
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
If the above doesn't work please make sure you properly set the `$PATH` variable in your `~/.profile`.

If the scripts refuse to execute do, give them all execute permissions.
```bash
chmod +x -R ~/scripts/scripts
```

## List of Scripts

Many of the scripts are designed to be used with other programs, such as vim, vifm, zsh, fzf, tmux, etc. See my [dotfiles](https://github.com/sarrost/dotfiles) for how I integrate the scripts.

* [remapkeys](https://github.com/sarrost/scripts/blob/master/scripts/remapkeys) - ramap certain keys

## Why not use `.local/bin`?

I wanted a seperate repo for my scripts, it seemed redundant to have sync the scripts to another dir.

## Contact

* Herbert Magaya <herbert.magaya@protonmail.com>
