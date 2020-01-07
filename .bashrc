#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias cd-df="cd ~/projects/dotfiles-arch"
alias i3config="vim ~/projects/dotfiles-arch/.config/i3/config"
alias kittyconfig="vim ~/projects/dotfiles-arch/.config/kitty/kitty.conf"
alias pbarconfig="vim ~/projects/dotfiles-arch/.config/polybar/config"
