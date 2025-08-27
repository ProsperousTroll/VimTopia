-- load zach themes
require("config.zachthemes")

require("mini.pairs").setup()
require("mini.indentscope").setup({
   symbol = "│",
})
require("mini.statusline").setup()
require("mini.tabline").setup()
require("mini.surround").setup()
require("mini.base16").setup({
   -- OPTIONS: Eris, NewGruvCity
   palette = NewGruvCity,
   use_cterm = true,
})

