return {
  "NvChad/nvim-colorizer.lua",
  lazy = false,
  config = true,
  opts = {
    filetypes = {
      html = { mode = "foreground" },
      "css",
      "go",
      "javascript",
      "typescript",
      lua = { names = false },
      vim = { names = false },
    },
  },
}
