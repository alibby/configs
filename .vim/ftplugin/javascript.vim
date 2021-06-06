
map <F8> :execute "Dispatch mocha %:" . line(".")<CR>
map <F9> :Dispatch exec npm test %<CR>
map <F10> :Dispatch exec mocha spec/**<CR>
map <leader>R :RuboCop<CR>

autocmd BufNewFile,BufRead Gemfile setlocal keywordprg=:Bopen
set suffixesadd=.js
set nospell


