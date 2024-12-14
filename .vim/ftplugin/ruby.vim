
map <F8> :execute "Dispatch bundle exec rspec %:" . line(".")<CR>
map <F9> :execute "Dispatch bundle exec rspec %"<CR>
map <F10> :Dispatch bundle exec rspec spec<CR>
map <leader>R :RuboCop<CR>

autocmd BufNewFile,BufRead Gemfile setlocal keywordprg=:Bopen
set includeexpr=substitute(v:fname,'^./','','')


