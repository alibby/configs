
map <leader>E %:Eval<CR>
map <leader>e :Eval<CR>
map <F7> :Eval<CR>
map <F8> :RunTests<CR>
map <F9> :RunTests<CR>
map <F10> :0RunTests<CR>

autocmd BufNewFile,BufRead project.clj setlocal keywordprg=:Javadoc
