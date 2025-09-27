-- I've become what I hate most.

options = {
   clipboard = "unnamedplus",
   number = true,
   showmatch = true,
   smartindent = true,
   relativenumber = true,
   undofile = true,
   expandtab = true,
   showtabline = 2,
   shiftwidth = 3,
   tabstop = 2,
   guifont = "RobotoMono Nerd Font",
   termguicolors = true,
   scrolloff = 8,
   sidescrolloff = 8,
}

for i, v in pairs(options) do
   vim.opt[i] = v
end

