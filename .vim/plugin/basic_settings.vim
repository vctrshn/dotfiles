filetype plugin indent on
syntax enable
set number

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
set listchars=tab:»\ ,nbsp:_,trail:.

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

" Make vertical split border a solid line
set fillchars=vert:│

" Perf stuff
set lazyredraw
set ttyfast
set timeoutlen=300
set ttimeout
set ttimeoutlen=50
" Disable syntax highlighting after first 200 chars in a line
set synmaxcol=200
" Nobody has time for hightlighting matched parens
set noshowmatch

" Autocomplete options
set completeopt=menu,noinsert,menuone,noselect
set completeopt-=preview

" Tags file
set tags=tags

" Folds are not my thing
set nofoldenable

" Modelines are not my thing
set nomodeline

" Using the mouse is not my thing
set mouse=

" Delete comment character when joining commented lines
set formatoptions+=j

" Proper pasting from outside applications
set pastetoggle=<F2>
