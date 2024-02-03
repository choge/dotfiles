#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Start sway
export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland
# Disabled according to this
#  https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland#KDE_Plasma
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_QPA_PLATFORM="wayland;xcb"
export _JAVA_AWT_WM_NONREPARENTING=1
export XMODIFIERS=@im=fcitx

export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH

#if [ -z $DISPLAY ] && [ "$(tty)" == "/dev/tty1" ]; then
#    exec sway
#fi

eval "$(starship init bash)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
