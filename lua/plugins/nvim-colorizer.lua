return {
  "NvChad/nvim-colorizer.lua",
  lazy = false,
  config = true,
  opts = {
    filetypes = {
      html = { mode = "foreground" },
      "css",
      "javascript",
      "typescript",
      lua = { names = false },
      vim = { names = false },
    },
  },
}
