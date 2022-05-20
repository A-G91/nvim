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

""" Misc
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'

""" color scheme
Plug 'shaunsingh/nord.nvim'
call plug#end()

lua << EOF
    require('lsp-config')
    require('nvim-cmp-config')
    require('treesitter-config')
    require('telescope-config')
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


colorscheme nord

" Core
let mapleader=","

inoremap jj <ESC>

nnoremap <leader>ff <cmd>Telescope find_files<cr>


