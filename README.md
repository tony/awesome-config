# Tony Narlock's awesome configuration

* Github: http://www.github.com/tony
* Website: http://www.git-pull.com

Version: Awesome 3.4.10
Awesome Homepage: http://awesome.naquadah.org

Based off of [Adrian C's awesome config](http://git.sysphere.org/awesome-configs).


Features
--------
  * Mod-Shift-Enter is Terminal
  * Battery widget - autodetects if you have battery, adds widget
  * Network widget - pick your devices, eth0 for ethernet, wlan0 for wireless or custom
  * mpd widget - autodetects if song player, adds widget (requires curl)
  * Random background picker (requires feh)

Configuration
-------------
  * For convenience the rc.lua will keep user-configurable variables at the top, this
    may greatly obfuscate the inner workings of how rc.lua and confuse those trying to study it.

Installation
------------
To use this configuration, git clone this, and mv awesome-config to ~/.config/awesome

  * `cd ~; git clone https://github.com/tony/awesome-config.git` Go to home dir, clone this repository (the config)
  * `mkdir ~/.config` Created ~/.config if it doesn't exist.
  * `cp -r awesome-config ~/.config/awesome` Copy our config over

Optional stuff
--------------

[Terminus](http://terminus-font.sourceforge.net/) is a crisp font pleasant to the eyes.

  * FreeBSD: `cd /usr/ports/x11-fonts/terminus-font/ && make install clean` or `pkg_add -r terminus-font`
  * ArchLinux: `pacman -S terminus-font`
  * Debian / Ubuntu: `apt-get install xfonts-terminus`
  * Gentoo: `emerge -av media-fonts/terminus-font`
  * Fedora / CentOS / Redhat: `yum install terminus-fonts`

  In Arch, you may have to edit /etc/X11/xorg.conf and have your font dir to be scanned:

  Section "Files"
    FontPath     "/usr/share/fonts/local"
  EndSection


  Oh btw, you may also want to:
  # cd /etc/fonts/conf.d
  # ln -sf ../conf.avail/10-autohint.conf ./
  # ln -sf ../conf.avail/70-yes-bitmaps.conf ./

  Then restart X.
