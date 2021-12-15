-- ===================================================================
-- Personal Keymaps
-- ===================================================================
local map = vim.api.nvim_set_keymap

-- Set the leader key before every thing else
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', vim.g.mapleader, '', {noremap = true})
vim.api.nvim_set_keymap('v', vim.g.mapleader, '', {noremap = true})

-- Assuming \ as the leader, \ev to edit $MYVIMRC and save and source \es
-- for sourcing the $MYVIMRC
map('n', '<leader>ev', ':e $MYVIMRC<CR>', {noremap = true})
map('n', '<leader>es', ':so $MYVIMRC<CR>', {noremap = true})

-- Create Blank Newlines and stay in Normal mode
map('n', 'zk', 'O<Esc>', {noremap = true, silent=true})             -- Empty line before
map('n', 'zj', 'o<Esc>', {noremap = true, silent=true})             -- Empty line after

-- Shotcuts to manipulate tabs
map('n', 'td', ':tabclose<CR>', {noremap = true, silent=true})
map('n', 'tm', ':tabmove<Space>', {noremap = true})
map('n', 'tt', ':tabedit<Space>', {noremap = true})

-- Shotcuts to switching tabs
map('n', 'th', ':bfirst<CR>', {noremap = true, silent=true})
map('n', 'tk', ':bnext<CR>', {noremap = true, silent=true})
map('n', 'tj', ':bprevious<CR>', {noremap = true, silent=true})
map('n', 'tl', ':blast<CR>', {noremap = true, silent=true})

-- Search mappings: These will make it so that going
-- to the next one in a search will center on
-- the line it's found in.
map('n', 'N', 'Nzz', {noremap = true, silent=true})
map('n', 'n', 'nzz', {noremap = true, silent=true})

-- Buffer Keymaps
map('n', '<leader>cf', ':bd<CR>', {noremap = true})

-- Sort Keymaps
map('v', '<F9>', ':sort<CR>', {noremap = true})

-- Toggle spellchecking
vim.api.nvim_exec([[
  function! ToggleSpellCheck()
    set spell!
    if &spell
      echo "Spellcheck ON"
    else
      echo "Spellcheck OFF"
    endif
  endfunction
]], false)
map('n', '<F6>', ':call ToggleSpellCheck()<CR>', {noremap = true, silent=true})
