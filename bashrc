#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Start sway
export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_QPA_PLATFORM="wayland;xcb"
export _JAVA_AWT_WM_NONREPARENTING=1
export XMODIFIERS=@im=fcitx
#if [ -z $DISPLAY ] && [ "$(tty)" == "/dev/tty1" ]; then
#    exec sway
#fi

eval "$(starship init bash)"
