return {
  "folke/zen-mode.nvim",
  dependencies = { "folke/twilight.nvim" },
  cmd = "ZenMode",
  keys = {
    {
      "<leader>uz",
      function()
        require("zen-mode").toggle({
          plugins = {
            options = { laststatus = 3 },
            tmux = { enabled = false },
            twilight = { enabled = false },
          },
        })
      end,
      desc = "Zen-Mode Center",
    },
    {
      "<leader>uZ",
      function()
        require("zen-mode").toggle({
          plugins = {
            options = { laststatus = 0 },
            tmux = { enabled = true },
            twilight = { enabled = true },
          },
          on_open = function()
            require("incline").disable()
          end,
          on_close = function()
            require("incline").enable()
          end,
        })
      end,
      desc = "Zen-Mode Focus",
    },
  },
  opts = {},
}
