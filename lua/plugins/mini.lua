return {
  'echasnovski/mini.nvim',
  version = false,
  -- lazy = true,
  event = "InsertEnter",
  config = function()
    -- require('mini.statusline').setup()
    -- require('mini.starter').setup()
    -- require('mini.cursorword').setup()
    require('mini.jump2d').setup()
    -- require('mini.files').setup()
    -- require('mini.surround').setup()
    require('mini.pairs').setup()
    require('mini.ai').setup()
  end
}
