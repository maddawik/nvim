local M = {}

M.rand_num = function()
  math.randomseed(os.time())
  return math.random()
end

M.get_header = function()
  local headers = require("util.dashboard.headers")
  return headers[os.date("*t").wday] .. "\n" .. os.date("%B %d, %Y")
end

M.get_quote = function()
  local quotes = require("util.dashboard.quotes")
  return quotes[math.random(#quotes)]
end

return M
