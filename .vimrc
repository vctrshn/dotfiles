call plug#begin('~/.vim/plugged')

" Essentials
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'

" Navigation
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'

" JS Language Support gets its own support whoop
"Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'flowtype/vim-flow', { 'do': 'npm install -g flow-bin', 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'ternjs/tern_for_vim', { 'dir': '~/.vim/plugged/tern_for_vim', 'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }

" Language Support
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'blueyed/smarty.vim', { 'for': 'smarty' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tmux-plugins/vim-tmux'

" Integrations
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'joonty/vdebug'
Plug 'tpope/vim-fugitive'

" Autocomplete/Snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'othree/csscomplete.vim', { 'for': 'css' }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

" Grepping/Linting
Plug 'neomake/neomake'
Plug 'ddrscott/vim-side-search'
Plug 'mhinz/vim-grepper'
Plug 'romainl/vim-qf'

" UI
Plug 'Shougo/unite.vim' "https://github.com/Shougo/denite.nvim
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'ap/vim-css-color'
Plug 'bling/vim-airline'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-slash'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/seoul256.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin indent on
syntax enable
set number
set relativenumber
set background=dark
" Get some true color support because it's 2016
if (has("termguicolors"))
    set termguicolors
endif
colorscheme onedark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set to auto read when a file is changed from the outside
set autoread
" Set to write when focus is lost
set autowriteall

" Turn off backups
set nobackup
set nowb
set noswapfile

" But we want some undos
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

" Tab and indent stuff
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
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

" Perf stuff
set lazyredraw
set ttyfast
set ttimeout
set ttimeoutlen=50

" Autocomplete options
set completeopt=longest,menuone
set completeopt-=preview

" Tags file
set tags=tags

" Better pasting
" Mapping to copy to system clipboard
vnoremap <C-c> "+y
" Proper pasting from outside applications
set pastetoggle=<F2>

" Delete comment character when joining commented lines
set formatoptions+=j

" Ripgrep hella fast
set grepprg=rg\ --vimgrep

" Status line stuff
set laststatus=2
set statusline=%f
set statusline+=%{fugitive#statusline()}
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
let mapleader = " "

" Vim-Sneak config
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1

" Easymotion config
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 1
let g:EasyMotion_smartcase = 1

let g:jsx_ext_required = 0
let g:used_javascript_libs = 'react'
let g:vim_json_syntax_conceal = 0

" Remap colon to semicolon cuz lazy
nnoremap ; :
" Navigate between display lines
nnoremap <silent> j gj
nnoremap <silent> k gk

" Default selection order starts from the bottom of the completion list,
" which is almost always too specific. Reverse it so that selection
" goes from general->specific
let g:SuperTabDefaultCompletionType = "<c-n>"

" Highlight trailing whitespace with error
match ErrorMsg '\s\+$'
" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
autocmd! BufRead,BufWritePost * Neomake
" Using 2 spaces by default
autocmd Filetype * setlocal sts=2 expandtab
" Using hard tabs for javascript, css
autocmd Filetype javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd Filetype javascript.jsx let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType css setlocal sts=0 noexpandtab omnifunc=csscomplete#CompleteCSS noci
" Template file syntax highlighting
autocmd BufRead,BufNewFile *.tmpl set filetype=smarty.html
autocmd Filetype html,javascript.jsx EmmetInstall

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

nnoremap <C-e> :lopen<cr>
" FZF stuff
let g:fzf_buffers_jump = 1
let g:fzf_files_options = '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
nnoremap <C-t> :Files<cr>
nnoremap <C-p> :GitFiles<cr>
nnoremap <C-g> :Tags<cr>
nnoremap <C-b> :Buffers<cr>
nnoremap <C-i> :History<cr>
nnoremap <C-m> :Marks<cr>
nnoremap <C-f> :BTags<cr>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --smart-case --follow --hidden --glob "!.git/*" --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
" https://github.com/junegunn/fzf.vim/issues/184
command! -nargs=* -complete=file Ags :call fzf#vim#ag_raw(<q-args>, fzf#wrap('ag-raw',
\ {'options': "--preview 'coderay $(cut -d: -f1 <<< {}) 2> /dev/null | sed -n $(cut -d: -f2 <<< {}),\\$p | head -".&lines."'"}))

" Grepper Aliases
cabbrev ag Grepper -tool ag -open -switch
cabbrev rg Grepper -tool rg -open -switch
cabbrev ss SideSearch

" Close buffers without closing splits
nnoremap <C-c> :bp\|bd #<CR>
nnoremap <C-[> :bp <CR>
nnoremap <C-]> :bn <CR>

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

let g:neomake_warning_sign={'text': '⚠'}
let g:neomake_error_sign={'text': '✗'}
let g:neomake_css_enabled_makers = ['csslint']
let g:neomake_php_enabled_makers = ['php']
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_javascript_eslint_maker = {
    \ 'exe': $PWD .'/node_modules/eslint/bin/eslint.js',
    \ 'args': ['-f', 'compact'],
    \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
    \ }
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_jsx_eslint_maker = {
    \ 'exe': $PWD .'/node_modules/eslint/bin/eslint.js',
    \ 'args': ['-f', 'compact', '-c', './.eslintrc'],
    \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
    \ }
let g:flow#autoclose=1
let g:neomake_logfile='./.neomake.log'

let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='i'

let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

let g:qf_mapping_ack_style = 1

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

"https://gist.github.com/romainl/047aca21e338df7ccf771f96858edb86
nnoremap <Leader>m :g//#<Left><Left>
" make list-like commands more intuitive
function! CCR()
    let cmdline = getcmdline()
    if cmdline =~ '\v\C^(ls|files|buffers)'
        " like :ls but prompts for a buffer command
        return "\<CR>:b"
    elseif cmdline =~ '\v\C/(#|nu|num|numb|numbe|number)$'
        " like :g//# but prompts for a command
        return "\<CR>:"
    elseif cmdline =~ '\v\C^(dli|il)'
        " like :dlist or :ilist but prompts for a count for :djump or :ijump
        return "\<CR>:" . cmdline[0] . "j  " . split(cmdline, " ")[1] . "\<S-Left>\<Left>"
    elseif cmdline =~ '\v\C^(cli|lli)'
        " like :clist or :llist but prompts for an error/location number
        return "\<CR>:sil " . repeat(cmdline[0], 2) . "\<Space>"
    elseif cmdline =~ '\C^old'
        " like :oldfiles but prompts for an old file to edit
        set nomore
        return "\<CR>:sil se more|e #<"
    elseif cmdline =~ '\C^changes'
        " like :changes but prompts for a change to jump to
        set nomore
        return "\<CR>:sil se more|norm! g;\<S-Left>"
    elseif cmdline =~ '\C^ju'
        " like :jumps but prompts for a position to jump to
        set nomore
        return "\<CR>:sil se more|norm! \<C-o>\<S-Left>"
    elseif cmdline =~ '\C^marks'
        " like :marks but prompts for a mark to jump to
        return "\<CR>:norm! `"
    elseif cmdline =~ '\C^undol'
        " like :undolist but prompts for a change to undo
        return "\<CR>:u "
    else
        return "\<CR>"
    endif
endfunction
" map '<CR>' in command-line mode to execute the function above
cnoremap <expr> <CR> CCR()
