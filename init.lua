--[[

		Welcome to

 ▌ ▐·▪  • ▌ ▄ ·. ▄▄▄▄▄       ▄▄▄·▪   ▄▄▄· 
▪█·█▌██ ·██ ▐███▪•██  ▪     ▐█ ▄███ ▐█ ▀█ 
▐█▐█•▐█·▐█ ▌▐▌▐█· ▐█.▪ ▄█▀▄  ██▀·▐█·▄█▀▀█ 
 ███ ▐█▌██ ██▌▐█▌ ▐█▌·▐█▌.▐▌▐█▪·•▐█▌▐█ ▪▐▌
. ▀  ▀▀▀▀▀  █▪▀▀▀ ▀▀▀  ▀█▄▀▪.▀   ▀▀▀ ▀  ▀ 

	  (Zach's Neovim Config)

--]]

-- using "Neorocks" Package manager. Install automatically if not already;
require("config.install_rocks")
require("config.rocks")
require("config.options")
require("config.mapping")

require("lsp.lsp")
require("plugins.which_key")
require("plugins.alpha")
require("plugins.base16")
require("plugins.autopairs")

-- init lualine
require('lualine').setup()
