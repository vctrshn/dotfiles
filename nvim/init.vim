set runtimepath+=~/.vim

let g:python3_host_prog='/usr/local/bin/python3'

" https://stackoverflow.com/questions/40192919/how-to-do-incremenatal-search-in-vim-like-it-is-done-in-emacs
" needed for mapping <Tab> in command-line mode
set wildcharm=<C-z>
cnoremap <expr> <Tab> (getcmdtype() ==? "/" \|\| getcmdtype() ==? "?") ? "<CR>/<C-r>/" : "<C-z>"
cnoremap <expr> <S-Tab> (getcmdtype() ==? "/" \|\| getcmdtype() ==? "?") ? "<CR>?<C-r>/" : "<S-Tab>"

" Live preview of substitution command
set inccommand=split

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['flow', 'lsp'],
  \ 'javascript.jsx': ['flow', 'lsp'],
  \ 'reason': ['ocaml-language-server', '--stdio'],
  \ 'ocaml': ['ocaml-language-server', '--stdio'],
  \ 'php': ['hh_client', 'lsp'],
  \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_diagnosticsList = 'Location'
nnoremap <silent> gh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>

" Unlimited scrollback in terminal
set scrollback=-1

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
