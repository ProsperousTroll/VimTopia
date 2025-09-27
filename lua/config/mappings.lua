vim.g.mapleader = " "

-- disable tutorial keybind
vim.keymap.set('n', '<F1>', '<Nop>')
vim.keymap.set('i', '<F1>', '<Nop>')

-- enable normal mode access in terminal
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], {noremap = true, silent = true })

-- mini files
vim.keymap.set('n', '<leader>e', function()
   MiniFiles.open()  
end, { desc = "Mini Files" })


-- Important misc stuff
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Focus left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Focus down window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Focus up window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Focus right window' })

vim.keymap.set('n', '<A-j>', ':bn<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<A-k>', ':bp<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })
vim.keymap.set('n', '<A-q>', ':bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
vim.keymap.set('n', '<A-b>', ':enew<CR>', { noremap = true, silent = true, desc = 'New buffer' })

-- leader maps for buffer stuff too just cuz i want to choose...
vim.keymap.set('n', '<leader>q', ':bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
vim.keymap.set('n', '<leader>n', ':enew<CR>', { noremap = true, silent = true, desc = 'New buffer' })
