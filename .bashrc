#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# xrandr --output VGA1 --primary --left-of LVDS1 --output LVDS1 --auto
xrandr --output VGA1 --primary --left-of LVDS1 --output LVDS1 --off
