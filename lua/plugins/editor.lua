return {
  -- Scoped buffers
  {
    "tiagovla/scope.nvim",
    config = true,
    event = "VeryLazy",
  },

  -- Better splits and tmux navigation
  {
    "mrjones2014/smart-splits.nvim",
    event = "VeryLazy",
  },

  -- Super smart column status
  {
    "Bekaboo/deadcolumn.nvim",
    commit = "b9b5e23",
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
