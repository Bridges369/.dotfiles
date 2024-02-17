local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").lua_ls.setup {}
require("lspconfig").solargraph.setup {}
require("lspconfig").jsonls.setup {
  capabilities = capabilities,
  filetypes = { "json", "jsonc" },
}

local group = vim.api.nvim_create_augroup("json_files", {clear = true})
-- JSON
vim.api.nvim_create_autocmd(
  { "BufEnter", "BufNew", "BufWinEnter" }, {
    group = "json_files",
    pattern = { "*.mcmeta", "*.json" },
    command = "set filetype=jsonc",
  })
