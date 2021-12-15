----------------------------------------------------------------------
-- Plugin Configurations (Default)
----------------------------------------------------------------------

vim.g.nvim_tree_icon_padding = '  '
vim.g.nvim_tree_git_hl = 1                    -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_highlight_opened_files = 1    -- 0 by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_disable_window_picker = 1     -- 0 by default, will disable the window picker.

vim.g.nvim_tree_show_icons = { git = 1, folders = 1, files = 1, folder_arrows = 1 }
vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  }
}

require'nvim-tree'.setup {
  disable_netrw = true,     -- disables netrw completely
  hijack_netrw = true,      -- hijack netrw window on startup
  open_on_setup = false,      -- open the tree when running this setup function
  ignore_ft_on_setup = {},      -- will not open on setup if the filetype is in this list
  auto_close = false,     -- closes neovim automatically when the tree is the last **WINDOW** in the view
  open_on_tab = false,      -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  -- hijacks new directory buffers when they are opened.
  update_to_buf_dir = {
    enable = true,          -- enable the feature
    auto_open = true,       -- allow to open the tree if it was previously closed
  },
  hijack_cursor = false,    -- hijack the cursor in the tree to put it at the start of the filename
  update_cwd = false,       -- updates the root directory of the tree on `DirChanged` (when you run `:cd` usually)
  -- show lsp diagnostics in the signcolumn
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    enable = false,       -- enables the feature
    -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
    -- only relevant when `update_focused_file.enable` is true
    update_cwd = false,
    -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
    -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
    ignore_list = {}
  },
  -- configuration options for the system open command (`s` in the tree by default)
  system_open = {
    cmd = nil,      -- the command to run this, leaving nil should work in most cases
    args = {}       -- the command arguments as a list
  },
  view = {
    width = 30,     -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
    height = 30,    -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
    hide_root_folder = false,   -- Hide the root path of the current folder on top of the tree
    side = 'left',    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    auto_resize = false,    -- if true the tree will resize itself after opening a file
    mappings = {
      -- custom only false will merge the list with the default mappings
      -- if true, it will only use your list to set the mappings
      custom_only = false,
      -- list of mappings to set on the tree manually
      list = {}
    }
  }
}

----------------------------------------------------------------------
-- Keymaps
----------------------------------------------------------------------
local map = vim.api.nvim_set_keymap

-- NvimTreeOpen, NvimTreeClose, NvimTreeFocus,
-- NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them
map('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true})
map('n', '<leader>nf', ':NvimTreeFindFile<CR>', {noremap = true})
