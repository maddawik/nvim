return {
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
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open files (directory of current file)",
      },
      {
        "<leader>e",
        function()
          require("mini.files").open(require("lazyvim.util.root").get(), true)
        end,
        desc = "Open files (cwd)",
      },
      {
        "<leader>E",
        function()
          require("mini.files").open(nil, false)
        end,
        desc = "Open files (root dir)",
      },
    }
  end,
}
