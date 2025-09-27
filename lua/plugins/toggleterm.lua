require("toggleterm").setup{
   size = 20,
   open_mapping = [[<leader>t]], -- Toggles a terminal window
   direction = 'horizontal', -- Makes it horizontal (could also be 'vertical', 'float', or 'tab')
   insert_mappings = false, -- This should've been on by default burh. Disable keybind in insert mode.
}
