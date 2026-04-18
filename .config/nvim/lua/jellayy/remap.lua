vim.g.mapleader = " "

-- neo-tree
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree<CR>", { desc = "neo-tree" })

-- window navigation (ctrl+hjkl)
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "move to left window" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "move to lower window" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "move to upper window" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "move to right window" })

-- shift+yank to yank to system clipboard
vim.keymap.set('v', 'Y', '"+y', { noremap = true, silent = true })
