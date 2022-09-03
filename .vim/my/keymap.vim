let mapleader = ','
:nmap <Space> <leader>

" no highlight
:map <leader>h :noh<CR>
" break string with new line
:nnoremap <leader><CR> i<CR><ESC>
" quick write
:nnoremap <leader>w :noh<CR>:w<CR>
:nnoremap s :noh<CR>:w<CR>

" Putting words under quotes
:nnoremap <leader>zq` ciw``<ESC>P
:nnoremap <Leader>zq" ciw""<ESC>P
:nnoremap <Leader>zq' ciw''<ESC>P

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

:nnoremap <Tab> :tabnext<CR>
:nnoremap <S-Tab> :tabprev<CR>
:nnoremap <C-[> :tabprev<CR>
:nnoremap <C-]> :tabnext<CR>
:nnoremap <C-}> :tabmove +1<CR>
:nnoremap <C-{> :tabmove -1<CR>

" NERDTree
:nnoremap <leader>n :NERDTreeToggle<CR>
:nnoremap <leader>N :NERDTreeFind<CR>

" Tagbar
:nnoremap <leader>b :TagbarToggle<CR>

" fzf
:nnoremap <leader>o :Files<CR>


" Spell check
:nnoremap <leader>ss :set spell!<CR>:hi SpellBad cterm=underline<CR>

" External commands
"
"" Translate selected text to Russian
xnoremap <leader>T <esc>:'<,'>:w !trans :ru<CR>
