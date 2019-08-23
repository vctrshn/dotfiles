set background=dark
" Get some true color support because it's 2016
if (has('termguicolors'))
    set termguicolors
endif
if (has('guicursor'))
    set guicursor
endif
colorscheme palenight
let s:colors = palenight#GetColors()
call palenight#set_highlight('Identifier', { 'fg': s:colors.white })
call palenight#set_highlight('phpVarSelector', { 'fg': s:colors.white })
call palenight#set_highlight('phpMethodsVar', { 'fg': s:colors.cyan })
call palenight#set_highlight('phpMethod', { 'fg': s:colors.blue })
call palenight#set_highlight('phpStorageClass', { 'fg': s:colors.purple })
call palenight#set_highlight('phpStaticClasses', { 'fg': s:colors.light_red })
call palenight#set_highlight('phpKeyword', { 'fg': s:colors.purple })
call palenight#set_highlight('phpFunction', { 'fg': s:colors.blue })
call palenight#set_highlight('phpParent', { 'fg': s:colors.white })
call palenight#set_highlight('Operator', { 'fg': s:colors.purple })
call palenight#set_highlight('VertSplit', { 'fg': s:colors.menu_grey })
call palenight#set_highlight('ALEWarning', { 'gui': 'underline', 'sp': s:colors.yellow })
call palenight#set_highlight('ALEWarningSign', { 'fg': s:colors.yellow })
call palenight#set_highlight('ALEInfoSign', { 'fg': s:colors.blue })
call palenight#set_highlight('ALEVirtualTextWarning', { 'fg': s:colors.yellow })
call palenight#set_highlight('ALEVirtualTextStyleWarning', { 'fg': s:colors.yellow })
call palenight#set_highlight('ALEVirtualTextInfo', { 'fg': s:colors.blue })
call palenight#set_highlight('ALEVirtualTextError', { 'fg': s:colors.red })
call palenight#set_highlight('ALEVirtualTextStyleError', { 'fg': s:colors.red })

exe 'highlight User1 guifg=' . s:colors.white.gui . ' guibg=' . s:colors.black.gui
exe 'highlight User2 guifg=' . s:colors.blue.gui . ' guibg=' . s:colors.black.gui . ' gui=BOLD'
exe 'highlight User3 guifg=' . s:colors.green.gui . ' guibg=' . s:colors.black.gui
exe 'highlight User4 guifg=' . s:colors.purple.gui . ' guibg=' . s:colors.black.gui
exe 'highlight User5 guifg=' . s:colors.yellow.gui . ' guibg=' . s:colors.black.gui
exe 'highlight User6 guifg=' . s:colors.cyan.gui . ' guibg=' . s:colors.black.gui
