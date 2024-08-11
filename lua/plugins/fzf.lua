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
