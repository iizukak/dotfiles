autoload -Uz colors
colors

autoload -U compinit
compinit

autoload -Uz vcs_info

export XDG_CONFIG_HOME=$HOME/dotfiles
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ll='ls -alhF'
alias l='ls -CF'
alias vim='nvim'

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

PATH=$HOME/.cargo/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
