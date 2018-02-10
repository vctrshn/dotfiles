let g:python3_host_prog='/usr/local/bin/python3'

" Live preview of substitution command
set inccommand=split

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
autocmd TermOpen * setlocal nonumber
" <Pending>: this gets pretty far along the way to replacing the small subset of
" incsearch.vim that is actually used. If only neovim had support for <C-g>
" and <C-t> :( https://github.com/neovim/neovim/issues/5525
" https://stackoverflow.com/questions/40192919/how-to-do-incremenatal-search-in-vim-like-it-is-done-in-emacs
" if has('nvim')
"   " needed for mapping <Tab> in command-line mode
"   set wildcharm=<C-z>
"   cnoremap <expr> <Tab> (getcmdtype() ==? "/" \|\| getcmdtype() ==? "?") ? "<CR>/<C-r>/" : "<C-z>"
"   cnoremap <expr> <S-Tab> (getcmdtype() ==? "/" \|\| getcmdtype() ==? "?") ? "<CR>?<C-r>/" : "<S-Tab>"
" endif
" </Pending>
source ~/.vimrc
