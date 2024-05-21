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
  },

  -- Trim whitespace
  {
    "cappyzawa/trim.nvim",
    opts = {
      trim_on_write = false,
    },
    keys = {
      { "<leader>ft", "<cmd>Trim<cr>", desc = "Trim whitespace" },
      { "<leader>fT", "<cmd>TrimToggle<cr>", desc = "Toggle auto trim whitespace" },
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
    config = true,
    keys = {
      { "gS", "<esc><cmd>TSJSplit<cr>", desc = "Split node under cursor" },
      { "gJ", "<esc><cmd>TSJJoin<cr>", desc = "Join node under cursor" },
    },
  },
}
