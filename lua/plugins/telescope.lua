local previewers = require("telescope.previewers")

local delta = previewers.new_termopen_previewer({
  get_command = function(entry)
    return { "git", "-c", "core.pager=delta", "diff", entry.value .. "^!" }
  end,
})

-- Status
local delta_status = previewers.new_termopen_previewer({
  get_command = function(entry)
    return { "git", "-c", "core.pager=delta", "diff", entry.path }
  end,
})

-- Current buf commits
local delta_bcommits = previewers.new_termopen_previewer({
  get_command = function(entry)
    print(entry.status)
    return {
      "git",
      "-c",
      "core.pager=delta",
      "diff",
      entry.value .. "^!",
      "--",
      entry.current_file,
    }
  end,
})

return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        git_commits = {
          previewer = delta,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.7,
          },
        },
        git_status = {
          previewer = delta_status,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.7,
          },
        },
        git_bcommits = {
          previewer = delta_bcommits,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.7,
          },
        },
        git_bcommits_range = {
          previewer = delta_bcommits,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.7,
          },
        },
        buffers = {
          previewer = false,
          theme = "dropdown",
          mappings = {
            n = {
              ["<C-e>"] = "delete_buffer",
              ["l"] = "select_default",
            },
          },
          initial_mode = "normal",
        },
        find_files = {
          path_display = { "absolute" },
          layout_config = {
            prompt_position = "top",
            preview_width = 0.5,
          },
          sorting_strategy = "ascending",
        },
        oldfiles = {
          path_display = { "absolute" },
          layout_config = {
            prompt_position = "top",
            preview_width = 0.5,
          },
          sorting_strategy = "ascending",
        },
        help_tags = {
          theme = "ivy",
        },
        registers = {
          theme = "ivy",
        },
        grep_string = {
          initial_mode = "normal",
          theme = "ivy",
        },
        live_grep = {
          theme = "ivy",
        },
      },
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
    keys = {
      {
        "<leader>fl",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Files (lazy)",
      },
      {
        "<leader>gC",
        function()
          require("telescope.builtin").git_bcommits()
        end,
        desc = "Commits (current buf)",
      },
      {
        "<leader>gc",
        function()
          require("telescope.builtin").git_bcommits_range({ operator = true })
        end,
        desc = "Commits (range)",
        mode = { "v", "x" },
      },
    },
  },
  {
    "ANGkeith/telescope-terraform-doc.nvim",
    optional = true, -- only apply this if the terraform extra is enabled
    keys = {
      {
        "<leader>sp",
        "<cmd>Telescope terraform_doc<cr>",
        desc = "Terraform Providers",
        ft = { "terraform", "hcl" },
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
    "gbprod/yanky.nvim",
    optional = true,
    opts = {
      picker = {
        telescope = {
          use_default_mappings = false,
          mappings = {
            default = require("yanky.telescope.mapping").put("p"),
            i = {
              ["<c-y>"] = require("yanky.telescope.mapping").put("p"),
              ["<c-g>"] = require("yanky.telescope.mapping").put("P"),
              ["<c-x>"] = require("yanky.telescope.mapping").delete(),
              ["<c-r>"] = require("yanky.telescope.mapping").set_register(
                require("yanky.utils").get_default_register()
              ),
            },
            n = {
              p = require("yanky.telescope.mapping").put("p"),
              P = require("yanky.telescope.mapping").put("P"),
              d = require("yanky.telescope.mapping").delete(),
              r = require("yanky.telescope.mapping").set_register(require("yanky.utils").get_default_register()),
            },
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
