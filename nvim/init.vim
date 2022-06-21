"This file must be installed at ~/.config/nvim/init.vim"

"Plugins"
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lewis6991/gitsigns.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-surround'
Plug 'sindrets/diffview.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'phaazon/hop.nvim'
call plug#end()

"ViM Settings"
let mapleader=','
set nocompatible
syntax enable
colorscheme gruvbox
set showmode
set nowrap
set tabstop=4
set autoindent
set smarttab
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set copyindent
set number
set showmatch
set ignorecase
set hlsearch
set incsearch
set smartcase
set scrolloff=4
set sidescrolloff=5
set gdefault
set laststatus=2
set ruler
set wildmenu
set wildmode=list:longest,full
set title
set noerrorbells
set visualbell
set backspace=indent,eol,start
set confirm
set history=1000
set complete-=i
set hidden
set nofoldenable

"How to search the current file"
nnoremap <leader>/ <cmd>nohlsearch<cr>

"How to use code-folding"

"How to search your whole project"

"How to search and replace"

"Tabs-n'-spaces settings"

"How to use diff view plugin"

"How to use nerdcommenter plugin"

"How to use nvim tree plugin"

"How to use hop plugin"

"How to undo/redo"
nnoremap <leader>r <cmd>redo<cr>

"How to use telescope plugin"
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Plugin setup logic"
lua << END
require('lualine').setup {
    options = {
        theme = 'gruvbox'
    }
}
require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'typescript',
        'javascript',
        'tsx',
        'svelte',
        'vue',
        'scss',
        'rust',
        'prisma',
        'json',
        'go',
        'css'
    },
    highlight = {
        enabled = true
    }
}
require('indent_blankline').setup() 
require('gitsigns').setup()
require('nvim-autopairs').setup()
require('nvim-tree').setup()
require('hop').setup()
END
