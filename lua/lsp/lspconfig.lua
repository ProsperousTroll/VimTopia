--list of servers. feel free to add moar if u want

local servers = {
   'rust_analyzer',
   'lua_ls',
   'clangd',
   'pyright',
}

-- apply with lspconfig because the built-in lsp bullshit is annoying
for _, server in ipairs(servers) do
   require('lspconfig')[server].setup {}
   vim.lsp.enable(server)
end
