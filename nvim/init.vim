""""""""""""""""""""""""""""""""""""""""""""""
"		PLUGINS			     "
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'EdenEast/nightfox.nvim' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'	"Keymappings prebuild
Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'master'} 
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""
"		BUILTINS                     "
""""""""""""""""""""""""""""""""""""""""""""""
set relativenumber
syntax on
set autoindent
set smartindent
set hlsearch
set incsearch
set smartcase
set ruler
set wildmenu
colorscheme carbonfox 


""""""""""""""""""""""""""""""""""""""""""""""
"		AIRLINE			     "
""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'murmur'


""""""""""""""""""""""""""""""""""""""""""""""
"		TREESITTER		     "
""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "c", "lua", "vim", "json", "html", "cpp", "bash" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF

