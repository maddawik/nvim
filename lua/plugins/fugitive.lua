return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gf", "<Cmd>vertical Git<CR>", desc = "Fugitive" },
  },
  dependencies = {
    "tpope/vim-rhubarb",
  },
}