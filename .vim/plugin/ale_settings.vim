if (has('nvim-0.5.0') && !exists('g:vscode'))
  nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> gh :lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
  nnoremap <silent> gE :lua vim.lsp.diagnostic.goto_prev()<CR>
  nnoremap <silent> ge :lua vim.lsp.diagnostic.goto_next()<CR>
endif
