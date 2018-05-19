" TODO
" Look into command for removing white space at the end of lines
" Maybe set auto formatting on saving of file or some other trigger
" Look into thesaurus support
" Look into spell checker
" Look into wildmode and wildmenu for tab completion of command mode
" Look into color schemes
" Look into highlighting the current line
" Look into red highlight when characters go past the 80th column
" Write a function that lets me auto reformat markdown (currently if I do gqG
"   to fix text wrapping it will remove newlines after headers, which is
"   annoying)

set list
set listchars=tab:▸\ ,eol:¬

set number
" set relativenumber

imap jk <Esc>

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'

call plug#end()

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " These languages require either spaces or tabs
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab

  " These are based simply on style guides or personal preference
  autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType markdown setlocal textwidth=79
endif

" Set the background color for columns greater than 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

set cursorline
