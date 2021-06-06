let vim_markdown_preview_browser='Google Chrome'
" let vim_markdown_preview_pandoc=1
let vim_markdown_preview_github=1

set spell
set textwidth=80
set wrap
set nolist
" set columns=80
" autocmd VimResized * if (&columns > 80) | set columns=80 | endif
" set wrap
" set linebreak
" set showbreak=+++

map ]s :call search('^#', 's')<CR>
map [s :call search('^#', 'bs')<CR>

" imap .<space><space> .<space>

