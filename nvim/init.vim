let g:python3_host_prog='/usr/local/bin/python3'

" Live preview of substitution command
set inccommand=split

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

let g:LanguageClient_serverCommands = {
  \ 'reason': ['ocaml-language-server', '--stdio'],
  \ 'ocaml': ['ocaml-language-server', '--stdio'],
  \ }
let g:LanguageClient_autoStart = 1

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <Leader><Esc> <C-\><C-n>
augroup terminal
  autocmd!
  autocmd TermOpen * setlocal nonumber
augroup end
source ~/.vimrc
