-- TODO // Configure snacks
snacks = require("snacks")


snacks.setup({
   explorer = { 
      enabled = true,
      replace_netrw = true,
   },
   animate = {
      enabled = true,
      duration = { step = 15, total = 250 },
   },
   scroll = {
      enabled = true,
   }
})

