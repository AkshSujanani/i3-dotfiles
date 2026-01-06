""""""""""""""""""""""""""""""""""""""""""""""
"		PLUGINS			     "
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'	"Keymappings prebuild
Plug 'ryanoasis/vim-devicons'
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
set scrolloff=999
set encoding=UTF-8


""""""""""""""""""""""""""""""""""""""""""""""
"		AIRLINE			     "
""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'murmur'
hi CocFloating ctermbg=black  "Floating menu bg color
hi CocMenuSel ctermbg=darkgrey       "Menu selection bg color
hi CocSearch ctermfg=blue        "Text color of the matching text

""""""""""""""""""""""""""""""""""""""""""""""
"		NERDTREE		     "
""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
