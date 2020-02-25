fpath=(~/.zsh/completion $fpath)

autoload -Uz colors
colors

autoload -U compinit
compinit

export XDG_CONFIG_HOME=$HOME/dotfiles
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls='ls --color=auto'
alias ll='ls -alhF'
alias l='ls -CF'
alias vim='nvim'

# For git completion and prompt
source ~/git-prompt.sh
setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
