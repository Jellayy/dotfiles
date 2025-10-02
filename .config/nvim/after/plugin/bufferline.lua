vim.opt.termguicolors = true
require("bufferline").setup{}
vim.keymap.set("n", "<leader>bb", "<Cmd>BufferLinePick<CR>", {desc = "buffer pick"})
vim.keymap.set("n", "<leader>bc", ":bd<CR>", {desc = "buffer close"})
