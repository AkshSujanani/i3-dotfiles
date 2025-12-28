set relativenumber
syntax on
set autoindent

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
call plug#end()

colorscheme onedark
