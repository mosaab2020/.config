return {
  'echasnovski/mini.nvim',
  version = false,
  -- lazy = true,
  event = "InsertEnter",
  config = function()
    require('mini.jump2d').setup()
    require('mini.pairs').setup()
    require('mini.ai').setup()
  end
}
