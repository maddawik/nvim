return {
  "linux-cultist/venv-selector.nvim",
  branch = "regexp", -- Use this branch for the new version
  dependencies = { "neovim/nvim-lspconfig" },
  cmd = "VenvSelect",
  opts = {
    settings = {
      options = {
        picker = "native",
        notify_user_on_venv_activation = false,
      },
    },
  },
  ft = "python",
  keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" } },
}
