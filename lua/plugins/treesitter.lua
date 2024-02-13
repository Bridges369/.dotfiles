-- vim.opt.foldmethod     = 'expr'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})
---ENDWORKAROUND

require("nvim-treesitter.configs").setup {
  -- A list of parser names, or "all"
  ensure_installed = "all", -- { "ruby", "rust", "lua", "html", "css", "python", "vim" },
  sync_install = true,
  auto_install = true,
  indent = { enable = true },
  -- List of parsers to ignore installing (for "all")
  ignore_install = { "" }, -- { "javascript" },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { "jsx", "cpp" },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
    strategy = require 'ts-rainbow.strategy.global',
    -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    extended_mode = true,
    -- Do not enable for files with more than n lines, int
    max_file_lines = nil,
  },
}

-- {{ TSRainbow }}
vim.cmd [[
  highlight default TSRainbowCyan     guifg=#BF616A ctermfg=Red
  highlight default TSRainbowViolet  guifg=#D08770 ctermfg=White
  highlight default TSRainbowYellow  guifg=#EBCB8B ctermfg=Yellow
  highlight default TSRainbowGreen   guifg=#A3BE8C ctermfg=Green
  highlight default TSRainbowOrange   guifg=#88C0D0 ctermfg=Cyan
  highlight default TSRainbowRed    guifg=#5E81AC ctermfg=Blue
  highlight default TSRainbowBlue  guifg=#B48EAD ctermfg=Magenta
]]
