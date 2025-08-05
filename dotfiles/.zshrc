case $- in
*i*) ;;
*) return ;;
esac
HISTCONTROL=ignoreboth


HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUPE=erase
setopt appendhistory
setopt sharehistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias ..='cd ..'
alias vim='nvim'
alias tmk='tmux kill-session'
alias sleep="systemctl suspend"
alias gst='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'
alias glg='git log --graph --oneline'
alias lg='lazygit'
alias gdev='git add . && git commit -m "dev commit" && git push'


alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

bindkey -v
bindkey ^R history-incremental-search-backward 
bindkey ^S history-incremental-search-forward


export PATH="$PATH:$HOME/src/flutter/bin"
export PATH="$PATH:$HOME/src/lua_ls/bin"
export PATH="$PATH:$HOME/src/android-studio/bin/"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/.dotnet/tools"
export PATH="$PATH":"$HOME/src/luals/bin"
export VISUAL="/usr/local/bin/nvim"
export EDITOR="/usr/local/bin/nvim"
export CHROME_EXECUTABLE="/usr/bin/chromium"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light spaceship-prompt/spaceship-prompt
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit

export PATH="$PATH:/home/hannes/.lmstudio/bin"
