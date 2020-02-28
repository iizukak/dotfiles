# dotfiles

my personal settings

## Requirements

Before install dotfiles, Please install these requirements.

- zsh
- pyenv
    - [reference blog for macOS](https://sleepless-se.net/2019/08/05/pyenv-install-zlib-not-available-error/)
- [iTerm2](https://iterm2.com/) 
    - [reference blog for ubuntu](https://qiita.com/shigechioyo/items/198211e84f8e0e9a5c18)
- [Ricty](https://rictyfonts.github.io/)
- [Neovim](https://github.com/neovim/neovim)
	- [Installation](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Universal Ctags](https://github.com/universal-ctags/ctags)
- [git-prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
- dein
    - [reference blog](https://qiita.com/Coolucky/items/0a96910f13586d635dc0)

## Installation

```
$ cd
$ git clone git@github.com:iizukak/dotfiles.git
$ ln -s dotfiles/.gitconfig .
$ ln -s dotfiles/.zshrc .
```

For Ricty

```
$ brew tap sanemat/font
$ brew install ricty
```

This command install Ricty to `/usr/local/opt/ricty/share/fonts/`
