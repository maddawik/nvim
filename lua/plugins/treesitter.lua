return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    textobjects = {
      swap = {
        enable = true,
        swap_next = {
          ["<leader>z"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>Z"] = "@parameter.inner",
        },
      },
    },
  },
}
