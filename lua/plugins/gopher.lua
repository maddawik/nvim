return {
  "olexsmir/gopher.nvim",
  ft = "go",
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
  keys = {
    {
      "<leader>ce",
      "<cmd>GoIfErr<cr>",
      desc = "Go Error",
      ft = "go",
    },
  },
}
