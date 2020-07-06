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
Plugin 'fisadev/vim-isort'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'voithos/vim-python-matchit'
Plugin 'altercation/vim-colors-solarized'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

Plugin 'Quramy/tsuquyomi'
Plugin 'prettier/vim-prettier'
Plugin 'ruanyl/vim-sort-imports'

call vundle#end()

" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()

" Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]

filetype plugin indent on

