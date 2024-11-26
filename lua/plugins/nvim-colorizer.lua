return {
  "NvChad/nvim-colorizer.lua",
  event = "UIEnter",
  -- lazy = true,
  config = function()
    require('colorizer').setup({
      DEFAULT_OPTIONS = {
        names = false, -- "Name" codes like Blue
      }
    })
  end
}
