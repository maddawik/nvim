return {
  "monaqa/dial.nvim",
  keys = {
    {
      "<C-y>",
      function()
        require("dial.map").manipulate("increment", "normal")
      end,
    },
    {
      "<C-e>",
      function()
        require("dial.map").manipulate("decrement", "normal")
      end,
    },
    {
      "g<C-y>",
      function()
        require("dial.map").manipulate("increment", "gnormal")
      end,
    },
    {
      "g<C-e>",
      function()
        require("dial.map").manipulate("decrement", "gnormal")
      end,
    },
    {
      "<C-y>",
      function()
        require("dial.map").manipulate("increment", "visual")
      end,
      mode = "v",
    },
    {
      "<C-e>",
      function()
        require("dial.map").manipulate("decrement", "visual")
      end,
      mode = "v",
    },
    {
      "g<C-y>",
      function()
        require("dial.map").manipulate("increment", "gvisual")
      end,
      mode = "v",
    },
    {
      "g<C-e>",
      function()
        require("dial.map").manipulate("decrement", "gvisual")
      end,
      mode = "v",
    },
  },
}
