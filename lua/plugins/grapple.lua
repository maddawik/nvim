return {
  "cbochs/grapple.nvim",
  ---@module 'grapple'
  ---@type grapple.options
  opts = {
    scope = "git", -- also try out "git_branch"
    icons = true, -- setting to "true" requires "nvim-web-devicons"
    status = false,
    win_opts = {
      border = "rounded",
    },
  },
  keys = {
    { "<leader>H", "<cmd>Grapple toggle<cr>", desc = "Tag a file" },
    { "<leader>h", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },
    { "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
    { "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
    { "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
    { "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
    { "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Select fifth tag" },
  },
}
