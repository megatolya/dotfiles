set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" appearance
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'

" themes
Plugin 'endel/vim-github-colorscheme'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

colorscheme github

let mapleader = ","

let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1 " Quit on opening files from the tree

let g:ctrlp_cmd = 'CtrlPMRUFiles'

nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w
nnoremap Y y$

nnoremap <silent> <Esc><Esc> :nohlsearch <cr>

nmap <Space> :NERDTreeToggle<cr>
nmap f<Space> :NERDTreeFind<cr>

nmap * *N

vnoremap < <gv
vnoremap > >gv

noremap j gj
noremap k gk

noremap <S-k> <NOP>

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

nmap + <C-W>+
nmap _ <C-W>-
nmap = <C-W>5>
nmap - <C-W>5<

map f <Nop>
nmap f <Nop>
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

set autoread
set mouse=
set nocompatible
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
set softtabstop=4
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
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu
set wildmode=full
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
set showcmd
set showmode
set shortmess=AItWsoO
set colorcolumn=82

command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

au BufNewFile,BufRead *.js setf javascript
au BufNewFile,BufRead *.ts setf javascript
au BufNewFile,BufRead *.ts setf javascript
au BufNewFile,BufRead *.jsm setf javascript
au BufNewFile,BufRead *.json setf javascript

au BufNewFile,BufRead *.less setf css
au BufNewFile,BufRead *.styl setf css
au BufNewFile,BufRead *.scss setf css
