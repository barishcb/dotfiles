-- fzf-vim configurations
local map = vim.api.nvim_set_keymap

vim.cmd [[ set grepprg=rg\ --vimgrep ]]

map('n', '<C-p>', ':Files<CR>', {noremap = true})
map('n', '<C-r>', ':BTags<CR>', {noremap = true})
map('n', '<leader>b', ':Buffers<CR>', {noremap = true})
map('n', '<leader>t', ':Tags<CR>', {noremap = true})
map('n', '<leader>rg', ':Rg<CR>', {noremap = true})
map('n', '<leader>/', ':BLines<CR>', {noremap = true})
map('n', '<leader>\'', ':Marks<CR>', {noremap = true})
-- map('n', '<leader>g', ':Commits<CR>', {noremap = true})
map('n', '<leader>H', ':Helptags<CR>', {noremap = true})
map('n', '<leader>hh', ':History<CR>', {noremap = true})
map('n', '<leader>h:', ':History:<CR>', {noremap = true})
map('n', '<leader>h/', ':History/<CR>', {noremap = true})
map('n', '<leader>w', ':Windows<CR>', {noremap = true})
