au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile *.py set filetype=python
au BufRead,BufNewFile Podfile set filetype=ruby
au BufRead,BufNewFile Fastfile set filetype=ruby
au BufRead,BufNewFile .profile.my set filetype=sh

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype scala setlocal ts=4 sts=4 sw=4

