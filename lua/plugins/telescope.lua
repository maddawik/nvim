return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        -- layout_config = {
        --   preview_width = 0.5,
        -- },
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
    keys = {
      {
        "<leader>fl",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Files (lazy)",
      },
    },
  },
  {
    "folke/which-key.nvim",
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
