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

Copy `coc-settings.json` to folder `~/.config/nvim` to improve the config of coc, open nvim and run `:CocInstall coc-json coc-tsserver` to install javascript/typescript server needed by coc

To run Ag you need to install `the_silver_searcher` package you can find doc at this [link](https://github.com/ggreer/the_silver_searcher)

### Used packages
" Visualization
scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
morhetz/gruvbox'
vim-airline/vim-airline'
ryanoasis/vim-devicons'

" Utils
editorconfig/editorconfig-vim'
tpope/vim-sensible'
tpope/vim-commentary', {'on': '<Plug>Commentary'}
ctrlpvim/ctrlp.vim'
tpope/vim-fugitive'
tpope/vim-surround' 
airblade/vim-gitgutter'

" Fzf finder
junegunn/fzf', { 'do': { -> fzf#install() } }
junegunn/fzf.vim'
  
neoclide/coc.nvim', {'branch': 'release'}
dense-analysis/ale'

plasticboy/vim-markdown', { 'for': 'markdown' }
pechorin/any-jump.vim', { 'on': 'AnyJump' }