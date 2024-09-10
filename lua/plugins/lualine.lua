return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = true,
  enabled = false,
  config = function()
    require("lualine").setup({
      options = {
        theme = 'auto',
      }
    })
  end
}
