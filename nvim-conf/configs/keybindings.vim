" Key-bindings
let mapleader=","

nnoremap <leader>, :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>w :bd<CR>

nnoremap <C-s> :w<CR>
nnoremap <S-l> :bn<CR>
nnoremap <S-h> :bp<CR>

nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>bf :NERDTreeFind<CR>

" Telescope bindings
nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <C-f> <cmd>Telescope live_grep<CR>

" LSP
augroup lsp
  autocmd FileType rust,gitcommit,markdown nnoremap <silent> gD <cmd>lua vim.lsp.buf.implementation()<CR>
  autocmd FileType rust,gitcommit,markdown nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
  autocmd FileType rust,gitcommit,markdown nnoremap <silent> gk <cmd>lua vim.lsp.buf.signature_help()<CR>
  autocmd FileType rust,gitcommit,markdown nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
  autocmd FileType go,rust,gitcommit,markdown nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<CR>
  autocmd FileType rust,gitcommit,markdown nnoremap <silent> gh <cmd>lua vim.diagnostic.open_float()<CR>

  "" Goto previous/next diagnostic warning/error
  autocmd FileType go,rust,gitcommit,markdown nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
  autocmd FileType go,rust,gitcommit,markdown nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>
augroup END

augroup go
  autocmd FileType go nnoremap <buffer> <silent> gd :GoDef<CR>
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)
augroup END

augroup vpm
  autocmd BufNewFile,BufRead *.vpm call SetVimPresentationMode()
  function SetVimPresentationMode()
    nnoremap <buffer> <Right> :n<CR>
    nnoremap <buffer> <Left> :N<CR>
  endfunction
augroup END
