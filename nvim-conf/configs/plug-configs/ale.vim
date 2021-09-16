set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1

let g:ale_linters = {
      \ 'rust': ['rustc', 'rls'],
      \ 'go': ['gofmt']
\}

let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'rust': ['rustfmt'],
    \ 'go': ['gofmt']
\}
