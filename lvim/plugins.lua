lvim.plugins = {
  "arcticicestudio/nord-vim",
  "lewis6991/gitsigns.nvim",
  "rubixninja314/vim-mcfunction",
}


-- local client = vim.lsp.start_client {
--   name = 'mcfunction_lsp',
--   cmd = { 'C:/Windows/Temp/mcfunction-lsp/dist/mcfunction-lsp-windows-amd64.exe' },
--   root_dir = vim.fn.getcwd(),
-- }
-- 
-- if not client then
--   vim.notify 'MCFunction LSP Client did not load!'
-- end
-- 
-- -- Attach the LSP client when opening an .mcfunction file
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = 'mcfunction',
--   callback = function()
--     vim.lsp.buf_attach_client(0, client)
--   end,
-- })
