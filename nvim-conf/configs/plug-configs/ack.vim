if executable('ag')
  let g:ackprg = 'ag --vimgrep --ignore-dir={target,build,dist,vendor}'
endif
