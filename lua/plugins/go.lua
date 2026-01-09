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
    "mason-org/mason.nvim",
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
    "ray-x/go.nvim",
    enabled = function()
      return require("lazyvim.util").has_extra("lang.go")
    end,
    cond = function()
      return vim.fn.executable("go") == 1
    end,
    ft = "go",

    keys = {
      { "<leader>ce", "<cmd>GoIfErr<cr>", ft = "go", desc = "Go Error Snippet" },
    },

    opts = {
      lsp_inlay_hints = {
        enable = false,
      },
    },
  },
}
