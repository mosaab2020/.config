local k = vim.keymap

-- Move faster
k.set('n', '<C-h>', '<C-w>h', {})
k.set('n', '<C-j>', '<C-w>j', {})
k.set('n', '<C-k>', '<C-w>k', {})
k.set('n', '<C-l>', '<C-w>l', {})

-- Escape insert mode with jj
k.set('i', 'jj', '<Esc>', {})

-- Escape termainl mode with Escape
k.set('t', '<Esc>', "<C-\\><C-n>", { silent = true })
k.set('t', 'jj', "<C-\\><C-n>", { silent = true })

-- Disable search highlight
k.set('n', '<leader>/', ':noh<CR>', { silent = true })

-- Tabs
k.set('n', '<Tab>', ':tabnext<CR>', { silent = true })
k.set('n', '<leader>t', ':tabnew<CR>', { silent = true })

-- Inspect
k.set('n', '<leader>i', ':Inspect<CR>', { silent = true })

-- Open config
k.set('n', '<leader>c', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>', { silent = true })

-- Spliting
k.set('n', '<leader>vs', ':vertical split<CR>', { silent = true })
k.set('n', '<leader>hs', ':horizontal split<CR>', { silent = true })

-- Enable extra colorschemes
k.set('n', '<leader>ec', function()
  require("nord")
  require("nordic")
  require("catppuccin")
  require("monochrome")
  require("neon")
  require("one-nvim")
end, {})
