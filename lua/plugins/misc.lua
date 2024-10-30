return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    enabled = false,
  },
  {
    "MunifTanjim/nui.nvim",
    enabled = false,
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
    ft = "html",
    config = function()
      require('nvim-ts-autotag').setup({})
    end
  },
}
