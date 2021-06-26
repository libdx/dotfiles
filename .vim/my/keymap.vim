let mapleader = ','

" visual mode remap (for windows terminal)
nnoremap <C-M-v> <C-v>

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

" Tabs, buffers and navigation
:nnoremap <leader>t :tabnew<CR>
:nnoremap <leader>Q :tabclose<CR>
:nnoremap <leader>[ :tabprev<CR>
:nnoremap <leader>] :tabnext<CR>
:nnoremap <leader>{ :bp<CR>
:nnoremap <leader>} :bn<CR>

" NERDTree
:nnoremap <leader>n :NERDTreeTabsToggle<CR>
:nnoremap <leader>N :NERDTreeTabsFind<CR>

" Tagbar
:nnoremap <leader>b :TagbarToggle<CR>

" CtrlP
:nnoremap <leader>o :CtrlP .<CR>

" Spell check
:nnoremap <leader>s :set spell!<CR>

" External commands
"
"" Translate selected text to Russian
xnoremap <leader>T <esc>:'<,'>:w !trans :ru<CR>
xnoremap <leader>C <esc>:'<,'>:w !pbcopy<CR><CR>
