au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile *.py set filetype=python
au BufRead,BufNewFile *.jsx set filetype=javascript
au BufRead,BufNewFile *.tsx set filetype=typescriptreact
au BufRead,BufNewFile Podfile set filetype=ruby
au BufRead,BufNewFile Fastfile set filetype=ruby
au BufRead,BufNewFile .profile.my set filetype=sh

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescriptreact setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype scala setlocal ts=4 sts=4 sw=4

augroup autoformat_settings
    " autocmd FileType python AutoFormatBuffer black
augroup END

" autocmd FileType typescript nmap <buffer> <Leader>jt : <C-u>echo tsuquyomi#hint()<CR>
" autocmd FileType typescriptreact nmap <buffer> <Leader>jt : <C-u>echo tsuquyomi#hint()<CR>

