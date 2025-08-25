local coq = require("coq")

require('lspconfig').clangd.setup({
   capabilities = coq.lsp_ensure_capabilities()
})

-- don't ask me why this is in a different folder. I don't know. Sorry. 
