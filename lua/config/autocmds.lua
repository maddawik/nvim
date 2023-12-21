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

vim.api.nvim_create_autocmd({ "FileType" }, {
	group = augroup("autoformat"),
	pattern = { "terraform", "terraform-vars" },
	callback = function()
		vim.b.autoformat = false
	end,
	desc = "Disable autoformat for terraform files",
})
