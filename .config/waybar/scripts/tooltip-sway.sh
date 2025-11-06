#!/bin/sh

TOOLTIP='Sway Keybinds:\n'\
'Window management:\n'\
'  $mod+$left → focus left\n'\
'  $mod+$down → focus down\n'\
'  $mod+$up → focus up\n'\
'  $mod+$right → focus right\n'\
'  $mod+Left → focus left\n'\
'  $mod+Down → focus down\n'\
'  $mod+Up → focus up\n'\
'  $mod+Right → focus right\n'\
'  $mod+Shift+$left → move left\n'\
'  $mod+Shift+$down → move down\n'\
'  $mod+Shift+$up → move up\n'\
'  $mod+Shift+$right → move right\n'\
'  $mod+Shift+Left → move left\n'\
'  $mod+Shift+Down → move down\n'\
'  $mod+Shift+Up → move up\n'\
'  $mod+Shift+Right → move right\n'\
'  $mod+Shift+1 → move container to workspace number 1\n'\
'  $mod+Shift+2 → move container to workspace number 2\n'\
'  $mod+Shift+3 → move container to workspace number 3\n'\
'  $mod+Shift+4 → move container to workspace number 4\n'\
'  $mod+Shift+5 → move container to workspace number 5\n'\
'  $mod+Shift+6 → move container to workspace number 6\n'\
'  $mod+Shift+7 → move container to workspace number 7\n'\
'  $mod+Shift+8 → move container to workspace number 8\n'\
'  $mod+Shift+9 → move container to workspace number 9\n'\
'  $mod+Shift+0 → move container to workspace number 10\n'\
'  $mod+b → splith\n'\
'  $mod+v → splitv\n'\
'  $mod+e → layout toggle split\n'\
'  $mod+f → fullscreen\n'\
'  $mod+Shift+space → floating toggle\n'\
'  $mod+space → focus mode_toggle\n'\
'  $mod+Shift+a → focus parent\n'\
'  $mod+Shift+minus → move scratchpad\n'\
'Applications:\n'\
'  $mod+Return → Alacritty\n'\
'  $mod+d → Wofi\n'\
'  $mod+Shift+f → Firefox\n'\
'  $mod+Alt+l → Swaylock\n'\
'  $mod+Shift+e → exit Sway\n'\
'System:\n'\
'  $mod+Shift+c → reload Sway config\n'\
'Workspaces:\n'\
'  $mod+1 → workspace number 1\n'\
'  $mod+2 → workspace number 2\n'\
'  $mod+3 → workspace number 3\n'\
'  $mod+4 → workspace number 4\n'\
'  $mod+5 → workspace number 5\n'\
'  $mod+6 → workspace number 6\n'\
'  $mod+7 → workspace number 7\n'\
'  $mod+8 → workspace number 8\n'\
'  $mod+9 → workspace number 9\n'\
'  $mod+0 → workspace number 10\n'\
'  $mod+Shift+s → layout stacking\n'\
'  $mod+Shift+w → layout tabbed\n'\
'Other:\n'\
'  $mod+w → kill\n'\
'  Alt+F4 → kill\n'\
'  $mod+minus → scratchpad show\n'\
'  $left → resize shrink width 10px\n'\
'  $down → resize grow height 10px\n'\
'  $up → resize shrink height 10px\n'\
'  $right → resize grow width 10px\n'\
'  Left → resize shrink width 10px\n'\
'  Down → resize grow height 10px\n'\
'  Up → resize shrink height 10px\n'\
'  Right → resize grow width 10px\n'\
'  Return → mode "default"\n'\
'  Escape → mode "default"\n'\
'  $mod+r → mode "resize"\n'

printf '{"tooltip": "%s"}' "$TOOLTIP"
