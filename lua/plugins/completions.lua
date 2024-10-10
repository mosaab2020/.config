return {
  -- {
  --   "hrsh7th/cmp-nvim-lsp",
  -- },
  {
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "VeryLazy",
    dependencies = {
      {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        build = "make install_jsregexp",
        dependencies = {
          'saadparwaiz1/cmp_luasnip',
          'rafamadriz/friendly-snippets',
        }
      },
      { "hrsh7th/cmp-nvim-lsp", lazy = true },
      { "hrsh7th/cmp-buffer",   lazy = true },
    },
    config = function()
      -- Set up nvim-cmp.
      local cmp = require 'cmp'
      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
        snippet = {
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body)     -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          end,
        },
        -- window = {
        -- max_width = 20,     -- Set the maximum width here
        -- completion = cmp.config.window.bordered(),
        -- completion = {
        --   border = "single",
        --   winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,SemanticFloatBorder:Pmenu,Search:None",
        -- },
        -- documentation = cmp.config.window.bordered(),
        -- },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
        })
      })
    end,
  }
}
