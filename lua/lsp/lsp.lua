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


-- it shouldn't've taken me a week to figure this out.

-- add whatever server you want to this table.
servers = {
   'clangd',
   'rust-analyzer',
}

for k, v in pairs(servers) do
   vim.lsp.config(v, coq.lsp_ensure_capabilities())
   vim.lsp.enable(v)
end
















