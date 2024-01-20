return {
  { "rebelot/kanagawa.nvim", event = "VeryLazy" },
  { "folke/tokyonight.nvim", event = "VeryLazy" },
  {
    "craftzdog/solarized-osaka.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = { transparent = false },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- opts = {
    --   transparent_background = true,
    -- },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
