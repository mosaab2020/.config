return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      auto_install = true,
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "html", "cssls", "vuels" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local on_attach = require('cmp_nvim_lsp').on_attach
      local util = require('lspconfig/util')

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,

      })
      lspconfig.tsserver.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        init_options = {
          preferences = {
            disableSuggestions = true,
          }
        }
      })
      lspconfig.html.setup({
        on_attach = on_attach,
        capabilities = capabilities
      })
      lspconfig.cssls.setup({
        on_attach = on_attach,
        capabilities = capabilities
      })
      lspconfig.vuels.setup({
        on_attach = on_attach,
        capabilities = capabilities
      })
      lspconfig.eslint.setup({
        on_attach = on_attach,
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        root_dir = util.root_pattern("go.work", "go.mod", ".git"),

      })
      -- lspconfig.rust_analyzer.setup({
      --   capabilities = capabilities,
      --   filetypes = {"rust"},
      --   settings = {
      --     ['rust_analyzer'] = {
      --       cargo = {
      --         allFeatures = true,
      --       },
      --     },
      --   },
      -- })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
