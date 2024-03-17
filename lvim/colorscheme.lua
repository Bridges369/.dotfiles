local colorscheme = "nord"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return "colorscheme erro"
end

lvim.colorscheme = "nord"

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

lvim.transparent_window = true

vim.cmd([[
  " set transperency and colors
  au ColorScheme * hi Normal guibg=none ctermbg=none
  au ColorScheme * hi NonText guibg=none ctermbg=none
  au ColorScheme * hi WinSeparator guibg=none ctermbg=none guifg=#4c566a
  au ColorScheme * hi SignColumn ctermbg=none guibg=none
  au ColorScheme * hi NormalNC ctermbg=none guibg=none
  au ColorScheme * hi MsgArea ctermbg=none guibg=none
  au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none
  au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none

  " set separators
  set fillchars=horiz:─,horizup:┴,horizdown:┬,vert:│,vertleft:┤,vertright:├,verthoriz:┼

  " set lang
  lan en_US
]])
