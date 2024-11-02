return {
  "folke/which-key.nvim",

  ---@module 'which-key'
  ---@type wk.Opts
  opts = {
    preset = "helix",
    layout = { align = "center" },
    show_help = true,
    spec = {
      { "<leader>r", group = "refactor", icon = { icon = " ", color = "purple" }, mode = { "v", "n" } },
      { "<leader>o", group = "overseer", icon = { icon = " ", color = "yellow" }, mode = "n" },
    },
  },
}
