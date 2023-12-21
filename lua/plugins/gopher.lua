return {
  "olexsmir/gopher.nvim",
  ft = "go",
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
  config = function()
    vim.keymap.set("n", "<leader>ce", "<cmd> GoIfErr <cr>", { desc = "GoIfErr" })
  end,
}
