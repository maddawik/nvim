return {
  "williamboman/mason.nvim",
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
    ensure_installed = {
      "shellcheck",
    },
  },
}
