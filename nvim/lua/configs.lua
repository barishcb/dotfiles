-- ===================================================================
-- Customization
-- ===================================================================

----------------------------------------------------------------------
-- Neovim UI
----------------------------------------------------------------------
vim.opt.compatible = false                          -- vim, not vi
vim.opt.showcmd = true                              -- this shows what you are typing as a command.
vim.opt.autoindent = true                           -- who doesn't like autoindent?
vim.opt.syntax = 'on'                               -- activates syntax highlighting among other things
vim.opt.clipboard = "unnamedplus"                   -- copy/paste to system clipboard
vim.opt.mouse = "a"                                 -- enable mouse support in console
vim.opt.hidden = true                               -- enable background buffers
vim.opt.backspace = "indent,eol,start"              -- just hit backspace without this one and see for yourself
vim.opt.encoding = "UTF-8"                          -- default encoding
vim.opt.number = true                               -- show line numbers PWN!
vim.opt.relativenumber = true                       -- turn hybrid line numbers on
vim.opt.completeopt = "menu,menuone,noselect"       -- complete options

----------------------------------------------------------------------
-- Neovide configurations
----------------------------------------------------------------------
vim.g.neovide_refresh_rate = 140
vim.g.neovide_fullscreen = true
vim.g.neovide_cursor_vfx_mode = "torpedo"
vim.api.nvim_exec([[ set guifont=JetBrains\ Mono\ NL:h10 ]], false)

----------------------------------------------------------------------
-- Tabs, indent
-- Tabs and stuff, as I am mostly coding on Python and C++
----------------------------------------------------------------------
vim.opt.tabstop = 4                       -- 1 tab == 4 spaces
vim.opt.shiftwidth = 4                    -- shift 4 spaces when tab
vim.opt.softtabstop = 4
vim.opt.expandtab = true                  -- use spaces instead of tabs
vim.opt.smarttab = true                   -- autoindent new lines

----------------------------------------------------------------------
-- Search configurations
----------------------------------------------------------------------
vim.opt.incsearch = true                  -- incremental search
vim.opt.ignorecase = true                 -- search ignoring case
vim.opt.hlsearch = true                   -- highlight the search
vim.opt.showmatch = true                  -- show matching bracket

----------------------------------------------------------------------
-- Spell Check
----------------------------------------------------------------------
vim.opt.spelllang = { 'en_us' }           -- Use English for spellchecking
vim.opt.spell = false                     -- But don't spellcheck by default

----------------------------------------------------------------------
-- activates filetype detection
----------------------------------------------------------------------
vim.cmd [[ filetype on ]]                 -- Enable filetype detection
vim.cmd [[ filetype indent on ]]          -- Enable filetype-specific indenting
vim.cmd [[ filetype plugin on ]]          -- Enable filetype-specific plugins

----------------------------------------------------------------------
-- Setting up compiler
----------------------------------------------------------------------
-- vim.cmd [[ compiler = gcc ]]            -- Real men use gcc

----------------------------------------------------------------------
-- Setting up auto commands for the nvim
----------------------------------------------------------------------
-- Restore cursor position on buffer navigation
vim.cmd [[ autocmd BufEnter * silent! normal! g`" ]]

-- Trim white spaces before saving the file
vim.cmd [[ autocmd BufWritePre * :%s/\s\+$//e ]]

-- Automatically source init.vim on save
vim.cmd [[ autocmd! bufwritepost $MYVIMRC source $MYVIMRC ]]
