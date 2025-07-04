set background=dark
" Get some true color support because it's 2016
if (has('termguicolors'))
    set termguicolors
endif
if (has('guicursor'))
    set guicursor
endif
if (has('nvim-0.5'))
  colorscheme tokyonight
else
  colorscheme habamax
endif
