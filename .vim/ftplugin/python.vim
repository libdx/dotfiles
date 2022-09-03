let g:ale_linters = {
\   'python': ['pylint', 'flake8', 'mypy'],
\}

let b:ale_fixers = ['black', 'isort']

let g:ale_python_pylint_change_directory=0

let g:ale_virtualenv_dir_names = []

:nnoremap <leader>af :ALEFix<CR>
:nnoremap <leader>ai :let b:ale_fixers = ['black', 'isort']<CR>

:nnoremap <leader>as :let b:ale_fix_on_save=1<CR>
:nnoremap <leader>aS :let b:ale_fix_on_save=0<CR>

:nnoremap <leader>aa :let b:ale_fix_on_save=1<CR>:let b:ale_fixers = ['black', 'isort']<CR>

:nmap <C-\> oimport ipdb; ipdb.set_trace()<ESC>
:imap <C-\> import ipdb; ipdb.set_trace()
