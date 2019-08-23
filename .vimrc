" https://devel.tech/snippets/n/vIIMz8vZ/load-vim-source-files-only-if-it-exists/
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

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
Plug 'FooSoft/vim-argwrap'

" More text objects
Plug 'kana/vim-textobj-function'
Plug 'haya14busa/vim-textobj-function-syntax'

" Navigation
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript'] }

" Language Support
Plug 'blueyed/smarty.vim', { 'for': 'smarty' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }
Plug 'mxw/vim-xhp', { 'for': 'php' }
Plug 'hhvm/vim-hack', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'reasonml-editor/vim-reason-plus', { 'for': 'reason' }

" Integrations
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'
Plug 'jreybert/vimagit'
Plug 'wincent/vim-clipper'

" Autocomplete/Snippets
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript']}
Plug 'othree/csscomplete.vim', { 'for': 'css' }
Plug 'othree/jspc.vim', { 'for': ['javascript'] }

" Grepping/Linting
Plug 'w0rp/ale'
Plug 'romainl/vim-qf'
Plug 'wincent/ferret'
Plug 'dyng/ctrlsf.vim'

" UI
Plug 'ap/vim-css-color'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'dhruvasagar/vim-zoom'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'KeitaNakamura/neodark.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'skielbasa/vim-material-monokai'
Plug 'chriskempson/base16-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'kaicataldo/material.vim'
Plug 'morhetz/gruvbox'
Plug 'larsbs/vimterial_dark'
Plug 'hzchirs/vim-material'

" Pending
Plug 'wincent/terminus'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist'
Plug 'junegunn/vim-peekaboo'
Plug 'kergoth/vim-hilinks', { 'on': 'HLT!' }
Plug 'kopischke/vim-fetch'
Plug 'Olical/vim-enmasse', { 'on': 'EnMasse' }
Plug 'hauleth/asyncdo.vim'
Plug 'tpope/vim-rsi'
Plug 'justinmk/vim-dirvish'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'arthurxavierx/vim-caser'

" Neovim only plugins
if (has('nvim'))
  call SourceIfExists('~/.nvim-plugins.vimrc')
endif

call plug#end()

runtime plugin/basic_settings.vim
runtime plugin/colors.vim

let g:TerminusMouse=0

" Map leader key to space
let g:mapleader = ' '

" Reload vimrc with <leader>e
nnoremap <leader>e :source $MYVIMRC<cr>

" Better pasting
" Mapping to copy to system clipboard
xnoremap <C-c> "+y
" Proper pasting from outside applications
set pastetoggle=<F2>
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

" Status line stuff
set laststatus=2
set statusline=
set statusline+=%2*%f             "{relative filepath}
set statusline+=\ %6*%m%r         "[modified][readonly]
set statusline+=\ %1*%=           "{space} {left-right separator}
set statusline+=%5*%a             "({current} of {total buffers in arglist})
set statusline+=\ %3*%y           "[{filetype}]
set statusline+=\ %4*%l:%c\|%L    "{line}:{column}|{total lines}
set statusline+=%<                "truncate from right side

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
" Incsearch.vim config
let g:incsearch#auto_nohlsearch = 1
" incsearch.vim x fuzzy x fuzzyspell x vim-easymotion
" Bind Ctrl-C to actually initiate the easymotion, so that <CR> can just confirm
" the current result
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<C-c>": '<Over>(easymotion)', "\<Esc>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
nnoremap <silent><expr> <leader><leader>/ incsearch#go(<SID>config_easyfuzzymotion())

" Easymotion config
let g:EasyMotion_startofline = 1
let g:EasyMotion_smartcase = 1

" JS syntax support
let g:jsx_ext_required = 0
let g:used_javascript_libs = 'react'
let g:javascript_plugin_flow = 1
let g:vim_json_syntax_conceal = 0

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
augroup frontend
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
  autocmd Filetype html,javascript EmmetInstall
  autocmd BufRead,BufNewFile *.flow set filetype=javascript
augroup end
augroup php
  autocmd!
  " Template file syntax highlighting
  autocmd BufRead,BufNewFile *.tmpl set filetype=smarty.html
  autocmd BufRead,BufNewFile *.php syn keyword phpStorageClass async final public private static class extends const abstract use interface trait require contained
augroup end

" Open help in a vertical split instead of the default horizontal split
" http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev
cnoreabbrev h <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'vert h' : 'h')<cr>

inoreabbrev clog console.log()

" Allow saving of files as sudo when forgot to start vim using sudo.
cnoremap w!! w !sudo tee > /dev/null %

" Disable all GitGutter mappings, since signify seems to work better
let g:gitgutter_map_keys = 0

let g:signify_vcs_list = [ 'git', 'hg' ]

" CtrlSF Stuff
let g:ctrlsf_ackprg = '/usr/local/bin/rg'
let g:ctrlsf_confirm_save = 0
let g:ctrlsf_indent = 2
let g:ctrlsf_winsize = '30%'

" Vim-QF config
let g:qf_mapping_ack_style = 1
let g:qf_auto_open_quickfix = 0
let g:qf_auto_open_loclist = 0
let g:qf_bufname_or_text = 2

" FZF stuff
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_buffers_jump = 1
let g:fzf_layout = {'down': '45%'}
command! -nargs=* -complete=dir Rg
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --fixed-strings --smart-case --hidden --color=always --glob '!.git/**' --glob '!.hg/**' --glob '!**/*.ico' --glob '!**/*.png' --glob '!**/*.jpg' --glob '!**/*.jpeg' --glob '!**/*.zip' --glob '!**/*.tar.gz' --glob '!**/*.gif' --glob '!**/*.avi' --glob '!**/*.mp4' --glob '!**/*.mp3' --glob '!**/*.ogg' --glob '!**/*.tgz' --glob '!**/*.gz' --glob '!**/*.ctg.z' --glob '!**/*.bcmap' ".<q-args>, 1,
  \ fzf#vim#with_preview('right:35%'),
  \ )
nnoremap <leader>t :GitFiles<cr>
nnoremap <leader>p :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>; :History:<cr>
nnoremap <leader>/ :History/<cr>
nnoremap <C-f> :BLines<cr>
nnoremap <expr> <leader>g (expand("<cword>") ==? "") ? ":Rg " : ":Rg \<C-r>\<C-w><CR>"
xnoremap <leader>g "zy:exe "Rg ".@z.""<CR>

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

let g:tmux_navigator_save_on_switch = 1

" Resizing windows
nnoremap <silent> <Up> 5<C-w>+
nnoremap <silent> <Down> 5<C-w>-
nnoremap <silent> <Left> 5<C-w><
nnoremap <silent> <Right> 5<C-w>>

let g:ale_sign_warning = '⚠'
let g:ale_sign_error = '✗'
let g:ale_linters = {
\   'javascript': ['eslint', 'flow-language-server'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\}
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%][%code%][%severity%] %s'
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_virtualtext_cursor = 1
let g:ale_completion_enabled = 1
let g:ale_pattern_options = {
\   '\.md$': {'ale_enabled': 0},
\   '\.txt$': {'ale_enabled': 0},
\}
nmap <silent> <C-e> <Plug>(ale_next_wrap)

let g:flow#enable = 0
let g:flow#omnifunc = 0
let g:flow#showquickfix = 0

let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_mode='i'

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

let g:caser_prefix = '<leader>c'

" Vim-Projectionist Config
let g:projectionist_heuristics = {
  \ "*.js": {
  \   "alternate": "{dirname}/__tests__/{basename}-test.js",
  \   "type": "source"
  \ }}

runtime after/plugin/work.vim
