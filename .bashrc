#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias hx='helix'

# BAT aliases and functions
# can use "help command" to show a colorized help printout
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}

# override -h and --help with bat
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
alias man='batman'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(zoxide init bash)"

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
shopt -s histappend

# hgrep <argument> returns all commands in history that match the argument
hgrep () { fc -lim "*$@*" 1 }

#ghcup configuration
[ -f "/home/mshehu/.ghcup/env" ] && . "/home/mshehu/.ghcup/env" # ghcup-env
#opam configuration
[[ ! -r '/home/mshehu/.opam/opam-init/init.sh' ]] || source '/home/mshehu/.opam/opam-init/init.sh' > /dev/null 2> /dev/null
