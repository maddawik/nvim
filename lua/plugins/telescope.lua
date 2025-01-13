return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        set_env = {
          LESS = "",
          DELTA_PAGER = "less",
        },
        scroll_strategy = "limit",
        mappings = {
          i = {
            ["<C-b>"] = require("telescope.actions").preview_scrolling_up,
            ["<C-f>"] = require("telescope.actions").preview_scrolling_down,

            ["<C-u>"] = require("telescope.actions").results_scrolling_up,
            ["<C-d>"] = require("telescope.actions").results_scrolling_down,

            ["<C-n>"] = require("telescope.actions").move_selection_next,
            ["<C-p>"] = require("telescope.actions").move_selection_previous,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,

            ["<C-c>"] = require("telescope.actions").close,
          },
          n = {
            ["<C-b>"] = require("telescope.actions").preview_scrolling_up,
            ["<C-f>"] = require("telescope.actions").preview_scrolling_down,

            ["<C-u>"] = require("telescope.actions").results_scrolling_up,
            ["<C-d>"] = require("telescope.actions").results_scrolling_down,

            ["<C-n>"] = require("telescope.actions").move_selection_next,
            ["<C-p>"] = require("telescope.actions").move_selection_previous,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,

            ["<C-c>"] = require("telescope.actions").close,
          },
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    ---@module 'which-key'
    ---@type wk.Opts
    opts = {
      icons = {
        rules = {
          { plugin = "telescope-symbols.nvim", icon = " ", color = "blue" },
        },
      },
    },
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
    keys = {
      { "<leader>se", "<cmd>Telescope symbols theme=get_cursor<cr>", desc = "Emojis" },
    },
  },
}
