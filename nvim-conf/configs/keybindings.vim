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
nnoremap gd :ALEGoToDefinition<CR>

nnoremap <leader>a :Ack!<Space>
nnoremap <C-p> :FZF<CR>
