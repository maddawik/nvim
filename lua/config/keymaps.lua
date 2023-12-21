local keymap = vim.keymap
-- Exit insert and terminal mode with jk
keymap.set("i", "jk", "<ESC>")
-- Better terminal navigation
keymap.set("t", "<C-h>", [[<cmd>wincmd h<CR>]])
keymap.set("t", "<C-j>", [[<cmd>wincmd j<CR>]])
keymap.set("t", "<C-k>", [[<cmd>wincmd k<CR>]])
keymap.set("t", "<C-l>", [[<cmd>wincmd l<CR>]])
-- Better window navigation
keymap.set("n", "<C-h>", "<cmd>SmartCursorMoveLeft<CR>")
keymap.set("n", "<C-j>", "<cmd>SmartCursorMoveDown<CR>")
keymap.set("n", "<C-k>", "<cmd>SmartCursorMoveUp<CR>")
keymap.set("n", "<C-l>", "<cmd>SmartCursorMoveRight<CR>")
-- Resize with arrows
keymap.set("n", "<C-Up>", "<cmd>SmartResizeUp<CR>")
keymap.set("n", "<C-Down>", "<cmd>SmartResizeDown<CR>")
keymap.set("n", "<C-Left>", "<cmd>SmartResizeLeft<CR>")
keymap.set("n", "<C-Right>", "<cmd>SmartResizeRight<CR>")
