let g:ale_disable_lsp = 1

call plug#begin('~/.vim/plugged')
  " Visualization
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  " Plug 'tomasiser/vim-code-dark'
  " Plug 'itchyny/lightline.vim'
  " Plug 'itchyny/vim-gitbranch'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround' 
  Plug 'airblade/vim-gitgutter'

  " Utils & format
  Plug 'editorconfig/editorconfig-vim'

  Plug 'pangloss/vim-javascript'

  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-commentary', {'on': '<Plug>Commentary'}

  " Plug 'neovim/nvim-lspconfig'

  Plug 'ctrlpvim/ctrlp.vim'

  " Fzf finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'w0rp/ale'
  Plug 'dense-analysis/ale'

  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

  Plug 'pechorin/any-jump.vim', { 'on': 'AnyJump' }
  
call plug#end()

" Display Settings
syntax on
if has('termguicolors')
  set termguicolors
endif
syntax enable
set t_Co=256
" Disable Background Color Erase (tmux)
if &term =~ '256color'
  set t_ut=
endif


" " Term colors
" if has('termguicolors')
"   set termguicolors
" endif
" syntax enable
" set t_Co=256
" " Disable Background Color Erase (tmux)
" if &term =~ '256color'
"   set t_ut=
" endif



" let g:netrw_banner=0 " disable banner in netrw
" let g:netrw_liststyle=3 " tree view in netrw
" let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " syntax highlighting in markdown
" nnoremap <leader>v :e $MYVIMRC<CR>

" Theme 
colorscheme gruvbox

" Lightline + GitBranch
" let g:lightline = {
"   \ 'active': {
"   \  'left': [ [ 'mode', 'paste' ],
"   \    [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"   \  },
"   \  'component_function': {
"   \    'gitbranch': 'fugitive#head',        
"   \  },
"   \  'colorscheme': 'codedark',
"   \  }
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ,
"       \             [ 'venv', 'readonly'] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'fugitive#head',
"       \   'venv': 'virtualenv#statusline'
"       \ },
"       \ } 

" air-line
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.DS_Store$']
nmap <silent> <C-\> :NERDTreeToggle<CR>

" Ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_completion_enabled = 1
let g:ale_set_highlights = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'
let g:ale_fixers = {
\   'javascript': []
\}
let g:ale_linters = {
\   'javascript': ['standard'],
\   'typescript': ['ts-standard']
\}
highlight ALEStyleWarning ctermfg=Black
highlight ALEStyleWarning ctermbg=Yellow
highlight ALEWarning ctermfg=Black
highlight ALEWarning ctermbg=Yellow
highlight ALEStyleError ctermfg=Black
highlight ALEStyleError ctermbg=Red
highlight ALEError ctermfg=Black
highlight ALEError ctermbg=Red
" Show error in the statusline
let g:airline#extensions#ale#enabled = 1

" Commentary
map  gc  <Plug>Commentary
nmap gcc <Plug>CommentaryLine

" deoplete
" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:deoplete#enable_at_startup = 1

" any-jump
let g:any_jump_disable_default_keybindings = 1
" Normal mode: Jump to definition under cursor
nnoremap <C-o> :AnyJump<Cr>

" ctrlp
nmap <silent> <C-p> :CtrlP<CR>
" default ignore
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'
" ignore what is inside the .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

" Font
set encoding=utf8
set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h14

" Show line numbers
set number
set numberwidth=2

" Break lines at word
set linebreak

" Wrap-broken line prefix
set showbreak=+++

" Line Wrap (number of cols)
set textwidth=0

" Highlight matching brace
set showmatch

" Use visual bell (no beeping)
set visualbell

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

" width for autoindents
set shiftwidth=2

" number of columns occupied by a tab character
set tabstop=2

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

" Number of undo levels
set undolevels=1000

" Backspace behaviour
set backspace=indent,eol,start

" Automatically :write before running commands
set autowrite

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Helps with slow loading
set nocompatible
set ttyfast
set lazyredraw

" Activate the cursor line only during Insert mode
set cursorline!
autocmd InsertEnter,InsertLeave * set cul!

" Reload files changed outside vim
set autoread
" Reload file with external changes on focus
au FocusGained * :checktime

" Fuzzy finder
nnoremap <C-f> :Ag<Cr>
nnoremap <C-p> :Files<Cr>

" Avoids to type ':noh' after a search
:nnoremap <esc> :noh<return><esc>

" Turn Off Swap Files
set noswapfile
" Disable backup files
set nobackup
set nowritebackup

" Automatically fitting the quickfix window height
au FileType qf call AdjustWindowHeight(1, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
" Automatically reload vimrc when it's saved
autocmd! BufWritePost vimrc so ~/.config/nvim/init.vim"


