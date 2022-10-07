#!/bin/sh

# go to home directory
cd

# create vim folder
mkdir .vim

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# go to plugins folder
cd ~/.vim/bundle

# install nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# install one theme
cd ~/.vim/bundle
git clone https://github.com/rakr/vim-one.git ~/.vim/bundle/vim-one

# install vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# install vim-airline-theme
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

# install vim-javascript
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

# install vim-devicons
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons

git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer --tern-completer
