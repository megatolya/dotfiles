set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
    autocmd VimEnter * qall
endif

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'endel/vim-github-colorscheme'
Plug 'mileszs/ack.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/jsonc.vim'
Plug 'tasn/vim-tsx'
Plug 'prettier/vim-prettier'

call plug#end()
filetype plugin indent on

cnoreabbrev Ack Ack!
nnoremap ,a :Ack!<Space>

colorscheme github

let mapleader = ","

let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1
let NERDSpaceDelims=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

noremap j gj
noremap k gk

nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w
nnoremap <silent> <Esc><Esc> :nohlsearch <cr>

vnoremap < <gv
vnoremap > >gv

nmap * *N
nmap + <C-W>+
nmap _ <C-W>-
nmap = <C-W>5>
nmap - <C-W>5<
nmap <Space> :NERDTreeToggle<cr>
nmap f<Space> :NERDTreeFind<cr>
nmap <C-t> :Files<cr>

nnoremap <F1> :setlocal number!<cr>
nnoremap <F2> :setlocal relativenumber!<cr>
nnoremap <F3> :setlocal paste!<cr>

set autoread
set ttyfast
set lazyredraw
set scrolloff=15
set sidescrolloff=15
set wrap
set linebreak
set backspace=indent,eol,start
set autoindent
set shiftround
set ignorecase
set smartcase
set smarttab
set expandtab
set smartindent
set hlsearch
set nohidden
set incsearch
set undolevels=1000
set wildmenu
set wildmode=list:full
set hidden
set visualbell
set noerrorbells
set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf-8,cp1251
set list
set laststatus=2
set shm+=I
set t_Co=256
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
set synmaxcol=200
set undodir=~/.vim/undos
set undofile
set noshowmode
set shortmess=AItWsoO
set colorcolumn=100
set shiftwidth=4
set softtabstop=4
set history=1000
set tabstop=4
set ruler

autocmd FileType javascript setlocal iskeyword+=-
