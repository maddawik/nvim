return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gs", "<cmd>vertical Git<cr>", desc = "status" },
  },
  dependencies = {
    "tpope/vim-rhubarb",
  },
}
