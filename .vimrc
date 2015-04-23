filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" appearance
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'walm/jshint.vim'
Bundle 'mileszs/ack.vim'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'motemen/git-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'aperezdc/vim-template'
" powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" themes
Bundle 'ricardovaleriano/vim-github-theme'
Bundle 'zeis/vim-kolor'
Bundle 'xoria256.vim'


" syntax
Bundle 'wavded/vim-stylus'
Bundle 'maksimr/vim-yate'
Bundle 'digitaltoad/vim-jade'
Bundle 'juvenn/mustache.vim'
Bundle 'guileen/vim-node'
Bundle 'groenewege/vim-less'
Bundle 'leafgarland/typescript-vim'

filetype plugin indent on
syntax enable

colorscheme github

let mapleader = ","

let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1 " Quit on opening files from the tree
let NERDTreeKeepTreeInNewTab=1
"let NERDTreeBookmarksFile= $HOME . '/dotfiles/.NERDTreeBookmarks'


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_height = 15
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_mruf_max = 250
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

nmap qq :q<cr>

nmap <Tab> gt
nmap <S-Tab> gT

nnoremap <silent> <Esc><Esc> :nohlsearch <CR>

nmap <S-Space> :NERDTreeFind<cr>
nmap <Space> :NERDTreeToggle<CR>

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
au BufNewFile,BufRead *.jsm setf javascript
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead Jakefile setf javascript

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:SuperTabLongestEnhanced=0
let g:SuperTabLongestHighlight=0
