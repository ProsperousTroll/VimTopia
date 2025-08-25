local coq = require("coq")

coq{
   auto_start = 'shut-up',
   clients = {
      lsp = {
         enabled = true,
         name = 'coq',
      },
   },
}

require("lspconfig").coq_lsp.setup{}

require("lspconfig").clangd.setup({
   capabilities = coq.lsp_ensure_capabilities()
})
vim.lsp.enable("clangd")


--[[
lspconfig.clangd.setup({
   capabilities = coq.lsp_ensure_capabilities()
})

lspconfig.marksman.setup({
   capabilities = coq.lsp_ensure_capabilities()
})
]]


-- don't ask me why this is in a different folder. I don't know. Sorry. 
