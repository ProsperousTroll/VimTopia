-- Yeah
vim.g.mapleader = " "

-- GET FUCKED NEOVIM TUTORIAL BUTTON RIGHT NEXT TO ESCAPE THAT I HIT CONSTANTLY I FUCKING HATE YOU 
vim.keymap.set({ 'n', 'i', }, '<F1>', '<Nop>')

-- File manager
vim.keymap.set('n', '<leader>e', function()
   MiniFiles.open()
end, { desc = "File explorer" })

-- toggleterm
vim.keymap.set('t', '<Esc>', [[<C-\><C-N>]])
require("toggleterm").setup{
  size = 15,
  open_mapping = [[<leader>t]], -- Toggles a terminal window
  direction = 'horizontal', -- Makes it horizontal (could also be 'vertical', 'float', or 'tab')
  insert_mappings = false, -- Disable keybind in insert mode.
  terminal_mappings = false,
}

-- Important misc stuff
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Focus left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Focus down window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Focus up window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Focus right window' })

vim.keymap.set('n', '<A-j>', ':bn<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<A-k>', ':bp<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })
vim.keymap.set('n', '<A-q>', ':bd<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
vim.keymap.set('n', '<A-b>', ':enew<CR>', { noremap = true, silent = true, desc = 'New buffer' })

-- leader maps
vim.keymap.set('n', '<leader>f', ':Pick files<CR>', { noremap = true, silent = true, desc = 'Find files' })
vim.keymap.set('n', '<leader>h', ':Pick help<CR>', { noremap = true, silent = true, desc = 'Find help' })
vim.keymap.set('n', '<leader>q', ':bd!<CR>', { noremap = true, silent = true, desc = 'Force close buffer' })
vim.keymap.set('n', '<leader>n', ':enew<CR>', { noremap = true, silent = true, desc = 'New buffer' })
