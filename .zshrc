autoload -Uz colors
colors

autoload -U compinit
compinit

autoload -Uz vcs_info

export XDG_CONFIG_HOME=$HOME/dotfiles

alias ll='ls -alhF'
alias l='ls -CF'
alias vim='nvim'
alias bat='batcat'

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"

PATH=$HOME/.cargo/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=/usr/local/cuda/bin:$PATH

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# This unsetopt is for WSL2 completion issues
# See https://github.com/sorin-ionescu/prezto/issues/1820
unsetopt PATH_DIRS

# We are now trying to move pynev to rye.
# But unstable yet.
source "$HOME/.rye/env"
rye config --set-bool behavior.global-python=true
source $HOME/dotfiles/pyglobal/.venv/bin/activate


# Search shell history with peco: https://github.com/peco/peco
# Adapted from: https://github.com/mooz/percol#zsh-history-search
if which peco &> /dev/null; then
  function peco_select_history() {
    local tac
    { which gtac &> /dev/null && tac="gtac" } || \
      { which tac &> /dev/null && tac="tac" } || \
      tac="tail -r"
    BUFFER=$(fc -l -n 1 | eval $tac | \
                peco --layout=bottom-up --query "$LBUFFER")
    CURSOR=$#BUFFER # move cursor
    zle -R -c       # refresh
  }

  zle -N peco_select_history
  bindkey '^R' peco_select_history
fi

source "$HOME/.cargo/env"
