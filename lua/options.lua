local options = {
  -- system
  updatetime = 100,             -- Time in miliseconds to consider changes
	clipboard = "unnamedplus",    -- allows neovim to access the system clipboard
  -- sizes
	cmdheight = 2,                -- more space in the neovim command line displaying messages
  tabstop = 2,                  -- insert 2 spaces for a tab
	softtabstop = 2,              -- i dont know
	shiftwidth = 2,               -- size of identation
  -- encoding
	encoding = "utf-8",
	fileencoding = "utf-8",
  -- files
  backup = false,               -- create a backup file
  ---- swapfiles = true         -- creates a swapfile
  -- search patterns
  hlsearch = true,              -- highlight all matches on previous search patterns
  ignorecase = true,            -- ignore case in search patterns
  smartcase = true,             -- smart case
  -- navigation
  mouse = "a",
  scrolloff = 9,                -- minimum number of lines to keep above ande below the cursor
  -- display
  wrap = true,                  -- split lines
  foldlevelstart = 99,           -- always expand lines
  number = true,                -- set number lines
  relativenumber = false,       -- set relative numbered lines
  signcolumn = "yes",           -- always show the sign column, otherwise it would shift the text each time
  cursorline = true,            -- highlight the current line
  pumheight = 10,               -- pop-up menu height
  showmode = true,              -- see things like INSERT
  showtabline = 2,              -- always show tabs
  splitbelow = true,            -- force all horizontal splits to go below current window
  splitright = true,            -- force all vertical splits to go the right of current window
  hidden = true,                -- hides the current buffer when a new files is openned
  termguicolors = true,         -- termguicolors
	-- tabulation and identation
	expandtab = true,             -- convert tabs to spaces
	smarttab = true,
	smartindent = true,           -- make identing smarter again
  swapfile = false,
}
for k,v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append "c"

vim.cmd("autocmd BufRead,BufNewFile *.json set filetype=jsonc")
