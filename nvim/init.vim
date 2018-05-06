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
tnoremap <C-\> <C-\><C-n>
tnoremap <S-Left> <C-\><C-n>gT
tnoremap <S-Right> <C-\><C-n>gt

augroup terminal
  autocmd!
  autocmd TermOpen * setlocal nonumber winfixheight winfixwidth
  autocmd BufEnter term://* startinsert
augroup end

" Neoterm config
let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'tab'
nnoremap <C-s> :Ttoggle<CR>
tnoremap <C-s> <C-\><C-n>:Ttoggle<CR>
cnoreabbrev TT Topen \| T

source ~/.vimrc
