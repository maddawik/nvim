return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false, -- mini.files instead
  -- keeping my opts in case I ever come back to this
  opts = {
    close_if_last_window = true,
    window = {
      mappings = {
        ["<space>"] = "none",
        ["<tab>"] = "toggle_node",
      },
      width = 30,
    },
  },
}
