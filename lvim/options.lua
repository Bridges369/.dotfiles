local options = {
  autoread = true,              -- read file when changed outside of viv
  autostart = true,
  background = "dark",          -- "dark" or "light", used for highlith colors
  backup = false,               -- create a backup file
	-- clipboard = "unnamedplus",    -- allows neovim to access the system clipboard
	cmdheight = 2,                -- more space in the neovim command line displaying messages
  cursorline = false,            -- highlight the current line
  encoding = "utf-8",
  expandtab = true,             -- convert tabs to spaces
  fileencoding = "utf-8",
  foldlevelstart = 99,           -- always expand lines
  hidden = true,                -- hides the current buffer when a new files is openned
  hlsearch = true,              -- highlight all matches on previous search patterns
  ignorecase = true,            -- ignore case in search patterns
  mouse = "a",
  number = true,                -- set number lines
  pumheight = 10,               -- pop-up menu height
  relativenumber = true,       -- set relative numbered lines
  scrolloff = 25,                -- minimum number of lines to keep above ande below the cursor
  shell = "pwsh",               -- define shell
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shiftwidth = 2,               -- size of identation
  showmode = true,              -- see things like INSERT
  showtabline = 2,              -- always show tabs
  signcolumn = "yes",           -- always show the sign column, otherwise it would shift the text each time
  smartcase = true,             -- smart case
	smarttab = true,
	smartindent = true,           -- make identing smarter again
  softtabstop = 2,              -- i dont know
  splitbelow = true,            -- force all horizontal splits to go below current window
  splitright = true,            -- force all vertical splits to go the right of current window
  swapfile = false,
  tabstop = 2,                  -- insert 2 spaces for a tab
  termguicolors = true,         -- termguicolors
  updatetime = 100,             -- Time in miliseconds to consider changes
  wrap = true,                  -- split lines
}
for k,v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append "c"

-- vim.cmd("autocmd BufRead,BufNewFile *.json set filetype=jsonc")
