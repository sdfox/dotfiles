" highlight
syntax on

" line number
set number

" indentant and tab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
autocmd FileType make setlocal tabstop=4 shiftwidth=4 noexpandtab

" highlight search
set hlsearch
set incsearch

" viminfo backup
set viminfo='100,<50,s10,h
augroup restore_cursor
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
augroup END
set viminfofile=~/.vim/viminfo

set nocompatible
