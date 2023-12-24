local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_config_" .. name, { clear = true })
end
local create_autocmd = vim.api.nvim_create_autocmd

create_autocmd("FileType", {
  group = augroup("indent"),
  pattern = { "fish" },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
    vim.opt.expandtab = true
  end,
  desc = "Change indenting for fish files",
})

create_autocmd("FileType", {
  group = augroup("autoformat"),
  pattern = { "terraform", "terraform-vars" },
  callback = function()
    vim.b.autoformat = false
  end,
  desc = "Disable autoformat for terraform files",
})

create_autocmd("FileType", {
  group = augroup("whitespace"),
  pattern = { "lazy" },
  callback = function()
    MiniTrailspace.unhighlight()
  end,
  desc = "Disable trailspace for certain buffers",
})
