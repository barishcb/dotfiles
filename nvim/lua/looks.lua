-- ===================================================================
-- Look and feel
-- ===================================================================

-- Important!!
vim.opt.termguicolors = true

-- Setting Dracula color scheme
vim.cmd('colorscheme dracula')
vim.api.nvim_exec([[
  augroup DraculaOverrides
    autocmd!
    autocmd ColorScheme dracula highlight DraculaBoundary guibg=none
    autocmd ColorScheme dracula highlight DraculaDiffDelete ctermbg=none guibg=none
    autocmd ColorScheme dracula highlight DraculaComment cterm=italic gui=italic
    autocmd User PlugLoaded ++nested colorscheme dracula
  augroup end
]], false)