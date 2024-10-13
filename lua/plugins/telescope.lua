return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    tag = '0.1.8',
    config = function()
      -- Telescope keymaps
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
      vim.keymap.set('n', '<leader>fh', builtin.highlights, {})

      require("telescope").setup {
        extensions = {
          file_browser = {
            previewer = true,
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            hidden = true,
          },
        },
        defaults = {
          theme = "center",
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.45,
            },
            vertical = {
              mirror = false,
            },
            width = 0.67,
            height = 0.70,
          },
        },
      }
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    enabled = false,
    config = function()
      require("telescope").load_extension("ui-select")
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
    end
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
      require("telescope").load_extension "file_browser"

      -- Alternatively, using lua API
      -- vim.keymap.set("n", "<leader>fb", function()
      --   require("telescope").extensions.file_browser.file_browser({
      --     previewer = true,
      --     -- disables netrw and use telescope-file-browser in its place
      --     hijack_netrw = true,
      --     hidden = true,
      --   })
      -- end)

      -- You don't need to set any of these options.
      -- IMPORTANT!: this is only a showcase of how you can set default options!
      -- require("telescope").setup {}
      -- extensions = {
      --
      --   file_browser = {
      --     previewer = true,
      --     -- disables netrw and use telescope-file-browser in its place
      --     hijack_netrw = true,
      --     hidden = true,
      --   },
      -- },
    end
  }

}
