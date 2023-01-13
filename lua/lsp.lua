local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").sumneko_lua.setup {}
require("lspconfig").solargraph.setup {}
require("lspconfig").jsonls.setup {
  capabilities = capabilities,
  filetypes = { "json", "jsonc" },
}
