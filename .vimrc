execute pathogen#infect()
syntax on
filetype plugin indent on

" Color scheme
" - One
colorscheme one
set background=dark
let g:airline_theme='one'
let g:airline_powerline_fonts = 1

" Font
set encoding=utf8
set guifont=JetBrainsMono\ Nerd\ Font\ 11
" set gfn=Meslo\ LG\ M\ for\ Powerline




set laststatus=2

" YouCompleteMe
let g:ycm_auto_trigger = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 3

" NERDTree
" -> on startup
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.DS_Store$']
nmap <silent> <C-\> :NERDTreeToggle<CR>


" Show line numbers
set number

" Break lines at word
set linebreak

" Wrap-broken line prefix
set showbreak=+++

" Highlight matching brace
set showmatch

" Highlight all search results
set hlsearch

" Enable smart-case search
set smartcase

" Always case-insensitive
set ignorecase


" Searches for strings incrementally
set incsearch

" Auto-indent new lines
set autoindent

" Use spaces instead of tabs
set expandtab

" Number of auto-indent spaces
set shiftwidth=2

" Enable smart-indent
set smartindent

" Enable smart-tabs
set smarttab

" Number of spaces per Tab
set softtabstop=2

" Show row and column ruler information
set ruler

" Highlight current line
set cursorline




