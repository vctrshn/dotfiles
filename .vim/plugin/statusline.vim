" Status line stuff
set laststatus=2
set statusline=
set statusline+=%2*%f             "{relative filepath}
set statusline+=\ %6*%m%r         "[modified][readonly]
set statusline+=\ %1*%=           "{space} {left-right separator}
set statusline+=%5*%a             "({current} of {total buffers in arglist})
set statusline+=\ %3*%y           "[{filetype}]
set statusline+=\ %4*%l:%c\|%L    "{line}:{column}|{total lines}
set statusline+=%<                "truncate from right side
