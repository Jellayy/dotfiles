vim.pack.add({ 'https://github.com/akinsho/bufferline.nvim' })

vim.opt.termguicolors = true
require("bufferline").setup()
vim.keymap.set("n", "<leader>b", "<Cmd>BufferLinePick<CR>", { desc = "buffer pick" })
vim.keymap.set("n", "<leader>c", ":bd<CR>", { desc = "buffer close", silent = true })
