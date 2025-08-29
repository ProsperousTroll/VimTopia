require("neorg").setup({
   load = {
      ["core.defaults"] = {},
   }
})

require("nvim-treesitter.configs").setup({

   ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
   auto_install = true,
   sync_install = false,

   highlight = {
      enable = true,
   },
})
