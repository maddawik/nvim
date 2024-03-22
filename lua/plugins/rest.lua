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
    "vhyrro/luarocks.nvim",
    branch = "go-away-python",
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
      { "<leader>rr", "<Cmd>Rest run<CR>", desc = "Run Request" },
      { "<leader>rl", "<Cmd>Rest run last<CR>", desc = "Run Last Request" },
      {
        "<leader>re",
        function()
          require("telescope").extensions.rest.select_env()
        end,
        desc = "Select Env",
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, { "rest" })
    end,
  },
}
