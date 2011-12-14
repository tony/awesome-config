# Tony Narlock's awesome configuration

* Github: http://www.github.com/tony
* Website: http://www.git-pull.com

Version: Awesome 3.4.10
Awesome Homepage: http://awesome.naquadah.org

Based off of [Adrian C's awesome config](http://git.sysphere.org/awesome-configs).

The aim of this project is to create a robust awesome configuration that works out of the box
with minimal configuration.

Features
--------
  * `Mod + Shift + Enter` is Terminal
  * `Mod + Control + r` is reload rc.lua
  * Battery widget - autodetects if you have battery, adds widget
  * Network widget - pick your devices, eth0 for ethernet, wlan0 for wireless or custom
  * Number taglists in various number systems - arabic (1,2,3...), chinese
  * [mpd](http://mpd.wikia.com/wiki/Music_Player_Daemon_Wiki) widget - autodetects if song player, adds widget (requires curl)
  * Random background picker (requires feh)


Installation
------------
To use this configuration, git clone this, and mv awesome-config to ~/.config/awesome

  * `cd ~/.config; git clone https://github.com/tony/awesome-config.git awesome`
  * `cd ~/.config/awesome`
  * `git submodule init && git submodule update` - download vicious module

Configuration
-------------
  Create a file called `personal.lua` in `~/.config/awesome`. Here are some things you can place in
  your `~/.config/awesome/personal.lua` file:

```lua
terminal = 'xterm' -- can be app in path, or full path e.g. /usr/bin/xterm
editor = "vim"

wallpaper_dir = os.getenv("HOME") .. "/yourwallpaper_dir/" -- grabs a random bg

taglist_numbers = "arabic" -- we support arabic (1,2,3...),
-- arabic, chinese, {east|persian}_arabic, roman, thai, random

cpugraph_enable = true -- show CPU graph
cputext_format = " $1%" -- %1 average cpu, %[2..] every other thread individually

membar_enable = true -- show memory bar
memtext_format = " $1%" -- %1 percentage, %2 used %3 total %4 free

networks = {'eth0', 'wlan0'} -- Add your devices network interface here netwidget, only show one that works
```

  save.

  You can use `Mod + Control + r` to reload configuation.


Optional stuff
--------------

[Terminus](http://terminus-font.sourceforge.net/) is a crisp font pleasant to the eyes.

  * FreeBSD: `cd /usr/ports/x11-fonts/terminus-font/ && make install clean` or `pkg_add -r terminus-font`
  * ArchLinux: `pacman -S terminus-font`
  * Debian / Ubuntu: `apt-get install xfonts-terminus`
  * Gentoo: `emerge -av media-fonts/terminus-font`
  * Fedora / CentOS / Redhat: `yum install terminus-fonts`

In Arch, you may have to edit /etc/X11/xorg.conf and have your font dir to be scanned:

```
Section "Files"
	FontPath     "/usr/share/fonts/local"
EndSection
```

You may also want to:

  * `cd /etc/fonts/conf.d`
  * `ln -sf ../conf.avail/10-autohint.conf ./`
  * `ln -sf ../conf.avail/70-yes-bitmaps.conf ./`

Then restart X.
