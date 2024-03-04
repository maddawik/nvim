return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = "http",
  init = function()
    require("which-key").register({ r = { name = "+run" } }, { prefix = "<leader>" })
  end,
  config = function()
    require("rest-nvim").setup({
      result_split_horizontal = true,
    })
  end,
  keys = {
    { "<leader>rr", "<Plug>RestNvim<cr>", desc = "Run Request", ft = "http" },
    { "<leader>rp", "<Plug>RestNvimPreview<cr>", desc = "Preview Request", ft = "http" },
    { "<leader>rl", "<Plug>RestNvimLast<cr>", desc = "Run Last Request", ft = "http" },
  },
}
