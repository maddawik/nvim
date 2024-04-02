local function pickTheme()
  -- Check if we are in a work directory
  if string.match(vim.fn.getcwd() or "", "work") then
    return { symbols = { "🦊", "🔒", "💻" }, colors = {} }
  end

  -- Small chance of stars
  math.randomseed(os.time())
  if math.random() > 0.98 then
    return "stars"
  else
    return { symbols = { "💻", "👱", " ", " " }, colors = { "#00ADD8" } }
  end
end

return {
  {
    "catdadcode/drop.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local thanksgiving_day = require("drop").calculate_us_thanksgiving(os.date("%Y"))
      opts.theme = pickTheme()
      opts.holidays = {
        halloween = {
          start_date = { month = 10, day = 1 },
          end_date = { month = 10, day = 31 },
        },
        us_thanksgiving = {
          start_date = { month = 11, day = 10 },
          end_date = thanksgiving_day,
        },
        xmas = {
          start_date = { month = 12, day = 1 },
          end_date = { month = 12, day = 25 },
        },
      }
      opts.winblend = 50
      opts.filetypes = {}
      opts.screensaver = 1000 * 60 * 30
    end,
  },
}
