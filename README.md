# dotfiles
This repository contains directories with configuration files for:
Hyprland, Wofi, Waybar, Neovim, Tmux, Kitty, Mako, Sway and SDDM.

In the case of SDDM they shall not be copied to .config, but the theme must be in
```
/usr/share/sddm/themes/sugar-candy

/etc/sddm.conf.d/sddm.conf
```

Also there is a direcotory with wallpapers for the desktop and the greeter.

###Sway

When using proprietary drivers remember to run Sway with `--unsupported-gpu` flag.
Go to `/usr/share/wayland-sessions/sway.desktop` and add the flag to the `Exec` line.
