set nocompatible              " be iMproved, required

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
    autocmd VimEnter * qall
endif

call plug#begin()

" appearance
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'endel/vim-github-colorscheme'

call plug#end()
filetype plugin indent on    " required

syntax on

colorscheme github

let mapleader = ","

let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1

let NERDSpaceDelims=1

nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w
nnoremap Y y$

nnoremap <silent> <Esc><Esc> :nohlsearch <cr>

nmap <Space> :NERDTreeToggle<cr>
nmap f<Space> :NERDTreeFind<cr>

nmap <C-t> :Files<cr>

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
set colorcolumn=100
set shiftwidth=4
set softtabstop=4
set tabstop=4

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
