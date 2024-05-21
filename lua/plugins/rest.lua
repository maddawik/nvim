return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>R"] = { name = "+run" },
      },
    },
  },
  {
    "vhyrro/luarocks.nvim",
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
    },
  },
  {
    "mawdac/rest.nvim",
    branch = "fix-keybinds",
    ft = "http",
    dependencies = {
      "vhyrro/luarocks.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("rest-nvim").setup()
      require("telescope").load_extension("rest")
    end,
    keys = {
      { "<leader>Rr", "<Cmd>Rest run<CR>", desc = "Run Request" },
      { "<leader>Rl", "<Cmd>Rest run last<CR>", desc = "Run Last Request" },
      {
        "<leader>Re",
        function()
          require("telescope").extensions.rest.select_env()
        end,
        desc = "Select Env",
      },
    },
  },
}
