-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- I absolutely DESPISE which-key's buffer navigation. Rebind <leader>bb to bufferline's pick
vim.keymap.set("n", "<leader>bb", "<cmd>BufferLinePick<cr>", { desc = "Select buffer from bufferline" })
