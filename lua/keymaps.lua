local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- NORMAL --
-- Window navigation
keymap("n", "<S-q>", ":q!<CR>", opts)
keymap("n", "<S-w>", ":wq<CR>", opts)
keymap("n", "<C-h>", "<C-w>h", opts) 
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Buffer navigation
keymap("n", "ba", ":badd new buffer", opts)
keymap("n", "bd", ":bdelete<CR>", opts)
keymap("n", "bl", ":buffer #<CR>", opts)
keymap("n", "bn", ":bnext<CR>", opts)
keymap("n", "bp", ":bprevious<CR>", opts)

-- Tab navigation
keymap("n", "ta", "tabnew<CR>", opts)
keymap("n", "td", "tabclose<CR>", opts)
-- keymap("n", "tl", ":tab")
keymap("n", "tn", ":tabnext<CR>", opts)
keymap("n", "tp", ":tabprevious<CR>", opts)

-- Resize window
keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +1<CR>", opts)

-- Add new lines
keymap("n", "op", "o<Esc>k", opts)
keymap("n", "oi", "O<Esc>j", opts)
keymap("n", "oo", "A<CR>", opts)

-- Move lines
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("n", "<S-Tab>", "<<", opts)
keymap("n", "<Tab>", ">>", opts)



-- INSERT -- 
-- Move lines
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)



-- VISUAL --
-- Fix paste
keymap("v", "p", '"_dp', opts)

-- Move lines
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<Tab>", ">gv", opts)
keymap("v", "<S-Tab>", "<gv", opts)



-- VISUAL BLOCK --
-- Move lines
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
