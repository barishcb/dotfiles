-- setup mapping to call :LazyGit
local map = vim.api.nvim_set_keymap

map('n', '<leader>gg', ':LazyGit<CR>', {noremap = true, silent=true})