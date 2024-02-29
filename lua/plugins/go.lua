return {
  -- "ray-x/go.nvim",
  "Mawdac/go.nvim",
  branch = "fix/inlay-hints",
  dependencies = { -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = true,
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
}
