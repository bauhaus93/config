#! /bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setkeymap de

exec bspwm

