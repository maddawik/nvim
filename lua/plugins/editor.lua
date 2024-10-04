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
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("user.octo", {}),
        desc = "Disable colorcolumn for octo",
        pattern = { "octo" },
        command = "silent! set colorcolumn=0",
      })
    end,
  },

  -- Trim whitespace
  {
    "maddawik/trim.nvim",
    branch = "configure-notifications",
    event = {
      "BufWritePre",
    },
    init = function()
      LazyVim.toggle.map("<leader>uW", {
        name = "Trim Whitespace",
        get = function()
          return require("trim.trimmer").is_enabled()
        end,
        set = function()
          require("trim.trimmer").toggle()
        end,
      })
    end,
    opts = {
      trim_on_write = true,
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
  { "justinsgithub/wezterm-types" },

  -- Screencast key utility
  {
    "NStefan002/screenkey.nvim",
    version = "*",
    init = function()
      LazyVim.toggle.map("<leader>uS", {
        name = "ScreenKey",
        get = function()
          return require("screenkey").is_active()
        end,
        set = function()
          require("screenkey").toggle()
        end,
      })
    end,
    config = function()
      require("screenkey").setup({
        win_opts = {
          title = "",
          row = vim.o.lines - vim.o.cmdheight - 2,
          col = vim.o.columns - 3,
          border = "rounded",
        },
      })
    end,
  },

  -- Icon for refactoring extra
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>r", group = "refactor", icon = " ", mode = { "v", "n" } },
      },
    },
  },
}
