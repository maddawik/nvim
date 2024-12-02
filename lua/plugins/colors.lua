return {
  {
    "folke/tokyonight.nvim",
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("tokyonight").setup({
        -- Borderless Telescope
        on_highlights = function(hl, c)
          hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
          hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }

          hl.TelescopePromptNormal = { bg = c.bg, fg = c.fg_dark }
          hl.TelescopePromptBorder = { bg = c.bg, fg = c.bg }

          hl.TelescopePromptTitle = { bg = c.blue, fg = c.bg_dark }
          hl.TelescopePreviewTitle = { bg = c.green, fg = c.bg_dark }
          hl.TelescopeResultsTitle = { bg = c.red, fg = c.bg_dark }
        end,
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      integrations = {
        telescope = {
          style = "nvchad", -- Borderless
        },
      },
    },
  },
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

        -- Dashboard
        SnacksDashboardDesc = { fg = "text" },
        SnacksDashboardFooter = { fg = "muted" },
        SnacksDashboardHeader = { fg = "pine" },
        SnacksDashboardIcon = { fg = "subtle" },
        SnacksDashboardKey = { fg = "iris" },
        SnacksDashboardSpecial = { fg = "iris" },
        SnacksDashboardTitle = { fg = "subtle" },
        SnacksDashboardFile = { fg = "foam" },

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
