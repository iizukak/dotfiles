# dotfiles

my personal settings

## Requirements

Before install dotfiles, Please install these requirements.

- zsh
- [iTerm2](https://iterm2.com/) 
- [Ricty](https://rictyfonts.github.io/)
- [Neovim](https://github.com/neovim/neovim)
	- [Installation](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Universal Ctags](https://github.com/universal-ctags/ctags)
- [git-prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)

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
