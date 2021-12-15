-- ===================================================================
-- Vim-Plug configurations
-- ===================================================================
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')
-- General edit plugins
Plug('tpope/vim-surround')

-- Setup lualine for vim
Plug('glepnir/dashboard-nvim')
Plug('nvim-lualine/lualine.nvim')

-- Installing color schemes and icons for vim
Plug('dracula/vim', { as = 'dracula' })
Plug('olimorris/onedarkpro.nvim')
Plug('sainnhe/gruvbox-material')

-- Icons plugins
Plug('ryanoasis/vim-devicons')
Plug('kyazdani42/nvim-web-devicons')

-- tree-sitter for better code highlighting
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-treesitter/nvim-treesitter-refactor')

-- Language supports
Plug('sheerun/vim-polyglot')
Plug('scrooloose/syntastic')

-- Dim paragraphs above and below the active paragraph.
Plug('junegunn/limelight.vim')

-- Installing FZF
Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end
})
Plug('junegunn/fzf.vim')

-- Lens.vim(animated focus and resize)
Plug('camspiers/animate.vim')
Plug('camspiers/lens.vim')

-- Markdown plugins
Plug('tpope/vim-markdown')
Plug('iamcco/markdown-preview.nvim')
Plug('godlygeek/tabular')

-- GIT plugins
Plug('tpope/vim-fugitive')
Plug('airblade/vim-gitgutter')
Plug('kdheepak/lazygit.nvim')

-- Comment plugins
Plug('b3nj5m1n/kommentary')

-- Nvim Tree configs
Plug('kyazdani42/nvim-tree.lua')

-- Telescope Configurations
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-lua/popup.nvim')
Plug('sudormrfbin/cheatsheet.nvim')

-- Language Server Protocol (LSP)
Plug('glepnir/lspsaga.nvim')
Plug('neovim/nvim-lspconfig')
Plug('onsails/lspkind-nvim')
Plug('williamboman/nvim-lsp-installer')

-- Auto Completion (nvim-cmp)
Plug('hrsh7th/nvim-cmp')
Plug('f3fora/cmp-spell')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-nvim-lua')
Plug('hrsh7th/cmp-path')
Plug('quangnguyen30192/cmp-nvim-ultisnips')

-- UtilsSnips Engine
Plug('SirVer/ultisnips')
Plug('honza/vim-snippets')

-- Node.js development environment for neovim
Plug('jiangmiao/auto-pairs')			-- this will auto close ( [ {
Plug('prettier/vim-prettier')

-- These two plugins will add highlighting and indenting to JSX and TSX files.
Plug('HerringtonDarkholme/yats.vim')
Plug('maxmellon/vim-jsx-pretty')
vim.call('plug#end')

-- ===================================================================
-- Plugins configurations
-- ===================================================================
require('plugins/dashboard')
require('plugins/fzf')
require('plugins/kommentary')
require('plugins/lazygit')
require('plugins/lens')
require('plugins/lspsaga')
require('plugins/lualine')
require('plugins/markdown-preview')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-tree')
require('plugins/nvim-treesitter')
require('plugins/ultisnips')
