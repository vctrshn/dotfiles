call plug#begin('~/.vim/plugged')

" Essentials
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'FooSoft/vim-argwrap', { 'on': 'ArgWrap' }

" More text objects
Plug 'kana/vim-textobj-function'
Plug 'haya14busa/vim-textobj-function-syntax'

" Navigation
Plug 'justinmk/vim-sneak'

" Language Support
if (has('nvim-0.5.0'))
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
else
  Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
  Plug 'mxw/vim-jsx', { 'for': ['javascript'] }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'othree/html5.vim', { 'for': 'html' }
  Plug 'mxw/vim-xhp', { 'for': 'php' }
  Plug 'hhvm/vim-hack', { 'for': 'php' }
  Plug 'StanAngeloff/php.vim', { 'for': 'php' }
  Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
endif
Plug 'blueyed/smarty.vim', { 'for': 'smarty' }
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }
Plug 'reasonml-editor/vim-reason-plus', { 'for': 'reason' }
Plug 'fladson/vim-kitty', { 'branch': 'main' }

" Integrations
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete/Snippets
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript']}
if (has('nvim-0.5.0'))
  Plug 'hrsh7th/nvim-compe'
else
  Plug 'othree/csscomplete.vim', { 'for': 'css' }
  Plug 'othree/jspc.vim', { 'for': ['javascript'] }
endif

" Grepping/Linting
if (has('nvim-0.5.0'))
  Plug 'neovim/nvim-lspconfig'
else
  Plug 'w0rp/ale'
endif
Plug 'romainl/vim-qf', { 'for': ['qf'] }
Plug 'wincent/ferret'
Plug 'dyng/ctrlsf.vim', { 'on': ['CtrlSF'] }
Plug 'mhinz/vim-grepper'

" Colorschemes
if (has('nvim-0.5.0'))
  Plug 'folke/tokyonight.nvim'
else
  Plug 'drewtempelmeyer/palenight.vim'
endif

" Pending
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist', { 'on': ['A', 'AS', 'AV', 'AT'] }
Plug 'junegunn/vim-peekaboo'
Plug 'kergoth/vim-hilinks', { 'on': 'HLT!' }
Plug 'kopischke/vim-fetch'
Plug 'Olical/vim-enmasse', { 'on': 'EnMasse' }
Plug 'hauleth/asyncdo.vim', { 'on': ['AsyncDo', 'LAsyncDo'] }
Plug 'tpope/vim-rsi'
Plug 'justinmk/vim-dirvish'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'arthurxavierx/vim-caser'

" Neovim only plugins
if (has('nvim'))
  Plug 'kassio/neoterm'
endif

call plug#end()

" Map leader key to space
let g:mapleader = ' '

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

" Vim-Sneak config
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1

" Vim-Peekaboo config
let g:peekaboo_window = 'vert bo 50new'

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

let g:argwrap_tail_comma = 0
nnoremap <silent> <leader>q :ArgWrap<CR>

" Default selection order starts from the bottom of the completion list,
" which is almost always too specific. Reverse it so that selection
" goes from general->specific
let g:SuperTabDefaultCompletionType = '<c-n>'

" Highlight trailing whitespace with error
match ErrorMsg '\s\+$'
" Remove trailing whitespace on save
augroup trimwhitespace
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup end

" Open help in a vertical split instead of the default horizontal split
" http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev
cnoreabbrev h <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'vert h' : 'h')<cr>

" Allow saving of files as sudo when forgot to start vim using sudo.
cnoremap w!! w !sudo tee > /dev/null %

" CtrlSF Stuff
let g:ctrlsf_ackprg = 'rg'
let g:ctrlsf_confirm_save = 0
let g:ctrlsf_indent = 2
let g:ctrlsf_winsize = '30%'

" Vim-QF config
let g:qf_mapping_ack_style = 1
let g:qf_auto_open_quickfix = 0
let g:qf_auto_open_loclist = 0
let g:qf_bufname_or_text = 2

" Buffer manipulation
" Close buffers without closing splits
nnoremap <C-c> :bp\|bd #<CR>
nnoremap <leader>h :bp <CR>
nnoremap <leader>l :bn <CR>

" Tab Navigation
nnoremap <S-Left> gT
nnoremap <S-Right> gt

" Map jk to exit insert mode
" inoremap jk <Esc>
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap ;; <Esc>A;<Esc>
inoremap ,, <Esc>A,<Esc>

" Resizing windows
nnoremap <silent> <Up> 5<C-w>+
nnoremap <silent> <Down> 5<C-w>-
nnoremap <silent> <Left> 5<C-w><
nnoremap <silent> <Right> 5<C-w>>

let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_mode='i'

" Vim-Projectionist Config
let g:projectionist_heuristics = {
  \ "*.js": {
  \   "alternate": "{dirname}/__tests__/{basename}-test.js",
  \   "type": "source"
  \ }}

nnoremap <C-g> /\%l<Left>
