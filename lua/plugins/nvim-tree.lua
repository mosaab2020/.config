return {
  'nvim-tree/nvim-tree.lua',
  vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true }),
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
        side = "right"
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end
}
