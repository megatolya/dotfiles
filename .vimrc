"для vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-javascript'
Bundle 'jQuery'
Bundle 'walm/jshint.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'AutoClose'
Bundle 'evindor/vim-rusmode'
Bundle 'aperezdc/vim-template'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'motemen/git-vim'

filetype plugin indent on
syntax enable
"===================

let mapleader = ","
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
colorscheme xoria256
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
set hlsearch
set incsearch
set undolevels=1000

set wildmode=list:full
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu

set title
set hidden
set visualbell
set noerrorbells
set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf-8,cp1251

"unprintable chars
"
set list
set listchars=tab:\ \ ,trail:.

set numberwidth=4

set laststatus=2

set shm+=I
set expandtab

set t_Co=256

nmap <Bs> :NERDTreeToggle<CR>
nmap <Leader>re :e!<cr>
nmap <leader>ts :%s/\s\+$//e<CR>
nmap <Leader>bl :ls<cr>:b
nmap <Leader>tn :tabnew<cr>
nmap <Leader>j i<cr><esc>k$

nmap vv viw

set pastetoggle=,pp



nmap <Leader>n :set number!<cr>
nmap <Tab> gt
nmap <S-Tab> gT
nmap <Leader><left> :leftabove vnew<CR>
nmap <Leader><right> :rightbelow vnew<CR>
nmap <Leader><up> :leftabove new<CR>
nmap <Leader><down> :rightbelow new<CR>

nmap <C-j> a<CR><ESC>k$

command! Q q
command! W w

nnoremap <silent> <Esc><Esc> :nohlsearch <CR>

nmap <Space> :NERDTreeToggle<cr>

nmap * *N

vnoremap < <gv
vnoremap > >gv

noremap j gj
noremap k gk

nmap '' ysiw'
nmap "" ysiw"
nmap )) ysiw)
nmap (( ysiw)


" Переключение по сплитам
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

" В коммандном режиме разрешить прыгать в конец и начало строки,
" как в консоли
cnoremap <c-e> <end>
imap     <c-e> <c-o>$
cnoremap <c-a> <home>
imap     <c-a> <c-o>^

autocmd! bufwritepost .vimrc source $MYVIMRC

au BufNewFile,BufRead *.bemhtml setf javascript
au BufNewFile,BufRead *.xjst setf javascript
au BufNewFile,BufRead *.js setf javascript
au BufNewFile,BufRead *.jsm setf javascript

" Символ табуляции и конца строки
        if has('multi_byte')
            set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
        endif
" Символ, который будет показан перед перенесенной строкой
        if has("linebreak")
              let &sbr = nr2char(8618).' '
        endif
