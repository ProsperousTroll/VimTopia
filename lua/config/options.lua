vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.expandtab = true
vim.opt.showtabline = 2
vim.opt.shiftwidth = 3
vim.opt.tabstop = 2
vim.opt.guifont = "RobotoMono:h16"
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- set background transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- to all morons who added a for loop in your options.lua script. i hate you. you saved maybe 5 seconds of time total and added 3 extra lines you didn't need. TPD. TPD. TPD. TPD. TPD.
