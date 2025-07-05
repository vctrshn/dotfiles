" Highlight trailing whitespace with error
match ErrorMsg '\s\+$'
" Remove trailing whitespace on save
augroup trimwhitespace
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup end
