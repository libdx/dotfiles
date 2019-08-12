syntax on

" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'maralla/completor.vim'

call vundle#end()

filetype plugin indent on
"

"execute pathogen#infect()
set nobackup
set nocompatible    " use vim defaults
set backspace=indent,eol,start
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
"set ignorecase      " ignore case when searching 
"set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
"set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h
set autoindent     " always set autoindenting on
set smartindent        " smart indent
"set cindent            " cindent
"set noautoindent
"set nosmartindent
"set nocindent
"set autowrite      " auto saves changes when quitting and swiching buffer
set expandtab      " tabs are converted to spaces, use only when required
"set sm             " show matching braces, somewhat annoying...
"set nowrap         " don't wrap lines
set spell
set spell spelllang=en_us,pl,ru,uk
set spellfile=~/.vim/spell/en.utf-8.add

" key map
:nnoremap Ó :NERDTreeToggle<CR>
:nnoremap ń :tabnew<CR>
:nnoremap ∑ :tabclose<CR>
:nnoremap „ :tabprev<CR>
:nnoremap ‚ :tabnext<CR>

"if has("mac")
"    :nnoremap <Esc>O :NERDTreeToggle<CR>
"    :nnoremap <Esc>n :tabnew<CR>
"    :nnoremap <Esc>w :tabclose<CR>
"    " :nnoremap <Esc>[ :tabprev<CR>
"    " :nnoremap <Esc>] :tabnext<CR>
"else
"    :nnoremap <M-O> :NERDTreeToggle<CR>
"    :nnoremap <M-n> :tabnew<CR>
"    :nnoremap <M-w> :tabclose<CR>
"    :nnoremap <M-[> :tabprev<CR>
"    :nnoremap <M-]> :tabnext<CR>
"endif

" completor
let g:completor_python_binary = '/usr/local/bin/python'


" :nnoremap ó :CtrlP<CR>
let g:ctrlp_map = 'ó'

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules\|ios\|android\|env'

au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile Podfile set filetype=ruby
au BufRead,BufNewFile Fastfile set filetype=ruby

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype scala setlocal ts=4 sts=4 sw=4

let g:javascript_plugin_flow = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" Go support
filetype off " explicitly turn off filetype plugin
filetype plugin indent off
set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on

filetype plugin on
filetype indent on

set t_Co=256
"set term=xterm-256color
"set background=light
set background=dark
colorscheme solarized
"colorscheme default
"highlight Comment cterm=italic

if has('gui_running')
	"set guifont=Monaco:h16
	"set guifont=Akkurat-Mono:h16
    set guifont=Operator\ Mono\ Book:h16
	"set background=light
    set background=dark
	colorscheme solarized
endif

" js
let g:jsx_ext_required = 0
