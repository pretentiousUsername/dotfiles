#!/usr/bin/env bash

rofi \
  -show p \
  # -modi p:'~/Projects/dotfiles/rofi_apps/rofi-power-menu/./rofi-power-menu --symbols-font "Symbols Nerd Font Mono"' \
  -modi p:'~/Projects/dotfiles/rofi_apps/./rofi_power_menu --symbols-font "Symbols Nerd Font Mono"' \
  -font "JuliaMono NerdFont 10" \
  -theme-str 'window {width: 10em;} listview {lines: 6;}'
