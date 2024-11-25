return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        go = { "revive" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "revive",
        "iferr",
        "gomodifytags",
        "gotests",
        "impl",
      },
    },
  },
  {
    "olexsmir/gopher.nvim",
    enabled = function()
      return LazyVim.has_extra("lang.go")
    end,
    ft = "go",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "mfussenegger/nvim-dap",
    },
    keys = {
      { "<leader>ce", "<cmd>GoIfErr<cr>", ft = "go", desc = "Go Error Snippet" },
    },
    -- (optional) will update plugin's deps on every update
    -- build = function()
    --   vim.cmd("GoInstallDeps")
    -- end,

    ---@module 'gopher'
    ---@type gopher.Config
    opts = {},
  },
}
