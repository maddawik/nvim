return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  cmd = { "Neogit" },
  keys = {
    {
      "<leader>gn",
      function()
        require("neogit").open({ cwd = LazyVim.root.get(), kind = "auto" })
      end,
      desc = "Neogit (Root Dir)",
    },
    {
      "<leader>gN",
      function()
        require("neogit").open({ kind = "auto" })
      end,
      desc = "Neogit (cwd)",
    },
  },

  ---@module 'neogit'
  ---@type NeogitConfig
  opts = {
    disable_builtin_notifications = true,
    graph_style = "kitty",
  },
}
