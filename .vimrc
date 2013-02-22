"для vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'git://github.com/gmarik/vundle.git'
Bundle 'git://github.com/ervandew/supertab.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/pangloss/vim-javascript.git'
Bundle 'git://github.com/walm/jshint.vim.git'
Bundle 'git://github.com/digitaltoad/vim-jade.git'
Bundle 'git://github.com/msanders/snipmate.vim.git'
Bundle 'git://github.com/mileszs/ack.vim.git'
Bundle 'git://github.com/scrooloose/nerdcommenter.git'
Bundle 'git://github.com/xolox/vim-session.git'
Bundle 'git://github.com/kien/ctrlp.vim.git'
Bundle 'git://github.com/tomasr/molokai.git'
filetype plugin indent on
syntax enable
"===================
let mapleader = ","
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
colorscheme molokai
set hidden
set wrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set mouse=
set encoding=utf-8
set fileencodings=utf-8,cp1251
set list
set listchars=tab:\ \ ,trail:.
set laststatus=2
set shm+=I
set expandtab

nmap <Bs> :NERDTreeToggle<CR>
nmap <Leader>re :edit<cr>
nmap <leader>ts :%s/\s\+$//e<CR>
nmap <Leader>bl :ls<cr>:b
nmap <Leader>bp :bp<cr>
nmap <Leader>bn :bn<cr>
nmap <Leader>pp :set paste<cr>
nmap <Leader>np :set nopaste<cr>
nmap <Leader>bd :bdelete<cr>
nmap <Leader>tn :tabnew<cr>
" Символ табуляции и конца строки
        if has('multi_byte')
            set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
        endif
" Символ, который будет показан перед перенесенной строкой
        if has("linebreak")
              let &sbr = nr2char(8618).' ' " Show ↪ at the beginning of wrapped lines
        endif
nmap <Tab> gt
nmap <S-Tab> gT
nmap <Leader><left> :leftabove vnew<CR>
nmap <Leader><right> :rightbelow vnew<CR>
nmap <Leader><up> :leftabove new<CR>
nmap <Leader><down> :rightbelow new<CR>
command! Q q
command! W w

" Warning: nightmare mode!
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Позволяем передвигаться с помощью hjkl в Insert mode зажав <Ctrl>
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l
