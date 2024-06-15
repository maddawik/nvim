vim.api.nvim_set_hl(0, "FzfLuaBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "FzfLuaHeaderText", { link = "Function" })
vim.api.nvim_set_hl(0, "FzfLuaLiveSym", { link = "Error" })
vim.api.nvim_set_hl(0, "FzfLuaBufFlagCur", { link = "String" })
vim.api.nvim_set_hl(0, "FzfLuaPathLineNr", { link = "Exception" })

return {
  "ibhagwan/fzf-lua",
  config = function()
    vim.api.nvim_set_hl(0, "FzfLuaBorder", { link = "FloatBorder" })
    vim.api.nvim_set_hl(0, "FzfLuaHeaderText", { link = "Function" })
    vim.api.nvim_set_hl(0, "FzfLuaLiveSym", { link = "Error" })
  end,
  keys = {
    {
      "<leader>fl",
      function()
        require("fzf-lua").files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Files (lazy)",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").files({ cwd = vim.fn.expand("~/") })
      end,
      desc = "Find Files (~)",
    },
  },
}
