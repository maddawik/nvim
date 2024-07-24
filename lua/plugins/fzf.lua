local hl = vim.api.nvim_set_hl
hl(0, "FzfLuaBorder", { link = "FloatBorder" })
hl(0, "FzfLuaHeaderText", { link = "Function" })
hl(0, "FzfLuaLiveSym", { link = "Error" })
hl(0, "FzfLuaBufFlagCur", { link = "String" })
hl(0, "FzfLuaPathLineNr", { link = "Exception" })

return {
  "ibhagwan/fzf-lua",
  keys = {
    {
      "<leader>fl",
      function()
        require("fzf-lua").files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Files (lazy)",
    },
  },
}
