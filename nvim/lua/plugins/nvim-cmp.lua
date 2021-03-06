local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({

  snippet = {
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body)         -- For `vsnip` user.
      -- require('luasnip').lsp_expand(args.body)     -- For `luasnip` user.
      vim.fn["UltiSnips#Anon"](args.body)          -- For `ultisnips` user.
    end,
  },

    formatting = {
      format = lspkind.cmp_format {
        -- enables text annotations
        -- default: true
        with_text = true,

        -- default symbol map
        -- can be either 'default' (requires nerd-fonts font) or
        -- 'codicons' for codicon preset (requires vscode-codicons font)
        -- default: 'default'
        preset = 'default',

        menu = {
            buffer    = "[BUFFER]",
            nvim_lsp  = "[LSP]",
            ultisnips = "[ULTISNIPS]",
            spell     = "[SPELL]",
            path      = "[PATH]",
        },

        -- override preset symbols
        -- default: {}
        symbol_map = {
          Text = "",
          Method = "",
          Function = "",
          Constructor = "",
          Field = "ﰠ",
          Variable = "",
          Class = "ﴯ",
          Interface = "",
          Module = "",
          Property = "ﰠ",
          Unit = "塞",
          Value = "",
          Enum = "",
          Keyword = "",
          Snippet = "",
          Color = "",
          File = "",
          Reference = "",
          Folder = "",
          EnumMember = "",
          Constant = "",
          Struct = "פּ",
          Event = "",
          Operator = "",
          TypeParameter = ""
        },
      },
    },

  mapping = {
    ['<C-j>'] = cmp.mapping.select_next_item(
      { behavior = cmp.SelectBehavior.Select }
    ),
    ['<C-k>'] = cmp.mapping.select_prev_item(
      { behavior = cmp.SelectBehavior.Select }
    ),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    })
  },

  sources = {
    -- { name = 'vsnip' },      -- For vsnip user
    -- { name = 'luasnip' },    -- For luasnip user
    { name = 'ultisnips' },  -- For ultisnips user

    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'path' },

    { name = 'spell', keyword_length = 4 },
    { name = "buffer" , keyword_length = 5},
  },

  experimental = {
    ghost_text = true
  }
})
