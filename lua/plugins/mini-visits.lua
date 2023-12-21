return {
  "echasnovski/mini.visits",
  opts = {},
  init = function()
    require("which-key").register({ v = { name = "+visit" } }, { prefix = "<leader>" })
  end,
  keys = {
    { "<leader>va", "<cmd>lua MiniVisits.add_label()<cr>", desc = "Add label" },
    { "<leader>vd", "<cmd>lua MiniVisits.remove_label()<cr>", desc = "Remove label" },
    { "<leader>vv", '<cmd>lua MiniVisits.add_label("core")<cr>', desc = "Add to core" },
    { "<leader>vV", '<cmd>lua MiniVisits.remove_label("core")<cr>', desc = "Remove from core" },
    { "<leader>vc", '<cmd>lua MiniVisits.select_path("", { filter = "core" })<cr>', desc = "Select core (all)" },
    { "<leader>vC", '<cmd>lua MiniVisits.select_path(nil, { filter = "core" })<cr>', desc = "Select core (cwd)" },
    { "<leader>vl", '<cmd>lua MiniVisits.select_label("", "")<cr>', desc = "Select label (all)" },
    { "<leader>vL", "<cmd>lua MiniVisits.select_label()<cr>", desc = "Select label (cwd)" },
    { "<leader>vr", "<cmd>lua MiniVisits.select_path()<cr>", desc = "Select recent" },
    { "<leader>vj", '<cmd>lua MiniVisits.iterate_paths("forward", nil, {filter = "core" })<cr>', desc = "Next core" },
    {
      "<leader>vk",
      '<cmd>lua MiniVisits.iterate_paths("backward", nil, {filter = "core" })<cr>',
      desc = "Previous core",
    },
  },
}
