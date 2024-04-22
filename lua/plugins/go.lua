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
      },
    },
  },
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      lsp_inlay_hints = {
        enable = false, -- better managed without this
      },
    },
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    -- build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    keys = {
      {
        "<leader>ce",
        "<cmd>GoIfErr<cr>",
        desc = "Go Error",
        ft = "go",
      },
    },
  },
}
