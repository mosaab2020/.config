return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    tag = '0.1.8',
    config = function()
      -- Telescope keymaps
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
      vim.keymap.set('n', '<leader>fh', builtin.highlights, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")

      -- Alternatively, using lua API
      vim.keymap.set("n", "<leader>fb", function()
        require("telescope").extensions.file_browser.file_browser()
      end)

      -- You don't need to set any of these options.
      -- IMPORTANT!: this is only a showcase of how you can set default options!
      require("telescope").setup {
        extensions = {
          file_browser = {
            theme = "dropdown",
            previewer = false,
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
          },
        },
      }
      require("telescope").load_extension "file_browser"
    end
  }

}
