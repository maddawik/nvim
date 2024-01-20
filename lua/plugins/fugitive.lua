return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G", "GBrowse" },
  keys = {
    { "<leader>gf", "<Cmd>vertical G<CR>", desc = "Fugitive" },
    { "<leader>gp", "<Cmd>G pull<CR>", desc = "pull" },
    { "<leader>gP", "<Cmd>G push<CR>", desc = "push" },
  },
  dependencies = {
    "tpope/vim-rhubarb",
  },
}
