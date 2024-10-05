return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    enabled = false,
  },
  {
    "MunifTanjim/nui.nvim",
  },
  {
    "nvimdev/indentmini.nvim",
    config = function()
      require("indentmini").setup() -- use default config
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require('nvim-ts-autotag').setup({})
    end
  },
}
