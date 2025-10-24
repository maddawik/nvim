return {
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        style_preset = require("bufferline").style_preset.minimal,
        diagnostics = false,
        show_buffer_close_icons = false,
      },
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
  },

  -- Smart sort
  {
    "sQVe/sort.nvim",
    config = true,
    keys = {
      { "<leader>S", "<esc><cmd>Sort<cr>", desc = "Sort", mode = "v" },
      { "<leader>U", "<esc><cmd>Sort u<cr>", desc = "Unique Sort", mode = "v" },
    },
    specs = {
      {
        "folke/which-key.nvim",
        ---@module 'which-key'
        ---@type wk.Opts
        opts = {
          spec = {
            { "<leader>S", icon = "󰒺 ", mode = "v" },
            { "<leader>U", icon = "󰒺 ", mode = "v" },
          },
        },
      },
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
}
