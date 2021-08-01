set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

let g:python3_host_prog='/usr/local/bin/python3'

" Live preview of substitution command
set inccommand=split

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

if (has('nvim-0.5'))
  lua require 'lsp-config'
endif
