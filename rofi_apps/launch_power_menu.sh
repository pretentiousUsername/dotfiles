#!/usr/bin/env bash

rofi \
  -show p \
  -modi p:'~/Projects/dotfiles/rofi_apps/rofi-power-menu/./rofi-power-menu --symbols-font "Symbols Nerd Font Mono"' \
  -font "JuliaMono NerdFont 10" \
  -theme Paper \
  -theme-str 'window {width: 8em;} listview {lines: 6;}'
