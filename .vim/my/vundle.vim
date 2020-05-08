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

