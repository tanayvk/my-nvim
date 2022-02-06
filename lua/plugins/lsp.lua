local lspconfig = require('lspconfig')
local lsp_status = require('lsp-status')
lspconfig.tsserver.setup({
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities
})
