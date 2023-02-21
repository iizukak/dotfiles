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

eval "$(pyenv init -)"

# PROMPT 設定: https://www.sirochro.com/note/terminal-zsh-prompt-customize/#zsh_Git
# PROMPT変数内で変数参照
setopt prompt_subst

zstyle ':vcs_info:git:*' check-for-changes true #formats 設定項目で %c,%u が使用可
zstyle ':vcs_info:git:*' stagedstr "%F{green}!" #commit されていないファイルがある
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+" #add されていないファイルがある
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f" #通常
zstyle ':vcs_info:*' actionformats '[%b|%a]' #rebase 途中,merge コンフリクト等 formats 外の表示

# %b ブランチ情報
# %a アクション名(mergeなど)
# %c changes
# %u uncommit

# プロンプト表示直前に vcs_info 呼び出し
precmd () { vcs_info }

# プロンプト（左）
PROMPT='%{$fg[red]%}[%n@%m]%{$reset_color%}'
PROMPT=$PROMPT'%{${fg[red]}%}[%~]%{${reset_color}%}'
PROMPT=$PROMPT'${vcs_info_msg_0_} %{${fg[red]}%}%}$%{${reset_color}%} '

RPROMPT=''

PATH=$HOME/.cargo/bin:$PATH
export PATH=/Users/iizuka/.nimble/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
