return {
  "renerocksai/telekasten.nvim",
  keys = {
    { "<leader>zd", "<cmd>Telekasten goto_today<CR>", desc = "Todays Note" },
    { "<leader>zf", "<cmd>Telekasten find_notes<CR>", desc = "Find Notes" },
    { "<leader>zg", "<cmd>Telekasten search_notes<CR>", desc = "Grep Notes" },
    { "<leader>zn", "<cmd>Telekasten new_note<CR>", desc = "New Note" },
    { "<leader>zp", "<cmd>Telekasten panel<CR>", desc = "Command Palette" },
    { "<leader>zr", "<cmd>Telekasten rename_note<CR>", desc = "Rename Note" },
    { "<leader>zt", "<cmd>Telekasten toggle_todo<CR>", desc = "Toggle Todo" },
  },
  init = function()
    require("which-key").register({ z = { name = "+zettelkasten" } }, { prefix = "<leader>" })
  end,
  opts = {
    auto_set_filetype = false,
    home = vim.fn.expand("~/.nb/zettelkasten"),
    template_new_note = vim.fn.expand("~/.nb/zettelkasten/templates/basenote.md"),
    template_new_daily = vim.fn.expand("~/.nb/zettelkasten/templates/daily.md"),
    template_new_weekly = vim.fn.expand("~/.nb/zettelkasten/templates/weekly.md"),
  },
}
