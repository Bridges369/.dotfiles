g = vim.g

g["airline#extensions#tabline#enabled"] = 1
g["airline#extensions#tabline#formatter"] = "unique_tail_improved"
g["airline_theme"] = "nord"
g["airline_powerline_fonts"] = 1


--[[
local function accent_demo()
  local keys = {'a','b','c','d','e','f','g','h'}
  for k in keys do
    vim.cmd("airline#parts#define_text(" .. k.. ", " .. k .. ")")
  end
  vim.cmd("airline#parts#define_accent('a', 'red')")
  vim.cmd("airline#parts#define_accent('b', 'green')")
  vim.cmd("airline#parts#define_accent('c', 'blue')")
  vim.cmd("airline#parts#define_accent('d', 'yellow')")
  vim.cmd("airline#parts#define_accent('e', 'orange')")
  vim.cmd("airline#parts#define_accent('f', 'purple')")
  vim.cmd("airline#parts#define_accent('g', 'bold')")
  vim.cmd("airline#parts#define_accent('h', 'italic')")
  -- let g:airline_section_a = airline#section#create(keys)
end

-- vim.cmd("autocmd VimEnter * call AccentDemo()")

-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = accent_demo })
vim.api.nvim_create_autocmd({ "VimEnter" }, { command = [[
  let keys = ['a','b','c','d','e','f','g','h']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('a', 'red')
  call airline#parts#define_accent('b', 'green')
  call airline#parts#define_accent('c', 'blue')
  call airline#parts#define_accent('d', 'yellow')
  call airline#parts#define_accent('e', 'orange')
  call airline#parts#define_accent('f', 'purple')
  call airline#parts#define_accent('g', 'bold')
  call airline#parts#define_accent('h', 'italic')
  let g:airline_section_a = airline#section#create(keys)
 ]]
--]]
