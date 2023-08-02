local keymap = vim.keymap

-- general
keymap.set("n", "<leader>h", ":nohl<cr>")
keymap.set('n', 'x', '"_x') -- do not copy delete into register

-- quickly insert mode
keymap.set('i', 'jk', '<ESC>')
keymap.set('i', 'jj', '<ESC>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('n', 'sc', ':close<cr>')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', 'se', ':vsplit<Return><C-w>=')
keymap.set('n', 'sm', ':MaximizerToggle<CR>')
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Save with root permission (not working for now)
keymap.set('n', '<C-s>', ':w!<cr>')

--Flutter tools
keymap.set('n', '<C-f>', ':Telescope flutter commands <cr>')
keymap.set('n', '<leader>f', ':TestFile<cr>')
keymap.set('n', '<leader>s', ':TestSuite<cr>')

-- tab management
keymap.set('n', 'te', ':tabedit') -- New tab
keymap.set('n', '<S-q>', ':tabclose<cr>')

vim.keymap.set("x", "<leader>p", [["_dP]])
