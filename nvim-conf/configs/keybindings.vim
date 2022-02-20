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

nnoremap <leader>a :Ack!<Space>
nnoremap <C-p> :FZF<CR>

" LSP
augroup lsp
  autocmd FileType rust nnoremap <silent> gD <cmd>lua vim.lsp.buf.implementation()<CR>
  autocmd FileType rust nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
  autocmd FileType rust nnoremap <silent> K  <cmd>lua vim.lsp.buf.signature_help()<CR>
  autocmd FileType rust nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
  autocmd FileType rust nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<CR>
  "" Goto previous/next diagnostic warning/error
  autocmd FileType rust nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
  autocmd FileType rust nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>
augroup END

augroup go
  autocmd FileType go nnoremap <buffer> <silent> gd :GoDef<CR>
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)
augroup END
