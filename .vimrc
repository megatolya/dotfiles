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
Bundle 'git://github.com/majutsushi/tagbar.git'
Bundle 'git://github.com/tpope/vim-surround.git'
Bundle 'git://github.com/tpope/vim-repeat.git'
filetype plugin indent on
syntax enable
"===================
let mapleader = ","
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
"colorscheme molokai
colorscheme xoria256
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
set t_Co=256
" Y янкает от курсора и до конца строки. На манер страндартных D и С.
nnoremap Y y$
" Не показывать парную скобку
let loaded_matchparen=1 " перестает прыгать на парную скобку,
set noshowmatch " Не показывать парные <> в HTML
nmap <Bs> :NERDTreeToggle<CR>
map <Leader>f :execute "Ack " . expand("<cword>") <Bar> cw<CR>
nmap <Leader>re :edit<cr>
nmap <leader>ts :%s/\s\+$//e<CR>
nmap <Leader>bl :ls<cr>:b
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
nmap <Leader>. :TagbarToggle<CR>
nmap <Leader>m :CtrlPTag<CR>
nmap <Leader><left> :leftabove vnew<CR>
nmap <Leader><right> :rightbelow vnew<CR>
nmap <Leader><up> :leftabove new<CR>
nmap <Leader><down> :rightbelow new<CR>
command! Q q
command! W w

" open nerdtree on start
autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowHidden=1
" Переключение по сплитам
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
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

map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map . /

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
map , ?
