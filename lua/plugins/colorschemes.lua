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
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    "kdheepak/monochrome.nvim",
    priority = 1000,
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme "monochrome"
    end
  },
  {
    "rafamadriz/neon",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.neon_style = "dark"
      vim.g.neon_italic_keyword = false
      vim.g.neon_italic_function = false
      vim.g.neon_transparent = false

      -- vim.cmd.colorscheme "neon"
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
    'AlexvZyl/nordic.nvim',
    priority = 1000,
    lazy = true,
    config = function()
      -- require 'nordic'.load()
    end
  },
  {
    "Th3Whit3Wolf/one-nvim",
    lazy = true,
    config = function()
      -- vim.cmd.colorscheme "one-nvim"
    end
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    name = "onedarkpro",
    config = function()
      -- vim.cmd.colorscheme "onedark"
    end
  },
  {
    "slugbyte/lackluster.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "lackluster"
    end
  },
}
