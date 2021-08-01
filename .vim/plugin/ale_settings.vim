if (has('nvim-0.5.0'))
  nnoremap <silent> gD :lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> gh :lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
  nnoremap <silent> gE :lua vim.lsp.diagnostic.goto_prev()<CR>
  nnoremap <silent> ge :lua vim.lsp.diagnostic.goto_next()<CR>
else
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
  let g:ale_completion_delay = 50
  let g:ale_pattern_options = {
  \   '\.md$': {'ale_enabled': 0},
  \   '\.txt$': {'ale_enabled': 0},
  \}
  nmap <silent> <C-e> <Plug>(ale_next_wrap)
endif
