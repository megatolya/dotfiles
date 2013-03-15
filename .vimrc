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
Bundle 'git://github.com/kien/ctrlp.vim.git'
Bundle 'git://github.com/tpope/vim-surround.git'
Bundle 'git://github.com/tpope/vim-repeat.git'
filetype plugin indent on
syntax enable
"===================
let mapleader = ","
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
colorscheme xoria256
set ttyfast

set scrolloff=6
set sidescrolloff=6

set hidden
set wrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set number
set shiftwidth=4
set shiftround
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
set encoding=utf-8
set fileencodings=utf-8,cp1251
set list
set listchars=tab:\ \ ,trail:.
set laststatus=2
set statusline=%f%h\ %y\ %m\ %r\ %{&encoding}\ 
set statusline+=%=Line:%l/%L[%p%%]\ Col:%c\ [%b][0x%B]
set statusline+=\ Buf:%n\ 
set shm+=I

set expandtab
set t_Co=256

nmap <Bs> :NERDTreeToggle<CR>
map <Leader>f :execute "Ack " . expand("<cword>") <Bar> cw<CR>
nmap <Leader>re :edit<cr>
nmap <leader>ts :%s/\s\+$//e<CR>
nmap <Leader>bl :ls<cr>:b
nmap <Leader>bd :bdelete<cr>
nmap <Leader>tn :tabnew<cr>
set pastetoggle=<leader>pp
" Символ табуляции и конца строки
        if has('multi_byte')
            set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
        endif
" Символ, который будет показан перед перенесенной строкой
        if has("linebreak")
              let &sbr = nr2char(8618).' '
        endif
nmap <Tab> gt
nmap <S-Tab> gT
nmap <Leader>m :CtrlPTag<CR>
nmap <Leader><left> :leftabove vnew<CR>
nmap <Leader><right> :rightbelow vnew<CR>
nmap <Leader><up> :leftabove new<CR>
nmap <Leader><down> :rightbelow new<CR>

command! Q q
command! W w
nnoremap Y y$

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
" hjkl в Insert mode зажав <Ctrl>
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l
