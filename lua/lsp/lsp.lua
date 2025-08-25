local coq = require("coq")
local lspconfig = require('lspconfig')

lspconfig.clangd.setup({
   capabilities = coq.lsp_ensure_capabilities()
})

lspconfig.marksman.setup({
   capabilities = coq.lsp_ensure_capabilities()
})

-- don't ask me why this is in a different folder. I don't know. Sorry. 
