local k = vim.keymap

-- Move faster
k.set('n', '<C-h>', '<C-w>h', {})
k.set('n', '<C-j>', '<C-w>j', {})
k.set('n', '<C-k>', '<C-w>k', {})
k.set('n', '<C-l>', '<C-w>l', {})

-- Escape insert mode with jj
k.set('i', 'jj', '<Esc>', {})

-- Move in insert mode
k.set('i', '<C-h>', '<left>', { silent = false, noremap = true })
k.set('i', '<C-l>', '<right>', { silent = false, noremap = true })

-- Escape termainl mode with Escape
k.set('t', '<Esc>', '<C-\\><C-n>', { silent = true })

-- Disable search highlight
k.set('n', '<leader>/', ':noh<CR>', { silent = true })

-- Exec system command
k.set('n', '<leader>!', '<Esc>:! ', {})

-- Copy to system clipboard
k.set('v', '<leader>y', '"+y', { silent = true })

-- Delete without copying
k.set({ 'n', 'v' }, '<leader>d', '"_d', { noremap = true })

-- Vertical resize
k.set('n', '<leader>=', ':vertical resize +5<CR>', { silent = true })
k.set('n', '<leader>-', ':vertical resize -5<CR>', { silent = true })

-- Horizontal resize
k.set('n', '<leader>j', ':horizontal  resize +5<CR>', { silent = true })
k.set('n', '<leader>k', ':horizontal resize -5<CR>', { silent = true })

-- Tabs
k.set('n', '<Tab>', ':tabnext<CR>', { silent = true })
k.set('n', '<leader>t', ':tabnew<CR>', { silent = true })

-- Inspect
k.set('n', '<leader>i', ':Inspect<CR>', { silent = true })

-- Open config
k.set('n', '<leader>oc', ':e $MYVIMRC | :cd %:p:h | wincmd k | pwd<CR>', { silent = true })

-- Change directory of the parent file
k.set('n', '<leader>cd', ':cd %:h | wincmd k | pwd<CR>', { silent = true })

-- This opens a little floating window
vim.keymap.set('n', '<leader>oe', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

-- Spliting
k.set('n', '<leader>vs', ':vertical split<CR>', { silent = true })
k.set('n', '<leader>hs', ':horizontal split<CR>', { silent = true })

-- Disable autocomplete
k.set('n', '<leader>dc', ':lua require("cmp").setup.buffer { enabled = false }<CR>', {})

-- Require and setup a plugin
k.set('n', '<leader>rp', ':lua require("").setup()<left><left><left><left><left><left><left><left><left><left>')

-- Enable extra colorschemes
k.set('n', '<leader>ec', function()
  require("nord")
  require("onedark")
  require("vscode")
end, {})
