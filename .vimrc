execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme railscasts
set textwidth=80
set list
set listchars=tab:>-
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set nohidden
set number
set eol
set splitright
set spelllang=en
set spellfile=/Users/alibby/.vim/spell/en.utf-8.add
set diffopt+=vertical

autocmd QuickFixCmdPost *grep* cwindow

map <F12> :Explore<CR>
map ]gc :call search('^\s*'.substitute(escape(&cms, '\.*[]^$'), '%s', '.*', '').'\s*$', 's')<CR>
map [gc :call search('^\s*'.substitute(escape(&cms, '\.*[]^$'), '%s', '.*', '').'\s*$', 'bs')<CR>

let mapleader = ' '
map <leader><leader> :vs<CR><c-]>
map <leader>.v :vsplit ~/.vimrc<CR>
map <leader>.l :vsplit .vimrc<CR>
map <leader>.* :let @/ = expand("<cword>")<CR>
map <leader>* :Ggrep --untracked <cword><CR><CR>
map <leader>8 :Ggrep --untracked <cword><CR><CR>
map <leader>B :Gbrowse<CR>
map <leader>D :r! date +'\%Y-\%m-\%d \%H:\%M:\%S\%z'<CR>
nmap <leader>c <Plug>window:quickfix:toggle
map <leader>f :setlocal foldmethod=syntax<CR>
map <leader>F :setlocal foldmethod=manual<CR>
map <leader>/ :Ggrep <C-r>"<CR>
map <leader>gb :Gblame<CR>
map <leader>gcm :Git checkout master<CR><CR>
map <leader>gcb :Git checkout -b
map <leader>gd :Gdiff<CR>
map <leader>gf :Gfetch origin master:master
map <leader>gl :Glog master..head<CR><CR>
map <leader>gp :Gwrite
map <leader>gr :Git rebase --interactive master
map <leader>gR :Gread<CR>
map <leader>gs :Gstatus<CR>
map <leader>gS :Gstatus<CR><C-w><C-o>
map <leader>gw :Git add .<CR><CR>:Gcommit -m WIP<CR><CR>
map <leader>gW :Git reset @~1<CR><CR>
map <leader>h :view /etc/hosts<cr>
map <leader>n :bn<cr>
map <leader>rm :Rails db:migrate<CR>
map <leader>rr :Rails db:rollback<CR>
map <leader>o :! open %<CR><CR>
map <leader>p :CtrlP<CR>
map <leader>S :SyntasticCheck<CR>
map <leader>s :Gstatus<CR>
map <leader>u :call echo "!open '".
map <leader>t :AV<CR>
map <leader>T :Trim<CR>
map <leader>w :set scrollbind<CR>:set cursorbind<CR>
map <leader>W :set noscrollbind<CR>:set nocursorbind<CR>
map <leader>q <c-w>c
map <C-w>J <C-w>j<C-w>o
map <C-w>K <C-w>k<C-w>o

map <leader>x v$:w !pbcopy<CR><CR>
set foldlevel=1
command Pw :r! pwgen -nyc -1 24
command -nargs=* Gbranch :Git branch <args>
command -nargs=1 Gnb :Git checkout -b <args> master
command -nargs=1 Gfb :Git fetch origin <args>:<args>
command -nargs=+ Gco :Git checkout <args>
command -nargs=+ Gstash :Git stash <args>
command! -complete=shellcmd Routes new | setlocal buftype=nofile bufhidden=hide noswapfile | r !Bundle exec rake routes


let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
let g:netrw_liststyle= 1
set statusline=%q%{fugitive#statusline()}\ %f\ %m\ %Y\ %c\ %l/%L\ %r
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = []
let g:syntastic_scss_checkers = []
" let g:syntastic_clojure_checkers = ['eastwood']
let g:typescript_indent_disable = 1

set exrc
set secure

:runtime! ftplugin/man.vim

