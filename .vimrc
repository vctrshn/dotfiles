call plug#begin('~/.vim/plugged')

" Essentials
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
if (has('nvim-0.7'))
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
endif
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
endif

" Autocomplete/Snippets
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
if (has('nvim-0.5.0'))
  Plug 'hrsh7th/nvim-compe'
endif

" Grepping/Linting
if (has('nvim-0.5.0'))
  Plug 'neovim/nvim-lspconfig'
  Plug 'jose-elias-alvarez/null-ls.nvim'
endif
Plug 'romainl/vim-qf', { 'for': ['qf'] }
Plug 'wincent/ferret'
Plug 'mhinz/vim-grepper'

" Colorschemes
if (has('nvim-0.5.0'))
  Plug 'folke/tokyonight.nvim'
endif

" Pending
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/vim-peekaboo'
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
  Plug 'nvim-lua/plenary.nvim'
endif

call plug#end()


" Vim-Sneak config
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1

" Vim-Peekaboo config
let g:peekaboo_window = 'vert bo 50new'

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

" Vim-QF config
let g:qf_mapping_ack_style = 1
let g:qf_auto_open_quickfix = 0
let g:qf_auto_open_loclist = 0
let g:qf_bufname_or_text = 2

