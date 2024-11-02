return {
  "folke/zen-mode.nvim",
  dependencies = { "folke/twilight.nvim" },
  cmd = "ZenMode",
  init = function()
    LazyVim.toggle.map("<leader>uz", {
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
    LazyVim.toggle.map("<leader>uZ", {
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
  end,

  ---@module 'zen-mode'
  ---@type ZenOptions
  opts = {},
}
