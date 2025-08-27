local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local ASCII = {
"                              ______                              ", 
"                          .%#$$$$$$$$#%.                          ",
"                       =#$$^` _...._ `^$$#=                       ",
"                    .#$$` .=@$$$$$$$$@=. `$$#.                    ",
"                   #$$`.#@@@@@@@@@@@@@@@@#.`$$#                   ",
"                  #$$ ;#@@==**^^^^^^**====#; $$#                  ",
"                .#$$= @=.==#@@@$$$$@@@#==.=@ =$$#.                ",   
"              =#$$^`.=#@@@@@@@@@@@@@@@@@@@@#=.`^$$#=              ",  
"            =#$$`.*@@@@@@@@@@@@@@@@@@@@@@@@@@@@*.`$$#=            ",   
"          =#$$`.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.`$$#=          ",    
"        ;#$$*.#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#.*$$#;        ",
"       #$$; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ;$$#       ",
"      ;$$^ $@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$ ^$$;      ",
"      #$$ $@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$ $$#      ",   
"      #$$ @@@@@@*`$@@@@@@@@@@@@@@@@@@@@@@@@@@@@$`*@@@@@@ $$#      ",
"      #$$ @@@@@@@@=.*@@@@@@@@@`@@@@`@@@@@@@@@*.=@@@@@@@@ $$#      ",
"      #$$ @@@@@@@@@%  $`*%@@@@@ @@ @@@@@%*`$  %@@@@@@@@@ $$#      ",
"      #$$ @@@@@@@@@@@.`^*^` =`@ @@ @`= `^*^`.@@@@@@@@@@@ $$#      ",
"   _.#$$$ ;@@@@@@@@@@@$@==-  =@=  =@=  -==@$@@@@@@@@@@@; $$$#._   ",
" .-=@$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$@=-. ", 
"|                                     .                          |",
"|        .    ▌ ▐·▪  • ▌ ▄ ·. ▄▄▄▄▄       ▄▄▄·▪   ▄▄▄·           |",                    
"|            ▪█·█▌██ ·██ ▐███▪•██  ▪     ▐█ ▄███ ▐█ ▀█ .         |",
"|            ▐█▐█•▐█·▐█ ▌▐▌▐█· ▐█.▪ ▄█▀▄  ██▀·▐█·▄█▀▀█           |",
"|             ███ ▐█▌██ ██▌▐█▌ ▐█▌·▐█▌.▐▌▐█▪·•▐█▌▐█ ▪▐▌          |",
"|            . ▀  ▀▀▀▀▀  █▪▀▀▀ ▀▀▀  ▀█▄▀▪.▀   ▀▀▀ ▀  ▀           |", 
"|                                               .                |",
" `-=@$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$@=-` ", 

}


-- set VimTopia icon
--dashboard.section.header.val = {
--   " ▌ ▐·▪  • ▌ ▄ ·. ▄▄▄▄▄       ▄▄▄·▪   ▄▄▄· ",
--   "▪█·█▌██ ·██ ▐███▪•██  ▪     ▐█ ▄███ ▐█ ▀█ ",
--   "▐█▐█•▐█·▐█ ▌▐▌▐█· ▐█.▪ ▄█▀▄  ██▀·▐█·▄█▀▀█ ",
--   " ███ ▐█▌██ ██▌▐█▌ ▐█▌·▐█▌.▐▌▐█▪·•▐█▌▐█ ▪▐▌",
--   ". ▀  ▀▀▀▀▀  █▪▀▀▀ ▀▀▀  ▀█▄▀▪.▀   ▀▀▀ ▀  ▀ "
--}

dashboard.section.header.val = ASCII
dashboard.section.footer.val = "A Neovim distro by Zach D."

-- Menu
dashboard.section.buttons.val = {
    dashboard.button( "n", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "󰈆  > Quit" , ":q<CR>")
}

alpha.setup(dashboard.opts)



-- disable folding on alpha buffer because i want that i guess
-- I read what this did in the alpha repo and got mad because it sounded pretentious...
-- but it turns out i absolutely want to disable folding on alpha. LOL.
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "alpha",
  callback = function()
    vim.wo.statuscolumn = "" -- Disables cozy numbers from showing up in the dashboard
  end,
})
