# dotfiles

iizukak's personal settings.

These scripts are tested with Windows 11 + WSL2 + Ubuntu 22.04

## Third party softwares

- npm & n
- zsh
  - [prezto](https://github.com/sorin-ionescu/prezto)
- [Neovim](https://github.com/neovim/neovim)
  - [vim-plug](https://github.com/junegunn/vim-plug)
  - [coc.nvim](https://github.com/neoclide/coc.nvim)
- [pyenv](https://github.com/pyenv/pyenv)
- [source-han-code-jp](https://github.com/adobe-fonts/source-han-code-jp)
- [Universal Ctags](https://github.com/universal-ctags/ctags)

## Create symbolic links

```
$ cd
$ git clone git@github.com:iizukak/dotfiles.git
$ ln -s dotfiles/.gitconfig .
$ ln -s dotfiles/.zshrc .
$ ln -s dotfiles/.zpreztorc .
```
