-- load/configure zach themes
require("config.zachthemes")
require("mini.base16").setup({
   -- OPTIONS: Eris, NewGruvCity
   palette = NewGruvCity,
   use_cterm = true,
})

-- defaults are fine
require("mini.pairs").setup()
require("mini.statusline").setup()
require("mini.tabline").setup()
require("mini.completion").setup()
require("mini.snippets").setup()
require("mini.surround").setup()


-- need some configuring
require("mini.files").setup({
   options = {
      permanent_delete = false,
      use_as_default_explorer = true,
   },
   windows = {
      max_number = 1,
      width_focus = 25,
   }
})

require("mini.indentscope").setup({
   symbol = "│",
})

require("mini.animate").setup({
   cursor = {
      enable = false,
   },
})
