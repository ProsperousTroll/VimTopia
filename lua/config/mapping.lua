
-- File manager
vim.keymap.set('n', '<C-n>', function()
   require("snacks").explorer()
end)

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Focus left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Focus down window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Focus up window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Focus right window' })

vim.keymap.set('n', '<A-j>', ':bn<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<A-k>', ':bp<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })
vim.keymap.set('n', '<A-q>', ':bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })

require("toggleterm").setup{
  open_mapping = [[<A-h>]],  -- your toggle keybind
  direction = 'horizontal',      -- or 'vertical', 'float', 'tab'
}

