#exec bspwm
exec hsetroot -solid '#80deea' &
polybar base &
xsetroot -cursor_name left_ptr &
xrdb -load ~/.Xresources &
setxkbmap -option ctrl:nocaps &
xmodmap -e "keycode 107 = Super_R" &
compton --vsync opengl -f &
dropbox &
2bwm
