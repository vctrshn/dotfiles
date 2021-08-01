if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

execute EmmetInstall

if (!has('nvim-0.5.0'))
  let g:jsx_ext_required = 0
  let g:used_javascript_libs = 'react'
  let g:javascript_plugin_flow = 1
  let g:vim_json_syntax_conceal = 0
endif
