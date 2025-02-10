return {
  "linux-cultist/venv-selector.nvim",
  branch = "regexp", -- Use this branch for the new version
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  cmd = "VenvSelect",
  enabled = function()
    return LazyVim.has("telescope.nvim")
  end,
  opts = {
    settings = {
      options = {
        notify_user_on_venv_activation = false,
      },
    },
  },
  ft = "python",
  keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" } },
}
