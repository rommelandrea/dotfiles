# dotfiles

This are my dotfiles for Ubuntu or Arch Linux

On script folder you can find the scripts to setup the environments

On root the main dotfiles for ZSH, and Vim

## NeoVim
To anable the neovim config run this command

```
mkdir -p ~/.config/nvim/

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
This commands create a config folder for neovim and install vim-plug to install other plugins
The home of vim-plug is https://github.com/junegunn/vim-plug

After this you can copy init.vim from this project folder to `~/.config/nvim` run neovim with nvim command and then in normal mode run `:PlugInstall`
