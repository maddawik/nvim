return {
  "ray-x/go.nvim",
  dependencies = {
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    lsp_inlay_hints = {
      enable = false, -- autocmd for enabling
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
}
