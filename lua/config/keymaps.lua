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
keymap.set({ "n", "t" }, "<C-Up>", "<cmd>SmartResizeUp<CR>")
keymap.set({ "n", "t" }, "<C-Down>", "<cmd>SmartResizeDown<CR>")
keymap.set({ "n", "t" }, "<C-Left>", "<cmd>SmartResizeLeft<CR>")
keymap.set({ "n", "t" }, "<C-Right>", "<cmd>SmartResizeRight<CR>")

keymap.set("n", "<leader>uc", function()
  local next_state = vim.o.conceallevel > 0 and vim.o.conceallevel - 1 or 2
  require("lazyvim.util").toggle("conceallevel", false, { vim.o.conceallevel, next_state % 3 })
end, { desc = "Toggle Conceal" })
