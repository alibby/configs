
" map <F8> :execute "Dispatch mocha %:" . line(".")<CR>
" map <F9> :Dispatch exec mocha %<CR>
" map <F10> :Dispatch exec mocha spec/**<CR>
" map <leader>R :RuboCop<CR>

" autocmd BufNewFile,BufRead Gemfile setlocal keywordprg=:Bopen
set suffixesadd=.ts
set includeexpr=substitute(v:fname,'#.*','','g')


