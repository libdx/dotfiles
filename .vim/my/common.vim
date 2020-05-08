syntax on

set cursorline
set mouse=a " enable mouse support for all modes
set nobackup
set nocompatible    " use vim defaults
set backspace=indent,eol,start " makes backspace work as in most text editors
set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set title           " show title in console title bar
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set autoindent      " always set autoindenting on
set smartindent     " smart indent
set expandtab       " tabs are converted to spaces, use only when required

set spell
set spell spelllang=en_us,pl,ru,uk
set spellfile=~/.vim/spell/en.utf-8.add

" `»` for tabs and `°` for trailing whitespaces.
set list listchars=tab:»\ ,trail:°

"set ignorecase                 " ignore case when searching
"set noignorecase               " don't ignore case
"set ttyscroll=0                " turn off scrolling, didn't work well with PuTTY
"set whichwrap=b,s,h,l,<,>,[,]  " move freely between files
"set viminfo='20,<50,s10,h
"set cindent
"set noautoindent
"set nosmartindent
"set nocindent
"set autowrite                  " auto saves changes when quitting and swiching buffer
"set sm                         " show matching braces, somewhat annoying...
"set nowrap                     " don't wrap lines

setlocal foldmethod=syntax  " sets fold method based on syntax
set foldlevel=99            " unfold methods by default when open file
