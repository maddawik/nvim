-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<c-\\>", function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
vim.keymap.set("t", "<c-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })
