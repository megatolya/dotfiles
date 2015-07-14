set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" appearance
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'walm/jshint.vim'
Plugin 'mileszs/ack.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'motemen/git-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" themes
Plugin 'ricardovaleriano/vim-github-theme'
Plugin 'zeis/vim-kolor'
Plugin 'xoria256.vim'
Plugin 'endel/vim-github-colorscheme'

" syntax
Plugin 'wavded/vim-stylus'
Plugin 'maksimr/vim-yate'
Plugin 'digitaltoad/vim-jade'
Plugin 'juvenn/mustache.vim'
Plugin 'guileen/vim-node'
Plugin 'groenewege/vim-less'
Plugin 'leafgarland/typescript-vim'
Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

colorscheme github

let mapleader = ","

let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1 " Quit on opening files from the tree

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_height = 15
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|DS_Store)$',
  \ }

nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w
nnoremap Y y$

nmap <Leader>ts :%s/\s\+$//e<CR>
nmap <Leader>bl :ls<cr>:b
nmap <Leader>tn :tabnew<cr>
nmap <Leader>o :NERDTree<cr>:OpenBookmark<Space>
nmap <Leader>v :tabnew<cr>:e ~/.vimrc<cr>
nmap <Leader>r :set relativenumber!<cr>

nmap qq :q<cr>

nmap <Tab> gt
nmap <S-Tab> gT

nmap <S-l> <Plug>GitGutterNextHunk
nmap <S-h> <Plug>GitGutterPrevHunk

nnoremap <silent> <Esc><Esc> :nohlsearch <CR>

nmap <S-Space> :NERDTreeFind<cr>
nmap <Space> :NERDTreeToggle<CR>

nmap * *N

vnoremap < <gv
vnoremap > >gv

noremap j gj
noremap k gk

noremap <S-k> <NOP>

nmap + <C-W>+
nmap _ <C-W>-
nmap = <C-W>5>
nmap - <C-W>5<

nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

set autoread
set mouse=
set pastetoggle=,pa
set guicursor=n:blinkon0
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
set numberwidth=4
set number
set relativenumber
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

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

au BufNewFile,BufRead *.js setf javascript
au BufNewFile,BufRead *.jsm setf javascript
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead Jakefile setf javascript

function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc

nmap <Leader>m :call ToggleMouse()<cr>
