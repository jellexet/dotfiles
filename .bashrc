#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
command -v helix &>/dev/null && alias hx='helix'

# BAT aliases and functions
# can use "help command" to show a colorized help printout
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}

# override -h and --help with bat
alias man='batman'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(zoxide init bash)"

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
shopt -s histappend

# hgrep <argument> returns all commands in history that match the argument
hgrep() { history | grep -i "$@"; }

#ghcup configuration
[ -f "/home/mshehu/.ghcup/env" ] && . "/home/mshehu/.ghcup/env" # ghcup-env
#opam configuration
[[ ! -r '/home/mshehu/.opam/opam-init/init.sh' ]] || source '/home/mshehu/.opam/opam-init/init.sh' > /dev/null 2> /dev/null
#cargo
export PATH="$PATH:/home/mshehu/.cargo/bin"
