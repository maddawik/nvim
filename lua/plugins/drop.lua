function GetCurrentSeason(month)
  math.randomseed(os.time())
  local n = math.random()
  if n > 0.98 then
    return "stars"
  end
  if month == 12 then
    if n > 0.3 then
      return "xmas"
    else
      return "snow"
    end
  elseif month == 1 or month == 2 then
    return "snow"
  elseif month >= 3 and month <= 5 then
    return "spring"
  elseif month >= 6 and month == 8 then
    return "summer"
  elseif month >= 9 and month <= 11 then
    return "leaves"
  end
end

return {
  "folke/drop.nvim",
  event = "VeryLazy",
  enabled = true,
  config = function()
    require("drop").setup({
      filetypes = {},
      winblend = 50,
      screensaver = 1000 * 60 * 60, -- 1 hour
      theme = GetCurrentSeason(os.date("*t", os.time()).month),
    })
  end,
}
