return {
  {
    "folke/which-key.nvim",
    ---@module 'which-key'
    ---@type wk.Opts
    opts = {
      spec = {
        { "<leader>v", group = "visits", icon = " ", mode = "n" },
      },
    },
  },
  {
    "nvim-mini/mini.visits",
    opts = {},
    keys = {
      {
        "<leader>vv",
        function()
          require("mini.visits").add_label()
        end,
        desc = "Add label",
      },
      {
        "<leader>vV",
        function()
          require("mini.visits").remove_label()
        end,
        desc = "Remove label",
      },
      {
        "<leader>vl",
        function()
          require("mini.visits").select_label("", "")
        end,
        desc = "Select label (all)",
      },
      {
        "<leader>vL",
        function()
          require("mini.visits").select_label()
        end,
        desc = "Select label (cwd)",
      },
      {
        "<leader>vc",
        function()
          require("mini.visits").add_label("core", "")
        end,
        desc = "Add label (core)",
      },
      {
        "<leader>vC",
        function()
          require("mini.visits").remove_label("core", "")
        end,
        desc = "Remove label (core)",
      },
    },
  },
}
