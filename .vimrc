syntax on
filetype plugin indent on

if &diff
  colorscheme dichromatic
else
  colorscheme vividchalk
endif

set textwidth=70
set list
set listchars=tab:>-
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set shiftround
set nohidden
set number
set eol
set splitright
set diffopt+=vertical
set spelllang=en
set spellfile=/Users/alibby/.vim/spell/en.utf-8.add
set nrformats=bin,hex,octal,alpha
" set diffopt+=vertical

autocmd QuickFixCmdPost *grep* cwindow

map <F12> :Explore<CR>
map ]gc :call search('^\s*'.substitute(escape(&cms, '\.*[]^$'), '%s', '.*', '').'\s*$', 's')<CR>
map [gc :call search('^\s*'.substitute(escape(&cms, '\.*[]^$'), '%s', '.*', '').'\s*$', 'bs')<CR>

map <C-w>f <C-w>vgf

let mapleader = ' '
map <leader>d :tabnew<CR>:DBUIToggle<CR>
map <leader>l :let @*=fnamemodify(expand("%"), ":~:.") . ":" . line(".")<CR>
map <leader>.v :tabe $MYVIMRC<CR>
map <leader>.l :vsplit .vimrc<CR>
map <leader>.* :let @/ = expand("<cword>")<CR>
map <leader>* :Ggrep --untracked <cword><CR><CR>
map <leader>B :Gbrowse<CR>
nmap <leader>\| :set cuc!<CR>
nmap <leader>_ :set cul!<CR>
map <leader>D O<ESC>:put =strftime('# %a %Y-%m-%d %H:%M:%S%z')<CR>o
nmap <leader>c <Plug>window:quickfix:toggle
map <leader>e :e <cfile><CR>
map <leader>f :setlocal foldmethod=syntax<CR>
map <leader>F :setlocal foldmethod=manual<CR>
map <leader>/ :Ggrep <C-r>"<CR>
map <leader>gB :tabnew<CR>:Twiggy<CR><c-w>o
map <leader>gb :Git blame<CR>
map <leader>gC oCo-authored-by: Bruce Wayne <wayne@example.com><CR><ESC>kfB
map <leader>gcm :Git checkout master<CR><CR>
map <leader>gcb :Git checkout -b
map <leader>gd :Gvdiff<CR>
map <leader>ge :e <cword><CR>
map <leader>gf :Git fetch origin master:master
map <leader>gg yaw<C-w>j:Ggrep <C-r>"
map <leader>gl :Git log master..<CR><C-w>L
map <leader>gL :Git log<CR><C-w>L
map <leader>gp :Git pull-request -o -p -a alibby
map <leader>gP :Git pull<CR>
map <leader>gr :Grebase --interactive master
map <leader>gR :Gread<CR>
map <leader>gs :G<CR>:res 15<CR>
map <leader>gt :tabnew<CR>
map <leader>gw :Git add .<CR><CR>:Gcommit -m WIP<CR><CR>
map <leader>gW :Git reset @^<CR><CR>
map <leader>rm :Rails db:migrate<CR>
map <leader>rr :Rails db:rollback<CR>
map <leader>rn :set rnu!<CR>
map <leader>P /=\n.*
map <leader>S :SyntasticCheck<CR>
map <leader>s :Switch<CR>
map <leader>t :AV<CR>
map <leader>q <c-w>c
" nmap <leader>X v$h"*y
nmap <leader>X "*yy

" reselect pasted text
nnoremap gp `[v`]

set foldlevel=1

command! -nargs=+ Gca :r!git log -n100 --pretty=format:"\%an <\%ae>" | grep -i '<args>' | head -1 | xargs echo "Co-authored-by:"
command Pw :r! pwgen -nyc -1 24
command -nargs=* Gbranch :Git branch <args>
command -nargs=1 Gnb :Git checkout -b <args> master
command -nargs=+ Gco :Git checkout <args>
command -nargs=+ Gstash :Git stash <args>
command          Gsp :Git stash push -u -k
command          Gso :Git stash pop

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
let g:netrw_liststyle= 1
set statusline=%q%{fugitive#statusline()}\ %f\ %m\ %Y\ %c\ %l/%L\ %r
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = []
let g:syntastic_scss_checkers = []
let g:syntastic_sass_checkers = []
let g:syntastic_rust_checkers = []
let g:syntastic_python_checkers = []
let g:syntastic_sql_checkers = []
let g:syntastic_ruby_checkers = []
" let g:syntastic_clojure_checkers = ['eastwood']
let g:typescript_indent_disable = 1

let g:merginal_remoteVisible = 0
set exrc
set secure

:runtime! ftplugin/man.vim

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

let g:xmpfilter_cmd = "seeing_is_believing"
nmap <buffer> <F4> <Plug>(xmpfilter-run)
xmap <buffer> <F4> <Plug>(xmpfilter-run)
imap <buffer> <F4> <Plug>(xmpfilter-run)

let g:slime_target = "tmux"
let g:netrw_localrmdiropt = "rf"

autocmd FileType js let b:switch_custom_definitions =
    \ [
    \   ['let ', 'const '],
    \   ['var ', 'let '],
    \ ]

autocmd FileType eruby let b:switch_custom_definitions =
    \ [
    \   ['.to', '.not_to '],
    \   {
    \     ':\(\k\+\)\s\+=>': '\1:',
    \     '\<\(\k\+\):':     ':\1 =>',
    \   },
    \ ]


let g:git_messenger_include_diff = "current"
let g:git_messenger_always_into_popup = v:true
let g:git_messenger_max_popup_height = 35

function! OpenURLUnderCursor()
  let s:uri = expand('<cWORD>')
  let s:uri = substitute(s:uri, '?', '\\?', '')
  let s:uri = shellescape(s:uri, 1)
  if s:uri != ''
    silent exec "!open '".s:uri."'"
    :redraw!
  endif
endfunction
nnoremap gx :call OpenURLUnderCursor()<CR>


let g:twiggy_group_locals_by_slash = 0
let g:twiggy_local_branch_sort = 'mru'
