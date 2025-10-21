vim.o.clipboard = "unnamedplus"
vim.o.number = true
vim.o.showmatch = true
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.relativenumber = true
vim.o.undofile = true
vim.o.expandtab = true
vim.o.showtabline = 2
vim.o.shiftwidth = 3
vim.o.tabstop = 2
vim.o.guifont = "Roboto Mono"
vim.o.termguicolors = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.wrap = false

-- set background transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- to all morons who added a for loop in your options.lua script. i hate you. you saved maybe 5 seconds of time total and added 3 extra lines you didn't need. TPD. TPD. TPD. TPD. TPD.
