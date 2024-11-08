return {
  -- Scoped buffers
  {
    "tiagovla/scope.nvim",
    config = true,
    event = {
      "BufReadPre",
      "BufNewFile",
    },
  },

  -- Better splits and tmux navigation
  {
    "mrjones2014/smart-splits.nvim",
    keys = {
      { "<C-h>", "<cmd>SmartCursorMoveLeft<CR>", desc = "Move Left", mode = { "n", "t" } },
      { "<C-j>", "<cmd>SmartCursorMoveDown<CR>", desc = "Move Down", mode = { "n", "t" } },
      { "<C-k>", "<cmd>SmartCursorMoveUp<CR>", desc = "Move Up", mode = { "n", "t" } },
      { "<C-l>", "<cmd>SmartCursorMoveRight<CR>", desc = "Move Right", mode = { "n", "t" } },
      { "<C-Up>", "<cmd>SmartResizeUp<CR>", desc = "Resize Up", mode = { "n", "t" } },
      { "<C-Down>", "<cmd>SmartResizeDown<CR>", desc = "Resize Down", mode = { "n", "t" } },
      { "<C-Left>", "<cmd>SmartResizeLeft<CR>", desc = "Resize Left", mode = { "n", "t" } },
      { "<C-Right>", "<cmd>SmartResizeRight<CR>", desc = "Resize Right", mode = { "n", "t" } },
    },
  },

  -- Super smart column status
  {
    "Bekaboo/deadcolumn.nvim",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    -- INFO: transparency setting
    -- opts = {
    --   blending = {
    --     colorcode = "#26233a", -- rose-pine-moon
    --     hlgroup = { "NonText", "bg" },
    --   },
    -- },
  },

  -- Trim whitespace
  {
    "cappyzawa/trim.nvim",
    init = function()
      require("snacks").toggle
        .new({
          name = "Trim Whitespace",
          get = function()
            return require("trim.trimmer").is_enabled()
          end,
          set = function()
            require("trim.trimmer").toggle()
          end,
        })
        :map("<leader>uW")
    end,
    opts = {
      trim_on_write = false,
      notifications = false,
    },
  },

  -- Smart sort
  {
    "sQVe/sort.nvim",
    config = true,
    keys = {
      { "<leader>S", "<esc><cmd>Sort<cr>", desc = "Sort", mode = "v" },
      { "<leader>U", "<esc><cmd>Sort u<cr>", desc = "Unique Sort", mode = "v" },
    },
  },

  -- Split/Join blocks of code
  {
    "Wansmer/treesj",
    keys = {
      { "gj", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
    },
    opts = { use_default_keymaps = false, max_join_length = 150 },
  },

  -- Wezterm config types
  {
    "justinsgithub/wezterm-types",
    event = "BufEnter .wezterm.lua",
  },

  -- Screencast key utility
  {
    "nvchad/showkeys",
    cmd = "ShowkeysToggle",
    opts = {
      timeout = 3,
      maxkeys = 5,
      show_count = false,
      -- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
      position = "bottom-center",

      winopts = {
        border = "rounded",
      },

      keyformat = {
        ["<M>"] = "󰘵 ",
        ["<C>"] = "󰘴 ",
        ["<Space>"] = "󱁐 ",
        ["<CR>"] = "󰘌 ",
      },
    },
    init = function()
      require("snacks").toggle
        .new({
          name = "Showkeys",
          get = function()
            return require("showkeys.state").visible
          end,
          set = function()
            require("showkeys").toggle()
          end,
        })
        :map("<leader>uS")
    end,
  },
}
