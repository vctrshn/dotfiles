source ~/dotfiles/.vimrc

" Live preview of substitution command
set inccommand=split

"nnoremap <silent> <BS> :TmuxNavigateLeft<CR>

let g:deoplete#enable_at_startup = 1
" let g:deoplete#max_list = 1000
" let g:deoplete#auto_complete_delay = 10
" let g:deoplete#auto_refresh_delay = 10
let g:deoplete#file#enable_buffer_path = 1
" let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.css = 'csscomplete#CompleteCSS'
let g:deoplete#omni#functions.javascript = [
    \ 'flowcomplete#Complete',
    \ 'tern#Complete',
    \ 'jspc#omni'
\]
" let g:deoplete#sources = {}
" let g:deoplete#sources['javascript'] = ['omni', 'file', 'buffer', 'ternjs', 'flow']
" let g:deoplete#sources['javascript.jsx'] = ['omni', 'file', 'buffer', 'ternjs', 'flow']

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

"https://github.com/neovim/neovim/wiki/FAQ#how-can-i-change-the-cursor-shape-in-the-terminal
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
