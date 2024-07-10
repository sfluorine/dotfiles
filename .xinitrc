xsetroot -cursor_name left_ptr

/usr/libexec/polkit-gnome-authentication-agent-1 &
nitrogen --restore
picom &

exec dbus-launch --exit-with-session bspwm
