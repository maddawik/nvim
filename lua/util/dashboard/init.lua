local M = {}

M.get_quote = function()
  local quotes = require("util.dashboard.quotes")
  math.randomseed(os.time())
  return quotes[math.random(#quotes)]
end

return M
