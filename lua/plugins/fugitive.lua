return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gs", "<Cmd>vertical Git<CR>", desc = "Fugitive" },
  },
  dependencies = {
    "tpope/vim-rhubarb",
  },
}
