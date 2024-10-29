return {
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      styles = {
        transparency = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
}
