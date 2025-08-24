local coq = require "coq"

vim.lsp.config("clang", coq.lsp_ensure_capabilities())
vim.lsp.enable("clang")
