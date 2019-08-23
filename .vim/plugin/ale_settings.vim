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
let g:ale_pattern_options = {
\   '\.md$': {'ale_enabled': 0},
\   '\.txt$': {'ale_enabled': 0},
\}
nmap <silent> <C-e> <Plug>(ale_next_wrap)
