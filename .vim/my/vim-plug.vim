call plug#begin('~/.vim/plugged')

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'

" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'ekalinin/Dockerfile.vim'

" Editor
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'yegappan/grep'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'dmerejkowsky/vim-ale'

" Python
Plug 'voithos/vim-python-matchit'
Plug 'vim-scripts/indentpython.vim'
Plug 'fisadev/vim-isort'
Plug 'davidhalter/jedi-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'romainl/flattened'
Plug 'morhetz/gruvbox'
Plug 'danilo-augusto/vim-afterglow'

" Appearance
Plug 'ryanoasis/vim-devicons'
Plug 'nathanaelkane/vim-indent-guides'

" JavaScript and TypeScript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ruanyl/vim-sort-imports'
" Plug 'Quramy/tsuquyomi'
" Plug 'prettier/vim-prettier'

" All in One
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tests
Plug 'vim-test/vim-test'

call plug#end()
