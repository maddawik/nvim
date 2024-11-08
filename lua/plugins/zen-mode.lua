return {
  "folke/zen-mode.nvim",
  dependencies = { "folke/twilight.nvim" },
  cmd = "ZenMode",
  init = function()
    require("snacks").toggle
      .new({
        name = "Zen-Mode Center",
        icon = "󱅻 ",
        get = function()
          return require("zen-mode.view").is_open()
        end,
        set = function()
          require("zen-mode").toggle({
            plugins = {
              options = { laststatus = 3 },
              tmux = { enabled = false },
              twilight = { enabled = false },
            },
          })
        end,
      })
      :map("<leader>uz")
    require("snacks").toggle
      .new({
        name = "Zen-Mode Focus",
        icon = "󱅻 ",
        get = function()
          return require("zen-mode.view").is_open()
        end,
        set = function()
          require("zen-mode").toggle({
            plugins = {
              options = { laststatus = 0 },
              tmux = { enabled = true },
              twilight = { enabled = true },
            },
          })
        end,
      })
      :map("<leader>uZ")
  end,

  ---@module 'zen-mode'
  ---@type ZenOptions
  opts = {},
}
