local map = vim.api.nvim_set_keymap

vim.g.dashboard_default_executive = 'telescope'

vim.api.nvim_exec([[ autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2 ]], false)

map('n', '<Leader>ss', ':<C-u>SessionSave<CR>', {})
map('n', '<Leader>sl', ':<C-u>SessionLoad<CR>', {})
map('n', '<Leader>fh', ':DashboardFindHistory<CR>', {noremap = true, silent=true})
map('n', '<Leader>ff', ':DashboardFindFile<CR>', {noremap = true, silent=true})
map('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', {noremap = true, silent=true})
map('n', '<Leader>fa', ':DashboardFindWord<CR>', {noremap = true, silent=true})
map('n', '<Leader>fb', ':DashboardJumpMark<CR>', {noremap = true, silent=true})
map('n', '<Leader>cn', ':DashboardNewFile<CR>', {noremap = true, silent=true})