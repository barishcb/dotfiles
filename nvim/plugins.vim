" ===================================================================
" Vundle configurations
" ===================================================================

call plug#begin('~/.nvim/plugged')

" Setup airline for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Installing color schemes for vim
Plug 'liuchengxu/space-vim-dark'
Plug 'phanviet/vim-monokai-pro'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'martinsione/darkplus.nvim'
Plug 'mortepau/codicons.nvim'
Plug 'Mofiqul/vscode.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Icons plugins
Plug 'ryanoasis/vim-devicons'

" treesetter for better code highliting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Language supports
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'

" Installing FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Markdown plugins
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'

" GIT plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.nvim'

" requires
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" ==================================================================
" Cheetsheet.nvim
" ==================================================================
Plug 'sudormrfbin/cheatsheet.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" ==================================================================
" LSP
" ==================================================================
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'

" ==================================================================
" Auto Completion
" ==================================================================
" Autovompletion based on nvim-cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'f3fora/cmp-spell'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'glepnir/lspsaga.nvim'

" ==================================================================
" Python development environment
" ==================================================================
" UtilsSnips Engine
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" ==================================================================
" Node.js development environment for neovim
" ==================================================================
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
Plug 'prettier/vim-prettier'

" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" All of your Plugins must be added before the following line
call plug#end()

