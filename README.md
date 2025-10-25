# dotfiles
This repository contains directories with configuration files for:
Hyprland, Wofi, Waybar, Neovim, Tmux, Kitty, Mako, Sway and SDDM.

The directory is meant to be used with `stow`.
```sh
stow -t ~ .
```

In the case of SDDM they shall not be copied to .config, but the theme must be in

```
/usr/share/sddm/themes/sugar-candy

/etc/sddm.conf.d/sddm.conf
```
There is a shell script inside the `sddm` directory that copies all the necessary in the correct places.

### Sway

When using proprietary drivers remember to run Sway with `--unsupported-gpu` flag.
Go to `/usr/share/wayland-sessions/sway.desktop` and add the flag to the `Exec` line.

To have a complete sway setup:

```sh
sudo pacman -S sway swaybg swaylock waybar wofi mako autotiling-rs brightnessctl gnome-backgrounds
```

### Starship

Install the latest version with:

```sh
curl -sS https://starship.rs/install.sh | sh
```

When changing the Linux distro Icon in the [username] -> (<icon> $user) use the `md` version of the Nerd Font icons

### tmux

First install the plugin manager:
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Start a new `tmux` server and source the configuration file
```sh
tmux new
tmux source ~/.config/tmux/tmux.conf
```

Install the plugins
```
prefix I 
```
prefix is `Ctrl-b` normally, the config file makes it `Ctrl-a`, also `I` is for capital `i`

