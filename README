Tony Narlock's awesome configuration
http://www.github.com/tony

Version: Awesome 3.4.5

Awesome Homepage: http://awesome.naquadah.org

Based off of Adrian C's awesome config: http://git.sysphere.org/awesome-configs/tree/

Changes:
  - Added vicious and scrath to the awesome config dir to be scanned there
  - Removed mail
  - Removed note taker
  - Uses the default awesome keybinding (exception is modkey+shift+enter for term, xmonad style)

To use this configuration, git clone this, and mv awesome-config to ~/.config/awesome

  # mkdir ~/.config     (make sure .config exists)
  # cp -r awesome-config ~/.config/awesome

Optional stuff:
  My favorite coding font is ProggySquareTTSZ, you can grab it from http://www.proggyfonts.com/index.php?menu=download
  To install ProggySquareSZ, extract the ttf into ~/.fonts and do fc-cache -fv

  Also, try the font terminus:

  ArchLinux:
  # pacman -S terminus-font

  Then go to vim /etc/X11/xorg.conf and add your font dir to be scanned:

  Section "Files"
    FontPath     "/usr/share/fonts/local"
  EndSection

  Ubuntu:
  # sudo apt-get install xfonts-terminus

  Oh btw, you may also want to:
  # cd /etc/fonts/conf.d
  # ln -sf ../conf.avail/10-autohint.conf ./
  # ln -sf ../conf.avail/70-yes-bitmaps.conf ./

  Then restart X.

  Also, you may want to change the font size from 12, to 10, to 9, to 8 depending on resolution and dpi

More tips:
  If you're not running Ubuntu, you may not have urxvtcd

Go into ~/.config/awesome/rc.lua and change your Terminal from urxvt to urxvtc (must have urxvtd running and present)
  or utxvtcd (which will scan if daemon is present, if not, open it, then the client)

Ubuntu has urxvtcd which launches daemon and/or client regardless of whether you already have it running. Other distros will make you run urxvtd first, then urxvtc for every client.
