source ~/.work.before.vimrc
call plug#begin('~/.vim/plugged')

" Essentials
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-commentary'
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

" JS Language Support gets its own support whoop
" Plug 'othree/yajs.vim', { 'for': ['javascript'] }
Plug 'flowtype/vim-flow', { 'do': 'npm install -g flow-bin', 'for': ['javascript'] }
" Plug 'mxw/vim-jsx', { 'for': ['javascript'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript'] }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'ternjs/tern_for_vim', { 'dir': '~/.vim/plugged/tern_for_vim', 'do': 'npm install', 'for': ['javascript'] }
Plug 'neoclide/vim-jsx-improve', { 'for': ['javascript'] }
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown']}

" Language Support
" Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'blueyed/smarty.vim', { 'for': 'smarty' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go' }
Plug 'tmux-plugins/vim-tmux'
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }
Plug 'mxw/vim-xhp'
Plug 'hhvm/vim-hack'
Plug 'reasonml-editor/vim-reason-plus'

" Integrations
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'joonty/vdebug'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'
Plug 'jreybert/vimagit'
Plug 'wincent/vim-clipper'

" Autocomplete/Snippets
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript'] }
Plug 'wokalski/autocomplete-flow', { 'for': ['javascript'] }
" Plug 'steelsojka/deoplete-flow', { 'for': ['javascript'] }
" Plug 'zchee/deoplete-go', { 'for': 'go' , 'do': 'make' }
if (has('nvim'))
  Plug 'roxma/nvim-completion-manager'
  Plug 'roxma/ncm-flow'
  Plug 'roxma/nvim-cm-tern'
endif
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'othree/csscomplete.vim', { 'for': 'css' }
Plug 'othree/jspc.vim', { 'for': ['javascript'] }

" Grepping/Linting
" Plug 'neomake/neomake'
Plug 'w0rp/ale'
Plug 'mhinz/vim-grepper'
Plug 'romainl/vim-qf'
Plug 'wincent/ferret'
Plug 'dyng/ctrlsf.vim'

" UI
Plug 'Shougo/unite.vim' "https://github.com/Shougo/denite.nvim
"Plug 'Shougo/neoyank.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'dhruvasagar/vim-zoom'
Plug 'equalsraf/neovim-gui-shim'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'

" Pending
Plug 'wincent/terminus'
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

filetype plugin indent on
syntax enable
set number
set background=dark
" Get some true color support because it's 2016
if (has('termguicolors'))
    set termguicolors
endif
if (has('guicursor'))
    set guicursor
endif
colorscheme one


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set fileformats=unix,dos,mac

" Set to auto read when a file is changed from the outside
set autoread
" Set to write when focus is lost
set autowriteall
" Allow for modifications to buffers other than the current one
set hidden

" Turn off backups
set nobackup
set nowritebackup
set noswapfile

" But we want some undos
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

" Tab and indent stuff
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set copyindent
set preserveindent
set autoindent

" Special Chars
set list
set showbreak=↪
set listchars=tab:»\ ,nbsp:_,trail:.,eol:¬

" Search stuff
set incsearch
set hlsearch
set ignorecase
set smartcase

" Scrolling stuff
set scrolljump=5
set scrolloff=3
set virtualedit=onemore

" Split windows below and right instead of above and left
set splitbelow splitright

" Wrap characters on lines that exceed 80 characters in length
set colorcolumn=81
" Set color of vertical split border
set fillchars+=vert:\|
" Set highlighting of current line
set cursorline

" Perf stuff
set lazyredraw
set ttyfast
set ttimeout
set ttimeoutlen=50
" Disable syntax highlighting after first 200 chars in a line
set synmaxcol=200

" Autocomplete options
set completeopt=menu,noinsert,menuone,noselect
set completeopt-=preview

" Tags file
set tags=tags

" Better pasting
" Mapping to copy to system clipboard
vnoremap <C-c> "+y
" Proper pasting from outside applications
set pastetoggle=<F2>

" Moving lines up and down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Sorting inside of curly braces and paragraphs
nnoremap <silent> <leader>sc vi{:'<, '>sort i<CR>
nnoremap <silent> <leader>sp vip:'<, '>sort i<CR>
" Visual mode sorting of selection
vnoremap <silent> <leader>s :'<, '>sort i<CR>

" Delete comment character when joining commented lines
set formatoptions+=j

" Status line stuff
set laststatus=2
set statusline=%f
set statusline+=%{fugitive#statusline()}
set statusline+=%{ConflictedVersion()}
" More status line(airline) stuff
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme = 'onedark'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#show_message = 0
" Remove encoding
let g:airline_section_y = ''
" Remove percentage/line#/col#
let g:airline_section_z = ''
" Better usage of tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Map leader key
let g:mapleader = ' '

" Vim-Sneak config
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1

" Incsearch.vim config
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" incsearch.vim x fuzzy x vim-easymotion
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Leader>/ incsearch#go(<SID>config_easyfuzzymotion())

" Easymotion config
map <Leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 1
let g:EasyMotion_smartcase = 1

" JS syntax support
let g:jsx_ext_required = 0
let g:used_javascript_libs = 'react'
let g:javascript_plugin_flow = 1
let g:vim_json_syntax_conceal = 0

" Swap colon to semicolon cuz lazy
nnoremap ; :
nnoremap : ;
" Navigate between display lines
nnoremap <silent> j gj
nnoremap <silent> k gk

" Always append trailing commas when using argwrap
let g:argwrap_tail_comma = 1
nnoremap <silent> <leader>q :ArgWrap<CR>

" Default selection order starts from the bottom of the completion list,
" which is almost always too specific. Reverse it so that selection
" goes from general->specific
let g:SuperTabDefaultCompletionType = '<c-n>'

" Highlight trailing whitespace with error
match ErrorMsg '\s\+$'
" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
"autocmd! BufRead,BufWritePost * Neomake
" autocmd Filetype javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd Filetype javascript nnoremap <silent> gd :FlowJumpToDef<cr>
autocmd Filetype javascript nnoremap <silent> gh :FlowType<cr>
autocmd FileType javascript set formatprg="prettier --stdin --single-quote --trailing-comma es5"
autocmd FileType json set formatprg="prettier --parser json --stdin --single-quote --trailing-comma es5"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
" Template file syntax highlighting
autocmd BufRead,BufNewFile *.tmpl set filetype=smarty.html
autocmd Filetype html,javascript EmmetInstall

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction
augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Open help in a vertical split instead of the default horizontal split
" http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev
cabbrev h <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'vert h' : 'h')<cr>

" Allow saving of files as sudo when forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Disable all GitGutter mappings, since signify seems to work better
let g:gitgutter_map_keys = 0
" GitGutterUndoHunk is too hard to type
cabbrev revert GitGutterUndoHunk

" Grep Stuff
" Ripgrep hella fast
cabbrev rg Grepper -tool rg -open -switch
let g:ctrlsf_ackprg = '/usr/local/bin/rg'
let g:ctrlsf_confirm_save = 0
let g:ctrlsf_indent = 2
let g:ctrlsf_winsize = '30%'

let g:qf_mapping_ack_style = 1
let g:qf_auto_open_quickfix = 0
let g:qf_auto_open_loclist = 0

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
command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --fixed-strings --smart-case --hidden --color=always --glob '!.git/**' --glob '!.hg/**' --glob '!**/*.ico' --glob '!**/*.png' --glob '!**/*.jpg' --glob '!**/*.jpeg' --glob '!**/*.zip' --glob '!**/*.tar.gz' --glob '!**/*.gif' --glob '!**/*.avi' --glob '!**/*.mp4' --glob '!**/*.mp3' --glob '!**/*.ogg' --glob '!**/*.tgz' --glob '!**/*.gz' --glob '!**/*.ctg.z' --glob '!**/*.bcmap' ".<q-args>, 1,
  \ fzf#vim#with_preview('right:35%'),
  \ )
nnoremap <C-t> :GitFiles<cr>
nnoremap <C-p> :Files<cr>
nnoremap <C-b> :Buffers<cr>
nnoremap <C-f> :BLines<cr>
nnoremap <expr> <C-g> (expand("<cword>") ==? "") ? ":Rg " : ":Rg \<C-r>\<C-w>"

" Buffer manipulation
" Close buffers without closing splits
nnoremap <C-c> :bp\|bd #<CR>
nnoremap <Leader>h :bp <CR>
nnoremap <Leader>l :bn <CR>

" Map jk to exit insert mode
inoremap jk <Esc>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap ;; <Esc>A;<Esc>
inoremap ,, <Esc>A,<Esc>

let g:tmux_navigator_save_on_switch = 1

" Create splits using C+w+- and C+w+|
map <silent> <C-w>- :sp<CR>
map <silent> <C-w>\| :vsp<CR>
" Resizing windows
map <silent> <C-w>k :res +5<CR>
map <silent> <C-w>j :res -5<CR>
map <silent> <C-w>h :vertical resize -5<CR>
map <silent> <C-w>l :vertical resize +5<CR>

" let g:neomake_warning_sign={'text': '⚠'}
" let g:neomake_error_sign={'text': '✗'}
" let g:neomake_css_enabled_makers = ['csslint']
" let g:neomake_php_enabled_makers = ['php']
" let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
" let g:neomake_eslint_maker = {
"     \ 'args': ['-f', 'compact', getcwd()],
"     \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"     \ '%W%f: line %l\, col %c\, Warning - %m'
"     \ }
" let g:neomake_flow_maker = {
"     \ 'exe': 'flow',
"     \ 'args': ['--from=vim', '--show-all-errors'],
"     \ 'errorformat': '%EFile "%f"\, line %l\, characters %c-%m,%C%m,%Z%m',
"     \ 'postprocess': function('neomake#makers#ft#javascript#FlowProcess')
"     \ }
" let g:neomake_flow_maker = {
"       \ 'exe': 'sh',
"       \ 'args': ['-c', 'flow --json 2> /dev/null | flow-vim-quickfix'],
"       \ 'errorformat': '%E%f:%l:%c\,%n: %m',
"       \ 'cwd': '%:p:h'
"       \ }
"
" let g:neomake_logfile='./.neomake.log'
" For makers that need to be run at the root directory to be truly effective,
" ie Flow, set up directory makers for them
"https://github.com/neomake/neomake/issues/787
" let g:customFTSettings = ['js', 'qf']
" Run neomake for all file types except those in customFTSettings (eg. JS)
" autocmd! BufWritePost * if index(customFTSettings, &ft) < 0 | Neomake
" Run neomake! for JS files
" autocmd! BufWritePost *.js Neomake! flow eslint


let g:ale_sign_warning = '⚠'
let g:ale_sign_error = '✗'
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'never'
" let g:ale_javascript_flow_executable = 'flow --json 2> /dev/null | flow-vim-quickfix'
nmap <silent> <C-e> <Plug>(ale_next_wrap)

let g:flow#enable = 0
let g:flow#omnifunc = 0
let g:flow#showquickfix = 0


let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='i'

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

" "https://gist.github.com/romainl/047aca21e338df7ccf771f96858edb86
" nnoremap <Leader>m :g//#<Left><Left>
" " make list-like commands more intuitive
" function! CCR()
"     let cmdline = getcmdline()
"     if cmdline =~ '\v\C^(ls|files|buffers)'
"         " like :ls but prompts for a buffer command
"         return "\<CR>:b"
"     elseif cmdline =~ '\v\C/(#|nu|num|numb|numbe|number)$'
"         " like :g//# but prompts for a command
"         return "\<CR>:"
"     elseif cmdline =~ '\v\C^(dli|il)'
"         " like :dlist or :ilist but prompts for a count for :djump or :ijump
"         return "\<CR>:" . cmdline[0] . "j  " . split(cmdline, " ")[1] . "\<S-Left>\<Left>"
"     elseif cmdline =~ '\v\C^(cli|lli)'
"         " like :clist or :llist but prompts for an error/location number
"         return "\<CR>:sil " . repeat(cmdline[0], 2) . "\<Space>"
"     elseif cmdline =~ '\C^old'
"         " like :oldfiles but prompts for an old file to edit
"         set nomore
"         return "\<CR>:sil se more|e #<"
"     elseif cmdline =~ '\C^changes'
"         " like :changes but prompts for a change to jump to
"         set nomore
"         return "\<CR>:sil se more|norm! g;\<S-Left>"
"     elseif cmdline =~ '\C^ju'
"         " like :jumps but prompts for a position to jump to
"         set nomore
"         return "\<CR>:sil se more|norm! \<C-o>\<S-Left>"
"     elseif cmdline =~ '\C^marks'
"         " like :marks but prompts for a mark to jump to
"         return "\<CR>:norm! `"
"     elseif cmdline =~ '\C^undol'
"         " like :undolist but prompts for a change to undo
"         return "\<CR>:u "
"     else
"         return "\<CR>"
"     endif
" endfunction
" " map '<CR>' in command-line mode to execute the function above
" cnoremap <expr> <CR> CCR()

let g:go_fmt_command = 'goimports'
let g:go_metalinter_autosave = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" let g:LanguageClient_serverCommands = {
"   \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"   \ }
" let g:LanguageClient_autoStart = 1

source ~/.work.after.vimrc
