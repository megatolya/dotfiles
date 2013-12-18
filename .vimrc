filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" basic
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'walm/jshint.vim'
Bundle 'mileszs/ack.vim'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'motemen/git-vim'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'

" themes
Bundle 'ricardovaleriano/vim-github-theme'
Bundle 'zeis/vim-kolor'
Bundle 'xoria256.vim'

" syntax
Bundle 'wavded/vim-stylus'
Bundle 'maksimr/vim-yate'
Bundle 'plasticboy/vim-markdown'
Bundle 'digitaltoad/vim-jade'
Bundle 'juvenn/mustache.vim'
Bundle 'guileen/vim-node'
Bundle 'ap/vim-css-color'

" snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

filetype plugin indent on
syntax enable

colorscheme kolor

let mapleader = ","

let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen=1 " Quit on opening files from the tree
let NERDTreeKeepTreeInNewTab=1

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


let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

nmap <leader>ts :%s/\s\+$//e<CR>
nmap <Leader>bl :ls<cr>:b
nmap <Leader>tn :tabnew<cr>
nmap vv viw

nmap <Tab> gt
nmap <S-Tab> gT

nmap '' ysiw'
nmap "" ysiw"

nnoremap <silent> <Esc><Esc> :nohlsearch <CR>

nmap <Space> :NERDTreeToggle<cr>

nmap * *N

nnoremap <cr> a<cr><Esc>k$hl

vnoremap < <gv
vnoremap > >gv

inoremap jj <Esc>

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
set statusline=%F%m%r%h%w\ -\ %Y\ [%l,%v][%p%%]
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

:command WQ wq
:command Wq wq
:command W w
:command Q q
