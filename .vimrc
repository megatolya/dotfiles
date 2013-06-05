set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'walm/jshint.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'mileszs/ack.vim'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'zeis/vim-kolor'
Bundle 'motemen/git-vim'
Bundle 'ervandew/supertab'
Bundle 'ap/vim-css-color'
Bundle 'mattn/zencoding-vim'

filetype plugin indent on
syntax enable

let mapleader = ","
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1

colorscheme kolor

nmap <leader>ts :%s/\s\+$//e<CR>
nmap <Leader>bl :ls<cr>:b
nmap <Leader>tn :tabnew<cr>
nmap vv viw
nmap <Tab> gt
nmap <S-Tab> gT

nnoremap <silent> <Esc><Esc> :nohlsearch <CR>

nmap <Space> :NERDTreeToggle<cr>

nmap * *N

vnoremap < <gv
vnoremap > >gv

noremap j gj
noremap k gk

nmap + <C-W>+
nmap _ <C-W>-
nmap = <C-W>5>
nmap - <C-W>5<

nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

set ttyfast
set lazyredraw
set scrolloff=15
set sidescrolloff=15
set nocursorcolumn
set nocursorline
set wrap
set linebreak
set tabstop=4
set backspace=indent,eol,start
set autoindent
set shiftwidth=4
set shiftround
set ignorecase
set smartcase
set smarttab
set smartindent
set hlsearch
set incsearch
set undolevels=1000
set wildmode=list:full
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu
set hidden
set visualbell
set noerrorbells
set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf-8,cp1251
set list
set numberwidth=4
set number
set laststatus=2
set shm+=I
set expandtab
set t_Co=256
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
