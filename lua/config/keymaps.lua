-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- general
keymap.set("n", "<leader>h", ":nohl<cr>")
keymap.set("n", "x", '"_x') -- do not copy delete into register
keymap.set("n", ";", ":") -- quickly switch to command mode

-- quickly insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "jj", "<ESC>")

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
keymap.set("n", "sc", ":close<cr>")

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "se", ":vsplit<Return><C-w>=")
keymap.set("n", "sm", ":MaximizerToggle<CR>")
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Save with root permission (not working for now)
keymap.set("n", "<C-s>", ":w!<cr>")

--Flutter tools
keymap.set("n", "<leader>F", ":Telescope flutter commands<cr>")

-- tab management
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<S-q>", ":tabc<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.get_next()
end, opts)
