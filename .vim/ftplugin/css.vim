if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

if (!has('nvim-0.5.0'))
  setlocal omnifunc=csscomplete#CompleteCSS noci
endif
