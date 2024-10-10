return {
  {
    "mosaab2020/lackluster.nvim",
    priority = 1000,
    dev = false,
    config = function()
      vim.cmd.colorscheme "lackluster"
      -- local lackluster = require("lackluster")
      -- require('nvim-web-devicons').setup({
      --   color_icons = true,
      --   override = {
      --     ["default_icon"] = {
      --       color = lackluster.color.lack,
      --       name = "Default",
      --     }
      --   }
      -- })
    end
  },
  {
    "mosaab2020/custom-nord.nvim",
    name = "nord",
    lazy = true,
    config = function()
      -- Nord theme config
      vim.g.nord_italic = false
      vim.g.nord_bold = false
      vim.g.nord_borders = true
      vim.g.nord_contrast = false
      vim.g.nord_disable_background = false

      -- require('nord').set()

      -- vim.cmd.colorscheme "nord"
    end
  },
  {
    "typicode/bg.nvim",
    lazy = false
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme "vscode"
    end
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme "onedark"
    end
  },
}
