--[[

		  Welcome to

 ▌ ▐·▪  • ▌ ▄ ·. ▄▄▄▄▄       ▄▄▄·▪   ▄▄▄· 
▪█·█▌██ ·██ ▐███▪•██  ▪     ▐█ ▄███ ▐█ ▀█ 
▐█▐█•▐█·▐█ ▌▐▌▐█· ▐█.▪ ▄█▀▄  ██▀·▐█·▄█▀▀█ 
 ███ ▐█▌██ ██▌▐█▌ ▐█▌·▐█▌.▐▌▐█▪·•▐█▌▐█ ▪▐▌
. ▀  ▀▀▀▀▀  █▪▀▀▀ ▀▀▀  ▀█▄▀▪.▀   ▀▀▀ ▀  ▀ 

	             (Zach's Neovim Config)

]]

-- using "Neorocks" Package manager.
require("config.install_rocks")
require("config.rocks")
require("config.options")
require("config.mapping")
require("lsp.lspconfig")

require("plugins.neorg")
require('plugins.diagflow')
require("plugins.mini")
require("plugins.which_key")
require("plugins.alpha")
require("plugins.noice")
require("plugins.comfy")
require("plugins.colorizer")
