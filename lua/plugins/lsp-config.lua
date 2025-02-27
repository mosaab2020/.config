return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
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
      require("mason-lspconfig").setup()
      opts = {
        auto_install = true,
      }
      -- ensure_installed = { "lua_ls", "html", "cssls", "vuels" }
    end
  },
  {
    "neovim/nvim-lspconfig",
    -- event = "VeryLazy",
    event = { "BufReadPost", "BufNewFile", "BufReadPre" },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local on_attach = require('cmp_nvim_lsp').on_attach
      local util = require('lspconfig/util')

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
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
      lspconfig.eslint.setup({
        on_attach = on_attach,
        capabilities = capabilities
      })
      lspconfig.jsonls.setup({
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
      lspconfig.bashls.setup({
        on_attach = on_attach,
        capabilities = capabilities,

      })
      lspconfig.clangd.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      lspconfig.sqls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
      -- lspconfig.pyright.setup({
      --   single_file_support = true,
      --   settings = {
      --     python = {
      --       analysis = {
      --         typeCheckingMode = "off", -- Disable type checking
      --         diagnosticSeverityOverrides = {
      --           analyzeUnannotatedFunctions     = true,
      --           disableBytesTypePromotions      = true,
      --           strictParameterNoneValue        = true,
      --           enableTypeIgnoreComments        = true,
      --           enableReachabilityAnalysis      = false,
      --           strictListInference             = false,
      --           strictDictionaryInference       = false,
      --           strictSetInference              = false,
      --           deprecateTypingAliases          = false,
      --           enableExperimentalFeatures      = false,
      --           reportMissingTypeStubs          = "none",
      --           reportInvalidTypeForm           = "warning",
      --
      --           reportGeneralTypeIssues         = "none",
      --           reportUnusedImport              = "none",
      --           reportUnusedVariable            = "none",
      --           reportMissingImports            = "none",
      --           reportMissingModuleSource       = "none",
      --           reportUndefinedVariable         = "none",
      --           reportUnnecessaryIsInstance     = "none",
      --           reportUnboundVariable           = "none",
      --           reportUnknownArgument           = "none",
      --           reportUnknownAttribute          = "none",
      --           reportUnknownCallSignature      = "none",
      --           reportUnknownMagicVariable      = "none",
      --           reportUnknownMember             = "none",
      --           reportUnknownParameter          = "none",
      --           reportUnknownVariableType       = "none",
      --           reportUnnecessaryCast           = "none",
      --           reportUnnecessarySelf           = "none",
      --           reportUntypedClassDecorator     = "none",
      --           reportUntypedFunctionDecorator  = "none",
      --           reportUntypedLambda             = "none",
      --           reportUsedPriorImport           = "none",
      --           reportWildcardImportFromLibrary = "none",
      --         },
      --       },
      --     },
      --     on_attach = on_attach,
      --     capabilities = capabilities,
      --     filetypes = { "python" },
      --   }
      -- })
      -- lspconfig.ruff.setup({
      --   -- on_attach = on_attach,
      --   -- capabilities = capabilities,
      -- })
      lspconfig.pylsp.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })


      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
