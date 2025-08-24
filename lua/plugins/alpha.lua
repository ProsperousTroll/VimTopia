local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- set VimTopia icon
dashboard.section.header.val = {
   " ▌ ▐·▪  • ▌ ▄ ·. ▄▄▄▄▄       ▄▄▄·▪   ▄▄▄· ",
   "▪█·█▌██ ·██ ▐███▪•██  ▪     ▐█ ▄███ ▐█ ▀█ ",
   "▐█▐█•▐█·▐█ ▌▐▌▐█· ▐█.▪ ▄█▀▄  ██▀·▐█·▄█▀▀█ ",
   " ███ ▐█▌██ ██▌▐█▌ ▐█▌·▐█▌.▐▌▐█▪·•▐█▌▐█ ▪▐▌",
   ". ▀  ▀▀▀▀▀  █▪▀▀▀ ▀▀▀  ▀█▄▀▪.▀   ▀▀▀ ▀  ▀ "
}

dashboard.section.footer.val = {
   "A NeoVim Distro by Zach D."
}

-- Menu
dashboard.section.buttons.val = {
    dashboard.button( "n", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
}

alpha.setup(dashboard.opts)

-- disable folding on alpha buffer because i want that i guess
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
