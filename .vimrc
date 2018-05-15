syntax on
execute pathogen#infect()
set nocompatible    " use vim defaults
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

" key map
:nnoremap Ó :NERDTreeToggle<CR>
:nnoremap ń :tabnew<CR>
:nnoremap ∑ :tabclose<CR>
:nnoremap „ :tabprev<CR>
:nnoremap ‚ :tabnext<CR>

" :nnoremap ó :CtrlP<CR>
let g:ctrlp_map = 'ó'

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules'

au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile Podfile set filetype=ruby

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

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
colorscheme solarized
"colorscheme default

if has('gui_running')
	"set guifont=Monaco:h16
	set guifont=Akkurat-Mono:h16
	set background=light
    "set background=dark
	colorscheme solarized
endif

" js
let g:jsx_ext_required = 0
