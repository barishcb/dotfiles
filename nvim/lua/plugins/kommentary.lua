----------------------------------------------------------------------
-- Plugin Configurations
----------------------------------------------------------------------
require('kommentary.config').configure_language("default", {
    use_consistent_indentation = true,
    ignore_whitespace = true,
})
require('kommentary.config').use_extended_mappings()

----------------------------------------------------------------------
-- Keymaps
----------------------------------------------------------------------
local map = vim.api.nvim_set_keymap

map("n", "gcc", "<Plug>kommentary_line_default", {})
map("n", "gc", "<Plug>kommentary_motion_default", {})
map("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})

