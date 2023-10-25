# dotfiles

iizukak's personal settings.

These scripts are tested with Windows 11 + WSL2 + Ubuntu 22.04

## Third party softwares

- npm & n
- zsh
  - [prezto](https://github.com/sorin-ionescu/prezto)
- [Neovim](https://github.com/neovim/neovim)
  - `apt` でインストールされる Neovim はバージョンが古いため、AppImage を別途入れる必要あり
  - lspconfig
  - Lazy
  - Telescope
- [Rye](https://github.com/mitsuhiko/rye)
  - `pyglobal` directory includes global Python settings.

## Create symbolic links

```
$ cd
$ git clone git@github.com:iizukak/dotfiles.git
$ ln -s dotfiles/.gitconfig .
$ ln -s dotfiles/.zshrc .
$ ln -s dotfiles/.zpreztorc .
$ ln -s dotfiles/.tmux.conf .
```
