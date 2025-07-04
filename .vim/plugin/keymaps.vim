" Reload vimrc with <leader>e
nnoremap <leader>e :source $MYVIMRC<cr>

" Better pasting
" Mapping to copy to system clipboard
xnoremap <C-c> "+y
" Support easier copying via the mouse
nnoremap <leader>a :only<CR>:set nonumber<CR>

" Moving lines up and down in visual mode
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv

" Sorting inside of curly braces and paragraphs
nnoremap <silent> <leader>sc vi{:'<, '>sort i<CR>
nnoremap <silent> <leader>sp vip:'<, '>sort i<CR>
nnoremap <silent> <leader>si vip:'<, '>sort /.\{-}\(require\\|from\)/ i<CR>
" Visual mode sorting of selection
xnoremap <silent> <leader>sp :'<, '>sort i<CR>

" Search-relatd settings and mappings
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap * *zz
nnoremap # #zz
nnoremap n nzz
nnoremap N Nzz
nnoremap <leader>z :%s/<C-r><C-w>//g<Left><Left>
" https://stackoverflow.com/questions/40192919/how-to-do-incremenatal-search-in-vim-like-it-is-done-in-emacs
" needed for mapping <Tab> in command-line mode
set wildcharm=<C-z>
cnoremap <expr> <Tab> (getcmdtype() ==? "/" \|\| getcmdtype() ==? "?") ? "<C-g>" : "<C-z>"
cnoremap <expr> <S-Tab> (getcmdtype() ==? "/" \|\| getcmdtype() ==? "?") ? "<C-t>" : "<S-Tab>"

" Swap colon to semicolon cuz lazy
nnoremap ; :

" Navigate between display lines
nnoremap <silent> j gj
nnoremap <silent> k gk

" Open help in a vertical split instead of the default horizontal split
" http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev
cnoreabbrev h <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'vert h' : 'h')<cr>

" Allow saving of files as sudo when forgot to start vim using sudo.
cnoremap w!! w !sudo tee > /dev/null %

" Buffer manipulation
" Close buffers without closing splits
nnoremap <C-c> :bp\|bd #<CR>
nnoremap <leader>h :bp <CR>
nnoremap <leader>l :bn <CR>

" Tab Navigation
nnoremap <S-Left> gT
nnoremap <S-Right> gt

" Map jk to exit insert mode
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap ;; <Esc>A;<Esc>
inoremap ,, <Esc>A,<Esc>

" Resizing windows
nnoremap <silent> <Up> 5<C-w>+
nnoremap <silent> <Down> 5<C-w>-
nnoremap <silent> <Left> 5<C-w><
nnoremap <silent> <Right> 5<C-w>>

" Jump to line with preview
nnoremap <C-g> /\%l<Left>
