local lzv = require("lazyvim.util")

return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        go = { "golangcilint" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "golangci-lint",
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
      return lzv.has_extra("lang.go")
    end,
    cond = function()
      return vim.fn.executable("go") == 1
    end,
    ft = "go",
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
  {
    "fredrikaverpil/godoc.nvim",
    enabled = function()
      return lzv.has_extra("lang.go")
    end,
    cond = function()
      return vim.fn.executable("go") == 1
    end,
    version = "*",
    keys = {
      { "<leader>ch", "<cmd>GoDoc<cr>", ft = "go", desc = "Go Documentation" },
    },
    dependencies = {
      { "folke/snacks.nvim" },
    },
    cmd = "GoDoc",
    opts = {
      picker = {
        type = "snacks", -- native (vim.ui.select) | telescope | snacks | mini
        snacks = {
          layout = {
            layout = {
              height = 0.8,
              width = 0.9, -- Take up 90% of the total width (adjust as needed)
              box = "horizontal", -- Horizontal layout (input and list on the left, preview on the right)
              { -- Left side (input and list)
                box = "vertical",
                width = 0.3, -- List and input take up 30% of the width
                border = "rounded",
                { win = "input", height = 1, border = "bottom" },
                { win = "list", border = "none" },
              },
              { win = "preview", border = "rounded", width = 0.7 }, -- Preview window takes up 70% of the width
            },
          },
          win = {
            preview = {
              wo = { number = false, relativenumber = false },
            },
          },
        },
      },
    },
  },
}
