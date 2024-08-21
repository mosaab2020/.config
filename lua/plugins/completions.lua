return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    }
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      -- Set up nvim-cmp.
      local cmp = require 'cmp'
      require("luasnip.loaders.from_vscode").lazy_load()

      -- vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#2E3440" })
      cmp.setup({
        snippet = {
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body)     -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          end,
        },
        window = {
          --completion = cmp.config.window.bordered({
          -- winhighlight = "Normal:Normal,FloatBorder:BorderBG,Search:None",
          -- winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",

          --}),
          -- completion = {
          --   border = "single",
          --   winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,SemanticFloatBorder:Pmenu,Search:None",
          -- },
          -- documentation = cmp.config.window.bordered({
          --   winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
          -- }),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        -- formatting = {
        --   format = function(entry, vim_item)
        --     vim_item.abbr = string.sub(vim_item.abbr, 6, 20)
        --     return vim_item
        --   end
        -- },
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
