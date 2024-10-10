return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      source = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.htmlbeautifier,
        null_ls.builtins.formatting.mdformat,
        require("none-ls.diagnostics.eslint_d"),
      }
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    vim.keymap.set('n', '<leader>w', function()
      -- Format the current buffer using LSP
      -- Save the current file
      vim.lsp.buf.format()
      vim.cmd('write')
    end, { noremap = true, silent = true })
  end
}
