package.path = os.getenv("USERPROFILE") .. "\\.dotfiles\\lua\\?.lua"

require "options"
require "keymaps"
require "packer"
require "lsp"
require "colorscheme"
require "display"
require "spell"
-- {{ LSP }}
-- require "lsp.handlers".setup()
require "lsp.mason"
-- require "lsp.null-ls"
-- require "lsp-installer"
-- {{ PLUGINS }}
require "plugins.airline"
require "plugins.telescope"
require "plugins.cmp"
require "plugins.colorizer"
require "plugins.autopairs"
require "plugins.comment"
require "plugins.git"
-- require "plugins.mcfunction"
require "plugins.nvim-tree"
require'nvim-tree'.setup()
require "plugins.treesitter"
