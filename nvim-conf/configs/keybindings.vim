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
nnoremap <C-g> <cmd>Telescope git_status<CR>
nnoremap <leader>r <cmd>Telescope lsp_references<CR>

" LSP
augroup lsp
  autocmd FileType rust,gitcommit,markdown,go,c,typescript nnoremap <silent> gD <cmd>lua vim.lsp.buf.implementation()<CR>
  autocmd FileType rust,gitcommit,markdown,go,c,typescript nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
  autocmd FileType rust,gitcommit,markdown,go,c,typescript nnoremap <silent> gk <cmd>lua vim.lsp.buf.signature_help()<CR>
  autocmd FileType rust,gitcommit,markdown,go,c,typescript nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
  autocmd FileType go,rust,gitcommit,markdown,go,c,typescript nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<CR>
  autocmd FileType rust,gitcommit,markdown,go,c,typescript nnoremap <silent> gh <cmd>lua vim.lsp.buf.hover()<CR>
  autocmd FileType rust,gitcommit,markdown,go,c,typescript nnoremap <silent> rn <cmd>lua vim.lsp.buf.rename()<CR>

  "" Goto previous/next diagnostic warning/error
  autocmd FileType go,rust,gitcommit,markdown,c,typescript nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
  autocmd FileType go,rust,gitcommit,markdown,c,typescript nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>
augroup END

augroup vpm
  autocmd BufNewFile,BufRead *.vpm call SetVimPresentationMode()
  function SetVimPresentationMode()
    nnoremap <buffer> <Right> :n<CR>
    nnoremap <buffer> <Left> :N<CR>
  endfunction
augroup END
