# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS

#for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

zstyle :compinstall filename '/home/mshehu/.zshrc'

# Force Zsh to preserve case for all completions
CASE_SENSITIVE="true"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

#----------------------------------------------------------------------------------
h=()
if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
if [[ -r ~/.ssh/known_hosts ]]; then
  h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
fi
if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:ssh:*' hosts $h
  zstyle ':completion:*:slogin:*' hosts $h
fi
#----------------------------------------------------------------------------------

autoload -Uz compinit && compinit
autoload -U colors && colors

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'

# BAT aliases and functions
# can use "help command" to show a colorized help printout
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}

# override -h and --help with bat
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# manual
alias man='batman'

# GOBIN
export PATH="$HOME/.local/share/go/bin:$PATH"

# ghcup
[ -f "/home/mshehu/.ghcup/env" ] && . "/home/mshehu/.ghcup/env" # ghcup-env

# evals
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
