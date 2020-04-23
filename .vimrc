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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'davidhalter/jedi-vim'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'voithos/vim-python-matchit'
Plugin 'altercation/vim-colors-solarized'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-syntastic/syntastic'

call vundle#end()

filetype plugin indent on

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

" key map

let mapleader = ","

" no highlight
:map <leader>h :noh<CR>
" break string with new line
:nnoremap <leader><CR> i<CR><ESC>
" quick write
:nnoremap <leader>w :noh<CR>:w<CR>

" Comment and uncomment lines
:map <leader># :s!^!# ! <bar> :noh<CR>
:map <leader>/ :s!^!// ! <bar> :noh<CR>
:map <leader>" :s!^!" ! <bar> :noh<CR>

:map ]# :s!^!# ! <bar> :noh<CR>
:map ]/ :s!^!// ! <bar> :noh<CR>

:map [# :s!^# !! <bar> :noh<CR>
:map [/ :s!^// !! <bar> :noh<CR>

" Putting words under quotes
:nnoremap <leader>q` ciw``<ESC>P
:nnoremap <Leader>q" ciw""<ESC>P
:nnoremap <Leader>q' ciw''<ESC>P

" convenient jumps between splits
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" tabs and navigation
:nnoremap <leader>t :tabnew<CR>
:nnoremap <leader>Q :tabclose<CR>
:nnoremap <leader>[ :tabprev<CR>
:nnoremap <leader>] :tabnext<CR>

" NERDTree
:nnoremap <leader>n :NERDTreeToggle<CR>
:nnoremap <leader>N :NERDTreeFind<CR>

" Disable directory arrows
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '|'
let g:NERDTreeWinSize=40

if has("linux")
  :vnoremap <leader>c "+y
  :nnoremap <leader>v "+p
endif

if has("mac")
    " iTerm2 doesn't pass options as Meta key
    " following characters corresponds to pressing options + O, n, w, [, ] on
    " Polish pro keyboard layout
    :nnoremap Ó :NERDTreeToggle<CR>
    :nnoremap ń :tabnew<CR>
    :nnoremap ∑ :tabclose<CR>
    :nnoremap „ :tabprev<CR>
    :nnoremap ‚ :tabnext<CR>
else
    :nnoremap <M-O> :NERDTreeToggle<CR>
    :nnoremap <M-n> :tabnew<CR>
    :nnoremap <M-w> :tabclose<CR>
    :nnoremap <M-[> :tabprev<CR>
    :nnoremap <M-]> :tabnext<CR>
endif

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" YouCompleteMe
autocmd FileType typescript setlocal completeopt-=preview
autocmd FileType javascript setlocal completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Python Jedi
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
" let g:jedi#completions_enabled = 0

" airline
"let g:airline_section_a = '%{mode()} 0x%B'
let g:airline_section_a = airline#section#create_right(['mode', 'paste', 'iminsert'])
"let g:airline_section_y = airline#section#create_right(['ffenc', '\u%B'])
let g:airline_section_error = ''
let g:airline_section_warning = ''

" let g:ctrlp_map = 'ó'
:nnoremap <leader>o :CtrlP .<CR>

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules\|ios\|android\|env'

au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile *.py set filetype=python
au BufRead,BufNewFile Podfile set filetype=ruby
au BufRead,BufNewFile Fastfile set filetype=ruby
au BufRead,BufNewFile .profile.my set filetype=sh

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
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
set background=dark
colorscheme solarized

" Italic
highlight Comment cterm=italic
autocmd FileType python highlight Statement cterm=italic
highlight PreProc cterm=italic
"" colors in next lines are valid for solarized colorscheme
autocmd FileType python highlight Operator cterm=none ctermfg=2
highlight String cterm=italic ctermfg=6 guifg=#ffa0a0

if has('gui_running')
    "set guifont=Monaco:h16
    "set guifont=Akkurat-Mono:h16
    set guifont=Operator\ Mono\ Book:h16
    set background=dark
    colorscheme solarized
endif

" js
let g:jsx_ext_required = 0

