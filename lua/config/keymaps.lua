local keymap = vim.keymap
-- Exit insert mode with jk
keymap.set("i", "jk", "<ESC>")
-- Better window navigation
keymap.set({ "n", "t" }, "<C-h>", "<cmd>SmartCursorMoveLeft<CR>")
keymap.set({ "n", "t" }, "<C-j>", "<cmd>SmartCursorMoveDown<CR>")
keymap.set({ "n", "t" }, "<C-k>", "<cmd>SmartCursorMoveUp<CR>")
keymap.set({ "n", "t" }, "<C-l>", "<cmd>SmartCursorMoveRight<CR>")
-- Resize with arrows
keymap.set({ "n", "t" }, "<C-Up>", "<cmd>SmartResizeUp<CR>")
keymap.set({ "n", "t" }, "<C-Down>", "<cmd>SmartResizeDown<CR>")
keymap.set({ "n", "t" }, "<C-Left>", "<cmd>SmartResizeLeft<CR>")
keymap.set({ "n", "t" }, "<C-Right>", "<cmd>SmartResizeRight<CR>")
