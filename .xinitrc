[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
setxkbmap "de"
feh -z --bg-fill ~/background/
exec bspwm
