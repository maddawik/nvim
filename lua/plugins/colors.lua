return {
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,

    ---@module 'rose-pine'
    ---@type Options
    opts = {
      -- styles = {
      --   transparency = true, -- INFO: transparency setting
      -- },

      highlight_groups = {
        -- Borderless Telescope
        TelescopeBorder = { fg = "overlay", bg = "overlay" },
        TelescopeNormal = { fg = "subtle", bg = "overlay" },
        TelescopeSelection = { fg = "text", bg = "highlight_med" },
        TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
        TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

        TelescopeTitle = { fg = "base", bg = "love" },
        TelescopePromptTitle = { fg = "base", bg = "pine" },
        TelescopePreviewTitle = { fg = "base", bg = "iris" },

        TelescopePromptNormal = { fg = "text", bg = "surface" },
        TelescopePromptBorder = { fg = "surface", bg = "surface" },
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
