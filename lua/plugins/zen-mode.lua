return {
  "folke/zen-mode.nvim",
  dependencies = { "folke/twilight.nvim" },
  cmd = "ZenMode",
  keys = { { "<leader>uz", "<cmd>ZenMode<cr>", desc = "Toggle Zen-Mode" } },
  opts = {
    plugins = {
      options = { laststatus = 0 },
      tmux = { enabled = true },
    },
  },
}
