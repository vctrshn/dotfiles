source ~/.vimrc
let g:python3_host_prog='/usr/local/bin/python3'

" Live preview of substitution command
set inccommand=split

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
autocmd TermOpen * setlocal nonumber
