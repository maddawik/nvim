return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.files",
    lazy = false,
    opts = {
      mappings = {
        synchronize = "<CR>",
      },
      options = {
        use_as_default_explorer = true,
      },
    },
    -- Passing a function that returns the table of keymaps overrides any of the
    -- defaults that LazyVim has (<leader>fm, and <leader>fM in this case)
    keys = function()
      return {
        {
          "\\",
          function()
            MiniFiles.open(vim.api.nvim_buf_get_name(0), true)
          end,
          desc = "Open files (directory of current file)",
        },
        {
          "<leader>e",
          function()
            MiniFiles.open(LazyVim.root.get(), true)
          end,
          desc = "Open files (cwd)",
        },
        {
          "<leader>E",
          function()
            MiniFiles.open(nil, false)
          end,
          desc = "Open files (root dir)",
        },
      }
    end,
  },
}
