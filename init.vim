call plug#begin()

""" LSP (requires a server to be installed)
Plug 'neovim/nvim-lspconfig'

""" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

""" Language interpreter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

""" File search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

""" lualine
Plug 'nvim-lualine/lualine.nvim'

""" Matching brackets
Plug 'windwp/nvim-autopairs'

""" Misc
Plug 'tpope/vim-fugitive'

""" color scheme
Plug 'arcticicestudio/nord-vim'
call plug#end()

lua << EOF
    require('lsp-config')
    require('nvim-cmp-config')
    require('treesitter-config')
    require('telescope-config')
    require('autopair-config')
    require('lualine-config')
EOF

""" Main Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set wrap breakindent
set encoding=utf-8
set hidden
set number relativenumber
set title
set noswapfile
set numberwidth=4

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" open splits intuitively
set splitbelow
set splitright

" Enable mouse support
set mouse=a

colorscheme nord

" Better colors
set termguicolors

" Core
let mapleader=","
inoremap jj <ESC>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

" split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Go commands
command Grun !go run %
command Gruns !go run *.go
