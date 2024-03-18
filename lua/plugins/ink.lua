return {
  {
    "ahayworth/ink-syntax-vim",
    ft = "ink",
  },
  {
    "nvimtools/none-ls.nvim",
    ft = "ink",
    config = function()
      local nls = require("null-ls")
      local helpers = require("null-ls.helpers")
      local inklecate = {
        method = nls.methods.DIAGNOSTICS,
        filetypes = { "ink" },
        -- null_ls.generator creates an async source
        -- that spawns the command with the given arguments and options
        generator = nls.generator({
          command = "inklecate",
          args = { "$FILENAME" },
          to_stdin = false,
          from_stderr = false,
          -- choose an output format (raw, json, or line)
          format = "line",
          check_exit_code = function(code, stderr)
            local success = code <= 1
            if not success then
              -- can be noisy for things that run often (e.g. diagnostics), but can
              -- be useful for things that run on demand (e.g. formatting)
              print(stderr)
            end
            return success
          end,
          -- use helpers to parse the output from string matchers,
          -- or parse it manually with a function
          on_output = helpers.diagnostics.from_patterns({
            {
              pattern = [[([^:]+): '([^']+)' line (%d+): (.*)]],
              groups = { "severity", "filename", "row", "message" },
              overrides = {
                severities = {
                  ["ERROR"] = 1,
                  ["WARNING"] = 2,
                  ["TODO"] = 3,
                },
              },
            },
          }),
        }),
      }
      nls.register(inklecate)
    end,
  },
}
