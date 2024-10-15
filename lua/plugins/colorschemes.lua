return {
  {
    "mosaab2020/lackluster.nvim",
    priority = 1000,
    dev = false,
    dependencies = {
      "nvim-web-devicons",
    },
    config = function()
      vim.cmd.colorscheme "lackluster"

      -- nvim-web-devicons does not play well with colorschemes so if lackluster style icons
      -- run the following setup before you load lackluster.
      local lackluster = require("lackluster")
      -- !must called setup() before setting the colorscheme!
      require('nvim-web-devicons').setup({
        color_icons = false,
        override = {
          ["default_icon"] = {
            icon = "",
            color = lackluster.color.gray4,
            name = "Default",
          },
        },
      })
      vim.cmd.colorscheme("lackluster")
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
