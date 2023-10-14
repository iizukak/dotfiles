autoload -Uz colors
colors

autoload -U compinit
compinit

autoload -Uz vcs_info

export XDG_CONFIG_HOME=$HOME/dotfiles

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
# This unsetopt is for WSL2 completion issues
# See https://github.com/sorin-ionescu/prezto/issues/1820
unsetopt PATH_DIRS

# We are now trying to move pynev to rye.
# But unstable yet.
# source "$HOME/.rye/env"
