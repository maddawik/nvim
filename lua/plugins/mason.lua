return {
  "mason-org/mason.nvim",

  ---@module 'mason'
  ---@type MasonSettings
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
      border = "rounded",
      height = 0.8,
    },
  },
}
