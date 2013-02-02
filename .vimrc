set hidden
let mapleader = "," " мапим <Leader> на запятую. По умолчанию <Leader> это обратный слэш 
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set nonumber        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set mouse=a
nmap <Bs> :NERDTreeToggle<CR>
set encoding=utf-8
set fileencodings=utf-8,cp1251

"для vundle
set nocompatible
filetype off " обязательно!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'git://github.com/gmarik/vundle.git'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/pangloss/vim-javascript.git'
Bundle 'git://github.com/walm/jshint.vim.git'
Bundle 'git://github.com/digitaltoad/vim-jade.git'
Bundle  'snipMate'
Bundle  'git://github.com/motemen/git-vim.git'
Bundle 'git://github.com/mileszs/ack.vim.git'
Bundle 'git://github.com/scrooloose/nerdcommenter.git'
filetype plugin indent on     " required!
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
syntax enable
set list
set listchars=tab:\ \ ,trail:.
set laststatus=2   " всегда показывать строку статуса
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
set shm+=I
" Fix Trailing White Space
map <leader>ts :%s/\s\+$//e<CR>
" ,bl show buffers
nmap <Leader>bl :ls<cr>:b
" ,bp prev buffer
nmap <Leader>bp :bp<cr>
" ,bn next buffer
nmap <Leader>bn :bn<cr>

nmap <Leader>pp :set paste<cr>
nmap <Leader>np :set nopaste<cr>
nmap <Leader>bd :bdelete<cr>

nmap <Leader>tn :tabnew<cr>
" Символ табуляции и конца строки
        if has('multi_byte')
            if version >= 700
                set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
            else
                set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
            endif
        endif

" Символ, который будет показан перед перенесенной строкой
        if has("linebreak")
              let &sbr = nr2char(8618).' ' " Show ↪ at the beginning of wrapped lines
        endif


" Приводим в порядок status line

function! FileSize()
	let bytes = getfsize(expand("%:p"))
	if bytes <= 0
		return ""
	endif
	if bytes < 1024
		return bytes . "B"
	else
		return (bytes / 1024) . "K"
	endif
endfunction

set laststatus=2
set statusline=\
set statusline+=%n:\ " buffer number
set statusline+=%t " filename with full path
set statusline+=%m " modified flag
set statusline+=\ \
set statusline+=%{&paste?'[paste]\ ':''}
set statusline+=%{&fileencoding}
set statusline+=\ \ %Y " type of file
set statusline+=\ %3.3(%c%) " column number
set statusline+=\ \ %3.9(%l/%L%) " line / total lines
"set statusline+=\ \ %2.3p%% " percentage through file in lines
set statusline+=\ \ %{FileSize()}
set statusline+=%< " where truncate if line too long
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
 " Переключение вкладки по табу
nmap <Tab> gt
nmap <S-Tab> gT
 command! Q q
 command! W w
 " Создаем пустой сплит относительно текущего
nmap <Leader><left> :leftabove vnew<CR>
nmap <Leader><right> :rightbelow vnew<CR>
nmap <Leader><up> :leftabove new<CR>
nmap <Leader><down> :rightbelow new<CR>
set expandtab
" ,m
" в Normal mode тогглит поддержку мыши
function! ToggleMouse()
    if &mouse == 'a'
    set mouse=
    echo "Mouse usage disabled"
    else
    set mouse=a
    echo "Mouse usage enabled"
    endif
endfunction
nnoremap <leader>m :call ToggleMouse()<CR>
