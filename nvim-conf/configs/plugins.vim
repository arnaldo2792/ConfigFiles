call plug#begin('~/.vim/plugged')
	" Git tools
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'

	" General Tools
  Plug 'preservim/nerdtree'
  Plug 'junegunn/goyo.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'jeffkreeftmeijer/vim-numbertoggle'

	" Color schemes / Styles
	Plug 'vim-airline/vim-airline'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'vim-airline/vim-airline-themes'
  Plug 'dag/vim-fish'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'mustache/vim-mustache-handlebars'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'neomake/neomake'

  " Rust
  Plug 'simrat39/rust-tools.nvim'

  " Go
  Plug 'fatih/vim-go'
call plug#end()
