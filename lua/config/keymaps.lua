-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>")

-- Backspace into insert, helpful for snippets
vim.keymap.set("s", [[<BS>]], [[<BS>i]])

vim.keymap.set("n", "<Space>gd", function()
  Snacks.terminal({ "gh", "dash" })
end, { desc = "GitHub Dashboard" })
