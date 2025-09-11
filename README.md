# dotfiles
This repository contains directories with configuration files for:
Hyprland, Wofi, Waybar, Neovim, Tmux, Kitty, Mako, Sway and SDDM.

In the case of SDDM they shall not be copied to .config, but the theme must be in
```
/usr/share/sddm/themes/sugar-candy

/etc/sddm.conf.d/sddm.conf
```

Also there is a directory with wallpapers for the desktop and the greeter.

###Sway

When using proprietary drivers remember to run Sway with `--unsupported-gpu` flag.
Go to `/usr/share/wayland-sessions/sway.desktop` and add the flag to the `Exec` line.

To have a complete sway setup:

```sh
sudo pacman -S sway swaybg swaylock waybar wofi autotiling-rs brightnessctl
```

###Starship

Install the latest version with:

```sh
curl -sS https://starship.rs/install.sh | sh
```

When changing the Linux distro Icon in the [username] -> (<icon> $user) use the `md` version of the Nerd Font icons
