local nvim_lsp = require('lspconfig')
nvim_lsp.flow.setup {
  cmd = { "flow", "lsp" },
  settings = {
    runOnEdit = false,
  },
}
