local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_config_" .. name, { clear = true })
end
local create_autocmd = vim.api.nvim_create_autocmd

create_autocmd("LspAttach", {
  desc = "Enable inlay hints",
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.server_capabilities.inlayHintProvider then
      if vim.lsp.inlay_hint ~= nil then
        vim.lsp.inlay_hint.enable(args.buf, true)
      end
    end
    -- whatever other lsp config you want
  end,
})

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

create_autocmd("FileType", {
  desc = "Disable autoformat for terraform files",
  group = augroup("autoformat"),
  pattern = { "terraform", "terraform-vars" },
  callback = function()
    vim.bo.autoformat = false
  end,
})

create_autocmd("FileType", {
  desc = "Disable colorcolumn for NeogitStatus",
  group = augroup("colorcolumn"),
  pattern = { "NeogitStatus" },
  callback = function()
    vim.opt.colorcolumn = "0"
  end,
})
