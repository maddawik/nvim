return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  init = function()
    vim.keymap.set("t", "<C-\\>", "<Cmd>ToggleTerm<CR>")
  end,
  keys = {
    {
      "<C-\\>",
      "<cmd>ToggleTerm<CR>",
      desc = "ToggleTerm",
    },
  },
}
