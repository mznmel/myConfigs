call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()

set nocompatible
syntax on
"colorscheme wombat
colorscheme desert
filetype plugin indent on
"set autoread

"" GUI
set guioptions-=m  "remove toolbar
set guioptions-=T  "remove toolbar
set guifont=Consolas:h18:cANSI

set autochdir
set backspace=indent,eol,start
"set backup
"set backupdir=~/.vim/backup
"set directory=~/.vim/tmp
set fileformats=unix,dos,mac
set hidden
set mouse=a

set visualbell
set incsearch
set nohlsearch
set ignorecase
set smartcase

set wildmenu
set wildmode=list:longest

set ruler
set laststatus=2

set number
set numberwidth=5
set scrolloff=3
set scrolljump=5
set showmatch
set sidescrolloff=10

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set shortmess=a

imap jj <Esc>j
map <C-n> <Esc>:NERDTreeToggle<Return>

function! SmartHome()
  let s:col = col(".")
  normal! ^
  if s:col == col(".")
    normal! 0
  endif
endfunction
nnoremap <silent> <Home> :call SmartHome()<CR>
inoremap <silent> <Home> <C-O>:call SmartHome()<CR>

map <F6> :tabnext<CR>
map <F7> :tabprev<CR>
map <F8> :tabclose<CR>

