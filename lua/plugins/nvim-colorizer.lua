return {
  "NvChad/nvim-colorizer.lua",
  lazy = false,
  config = true,
  opts = {
    filetypes = {
      "css",
      "javascript",
      "typescript",
      go = { names = false },
      html = { mode = "foreground" },
      lua = { names = false },
      vim = { names = false },
    },
  },
}
