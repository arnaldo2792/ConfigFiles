call plug#begin('~/.vim/plugged')
	" Git tools
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'

	" General Tools
	Plug 'ctrlpvim/ctrlp.vim'
  Plug 'preservim/nerdtree'
  Plug 'mileszs/ack.vim'

	" Color schemes / Styles
	Plug 'vim-airline/vim-airline'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'vim-airline/vim-airline-themes'

  " LSP
  Plug 'dense-analysis/ale'
call plug#end()
