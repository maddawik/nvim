return {
  "nvim-treesitter/nvim-treesitter",
  init = function()
    vim.filetype.add({ extension = { templ = "templ" } })
  end,
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "fish",
      "go",
      "gomod",
      "gosum",
      "hcl",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "templ",
      "terraform",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
    textobjects = {
      swap = {
        enable = true,
        swap_next = {
          ["<leader>a"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>A"] = "@parameter.inner",
        },
      },
    },
  },
}
