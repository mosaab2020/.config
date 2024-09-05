return {
  {
    "mosaab2020/custom-nord.nvim",
    name = "nord",
    priority = 1000,
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
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme "vscode"
    end
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme "onedark"
    end
  },
  {
    "mosaab2020/lackluster.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "lackluster"
    end
  }
}
