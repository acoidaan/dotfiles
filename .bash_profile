#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if  [[ -z $WAYLAND_DISPLAY && $(tty) == /dev/tty1 ]]; then
	exec start-hyprland
fi
