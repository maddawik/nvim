return {
  { "rebelot/kanagawa.nvim", event = "VeryLazy" },
  { "folke/tokyonight.nvim", event = "VeryLazy" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- init = function()
    --   -- required for transparent_background
    --   require("notify").setup({
    --     background_colour = "#000000",
    --   })
    -- end,
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
