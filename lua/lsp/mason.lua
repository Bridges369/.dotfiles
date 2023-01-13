local settings = {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  },
  log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

local servers = {
	"pyright",
	"jsonls",
  "solargraph",
  "rust_analyzer",
  "lua_language_server",
  "sumneko_lua",
--[[
"masksman",
"taplo",
"cssls",
"crystalline",
"elixirls",
"html",
"tsserver",
"ltex",
"viml"
--]]
}

require("mason").setup(settings)
require("mason-lspconfig").setup {
  ensure_instaled = servers,
  automatic_instalation = true,
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}
--[[
for _, server in pairs(servers) do
	opts = {
		on_attach = require("lsp.handlers").on_attach,
		capabilities = require("lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
--]]
