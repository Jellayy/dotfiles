require("jellayy.remap")

vim.opt.number = true
vim.opt.relativenumber = true

-- enable tooltips to the right of code for LSP stuff
vim.diagnostic.config({ virtual_text = true })

-- default tab spacing settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- tab spacing settings for filetypes that should only have two spaces
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "yaml", "yml", "terraform", "hcl" },
    callback = function()
	vim.opt_local.tabstop = 2
	vim.opt_local.shiftwidth = 2
	vim.opt_local.expandtab = true
    end,
})
