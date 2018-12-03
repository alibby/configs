
map <leader>E %:Eval<CR>
map <leader>e :Eval<CR>
map <F7> :Eval<CR>

autocmd BufNewFile,BufRead project.clj setlocal keywordprg=:Javadoc
