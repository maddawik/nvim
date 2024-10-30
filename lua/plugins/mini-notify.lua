return {
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "folke/noice.nvim",
    opts = {
      notify = {
        enabled = false,
      },
    },
    keys = function()
      return {
        {
          "<s-enter>",
          function()
            require("noice").redirect(vim.fn.getcmdline())
          end,
          mode = "c",
          desc = "redirect cmdline",
        },
        {
          "<c-f>",
          function()
            if not require("noice.lsp").scroll(4) then
              return "<c-f>"
            end
          end,
          silent = true,
          expr = true,
          desc = "scroll forward",
          mode = { "i", "n", "s" },
        },
        {
          "<c-b>",
          function()
            if not require("noice.lsp").scroll(-4) then
              return "<c-b>"
            end
          end,
          silent = true,
          expr = true,
          desc = "scroll backward",
          mode = { "i", "n", "s" },
        },
      }
    end,
  },
  {
    "echasnovski/mini.notify",
    event = "VeryLazy",
    keys = {
      {
        "<leader>un",
        function()
          require("mini.notify").clear()
        end,
        desc = "Dismiss All Notifications",
      },
      {
        "<leader>uN",
        function()
          require("mini.notify").show_history()
        end,
        desc = "Show All Notifications",
      },
      {
        "<leader>um",
        "<Cmd>messages<CR>",
        desc = "Show All Messages",
      },
    },
    config = function()
      local notify = require("mini.notify")
      notify.setup({
        lsp_progress = {
          enable = false,
        },
        window = {
          winblend = 0,
          config = {
            border = "none",
            row = 2,
          },
        },
      })
      vim.notify = notify.make_notify()
    end,
  },
}
