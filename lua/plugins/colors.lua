return {
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,

    ---@module 'rose-pine'
    ---@type Options
    -- opts = {
    --   styles = {
    --     transparency = true, -- INFO: transparency setting
    --   },
    -- },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
}
