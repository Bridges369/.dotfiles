local colorscheme = "nord"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return "colorscheme erro"
end

local global_variables = {
	nord_cursor_line_number_background = 1,
	nord_uniform_status_lines = 1,
	nord_bold_vertical_split_line = 1,
	nord_uniform_diff_background = 1,
	nord_bold = 1,
	nord_italic = 1,
	nord_italic_comments = 1,
	nord_underline = 1,
}

for k,v in pairs(global_variables) do
	vim.g[k] = v
end

vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]])
