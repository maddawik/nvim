local function augroup(name)
  return vim.api.nvim_create_augroup("user." .. name, {})
end
local create_autocmd = vim.api.nvim_create_autocmd

create_autocmd("FileType", {
  desc = "Change indenting for fish files",
  group = augroup("indent"),
  pattern = { "fish" },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
    vim.opt.expandtab = true
  end,
})
