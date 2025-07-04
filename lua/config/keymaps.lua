-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>")

-- Backspace into insert, helpful for snippets
vim.keymap.set("s", [[<BS>]], [[<BS>i]])

-- Pick a plugin file
vim.keymap.set("n", "<leader>sP", function()
  LazyVim.pick("files", { cwd = vim.fn.expand("~") .. "/.local/share/nvim/lazy/" })()
end, { desc = "Search All Plugins", silent = true })
