return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>r"] = { name = "+run" },
      },
    },
  },
  {
    "rest-nvim/rest.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    ft = "http",
    config = function()
      require("rest-nvim").setup({})
    end,
    keys = {
      { "<leader>rr", "<Plug>RestNvim<cr>", desc = "Run Request" },
      { "<leader>rp", "<Plug>RestNvimPreview<cr>", desc = "Preview Request" },
      { "<leader>rl", "<Plug>RestNvimLast<cr>", desc = "Run Last Request" },
    },
  },
}
