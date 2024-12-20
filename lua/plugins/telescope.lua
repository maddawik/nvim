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
    "debugloop/telescope-undo.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
      },
    },
    keys = {
      {
        "<leader>su",
        "<cmd>Telescope undo<cr>",
        desc = "Undo History",
      },
    },
    opts = {
      extensions = {
        undo = {
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.7,
          },
        },
      },
    },
    config = function(_, opts)
      -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
      -- configs for us. We won't use data, as everything is in it's own namespace (telescope
      -- defaults, as well as each extension).
      require("telescope").setup(opts)
      require("telescope").load_extension("undo")
    end,
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
