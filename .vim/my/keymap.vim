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

" Convenient jumps between splits
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" Tabs and navigation
:nnoremap <leader>t :tabnew<CR>
:nnoremap <leader>Q :tabclose<CR>
:nnoremap <leader>[ :tabprev<CR>
:nnoremap <leader>] :tabnext<CR>

" NERDTree
:nnoremap <leader>n :NERDTreeToggle<CR>
:nnoremap <leader>N :NERDTreeFind<CR>

" CtrlP
:nnoremap <leader>o :CtrlP .<CR>

