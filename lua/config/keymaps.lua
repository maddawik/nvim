-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>")

-- Backspace into insert, helpful for snippets
vim.keymap.set("s", [[<BS>]], [[<BS>i]])

vim.keymap.set({ "i", "s" }, "<C-J>", function()
  return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<C-J>"
end, { expr = true, desc = "Jump Next" })
vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
end, { expr = true, desc = "Jump Previous" })
