call plug#begin('~/.vim/plugged')
  Plug 'https://github.com/tomasiser/vim-code-dark'
  Plug 'https://github.com/pangloss/vim-javascript'
  Plug 'https://github.com/itchyny/lightline.vim'
  Plug 'https://github.com/itchyny/vim-gitbranch'
  Plug 'https://github.com/szw/vim-maximizer'
  Plug 'https://github.com/kassio/neoterm'
  Plug 'https://github.com/sbdchd/neoformat'
  Plug 'https://github.com/kassio/neoterm'
  Plug 'https://github.com/preservim/nerdtree'
call plug#end()


" default options
set completeopt=menu,menuone,noselect       " better autocomplete options
" set mouse=a                               " if I accidentally use the mouse
set splitright                              " splits to the right
set splitbelow                              " splits below
set expandtab                               " space characters instead of tab
set tabstop=2                               " tab equals 2 spaces
set shiftwidth=2                            " indentation
set autoindent                              " autoindent
set smarttab                                " enable smart tab
set smartindent                             " enable smart indent
set number " show absolute line numbers
set ignorecase " search case insensitive
set smartcase                               " search via smartcase

set incsearch " search incremental
set diffopt+=vertical " starts diff mode in vertical split
set hidden " allow hidden buffers
set nobackup " don't create backup files
set nowritebackup " don't create backup files
set cmdheight=1 " only one line for commands
set shortmess+=c " don't need to press enter so often
set signcolumn=yes " add a column for sings (e.g. LSP, ...)
set updatetime=520 " time until update
set undofile " persists undo tree
filetype plugin indent on " enable detection, plugins and indents
let mapleader = " " " space as leader key
if (has("termguicolors"))
  set termguicolors " better colors, but makes it sery slow!
endif
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown
nnoremap <leader>v :e $MYVIMRC<CR>

" Theme 
colorscheme codedark

" Lightline + GitBranch
let g:lightline = {
  \ 'active': {
  \  'left': [ [ 'mode', 'paste' ],
  \    [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \  },
  \  'component_function': {
  \      'gitbranch': 'gitbranch#name'
  \  },
  \  'colorscheme': 'codedark',
  \  }

" szw/vim-maximizer
nnoremap <silent> <C-w>m :MaximizerToggle!<CR>

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_autoinsert = 1

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.DS_Store$']
nmap <silent> <C-\> :NERDTreeToggle<CR>
