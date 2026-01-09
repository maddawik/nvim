local M = {}

M.rand_num = function()
  math.randomseed(os.time())
  return math.random()
end

M.get_quote = function()
  local quotes = require("util.dashboard.quotes")
  return quotes[math.random(#quotes)]
end

return M
