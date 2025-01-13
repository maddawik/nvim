return {
  {
    "folke/tokyonight.nvim",
    -- config = function()
    --   ---@diagnostic disable-next-line: missing-fields
    --   require("tokyonight").setup({
    --     -- Borderless Telescope
    --     on_highlights = function(hl, c)
    --       hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
    --       hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
    --
    --       hl.TelescopePromptNormal = { bg = c.bg, fg = c.fg_dark }
    --       hl.TelescopePromptBorder = { bg = c.bg, fg = c.bg }
    --
    --       hl.TelescopePromptTitle = { bg = c.blue, fg = c.bg_dark }
    --       hl.TelescopePreviewTitle = { bg = c.green, fg = c.bg_dark }
    --       hl.TelescopeResultsTitle = { bg = c.red, fg = c.bg_dark }
    --     end,
    --   })
    -- end,
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
