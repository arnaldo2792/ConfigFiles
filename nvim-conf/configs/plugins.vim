call plug#begin('~/.vim/plugged')
	" Git tools
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'

	" General Tools
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'mileszs/ack.vim'

	" Color schemes / Styles
	Plug 'vim-airline/vim-airline'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'vim-airline/vim-airline-themes'
  Plug 'dag/vim-fish'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  " Rust
  Plug 'simrat39/rust-tools.nvim'

  " Go
  Plug 'fatih/vim-go'
call plug#end()
