return {
  'nvim-lualine/lualine.nvim',
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
