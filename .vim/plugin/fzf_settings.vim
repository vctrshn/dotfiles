if (has('nvim-0.7'))
  nnoremap <leader>t :Telescope git_files<cr>
  nnoremap <leader>p :Telescope find_files hidden=true<cr>
  nnoremap <leader>b :Telescope buffers<cr>
  nnoremap <leader>o :Telescope lsp_document_symbols<cr>
  nnoremap <leader>g :Telescope grep_string<cr>
  nnoremap <C-f> :Telescope current_buffer_fuzzy_find<cr>
else
  function! s:build_quickfix_list(lines)
    call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
    copen
    cc
  endfunction

  let g:fzf_action = {
    \ 'ctrl-q': function('s:build_quickfix_list'),
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }
  let g:fzf_buffers_jump = 1
  let g:fzf_layout = {'down': '45%'}
  command! -nargs=* -complete=dir Rg
    \ call fzf#vim#grep(
    \   "rg --column --line-number --no-heading --fixed-strings --smart-case --hidden --color=always --glob '!.git/**' --glob '!.hg/**' --glob '!**/*.ico' --glob '!**/*.png' --glob '!**/*.jpg' --glob '!**/*.jpeg' --glob '!**/*.zip' --glob '!**/*.tar.gz' --glob '!**/*.gif' --glob '!**/*.avi' --glob '!**/*.mp4' --glob '!**/*.mp3' --glob '!**/*.ogg' --glob '!**/*.tgz' --glob '!**/*.gz' --glob '!**/*.ctg.z' --glob '!**/*.bcmap' ".<q-args>, 1,
    \ fzf#vim#with_preview('right:35%'),
    \ )
  nnoremap <leader>t :GitFiles<cr>
  nnoremap <leader>p :Files<cr>
  nnoremap <leader>b :Buffers<cr>
  nnoremap <leader>; :History:<cr>
  nnoremap <leader>/ :History/<cr>
  nnoremap <C-f> :BLines<cr>
  nnoremap <expr> <leader>g (expand("<cword>") ==? "") ? ":Rg " : ":Rg \<C-r>\<C-w><CR>"
  xnoremap <leader>g "zy:exe "Rg ".@z.""<CR>
endif
