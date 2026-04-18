vim.pack.add({
    'https://github.com/rafamadriz/friendly-snippets',
    'https://github.com/saghen/blink.cmp',
    'https://github.com/neovim/nvim-lspconfig',
})

require("blink.cmp").setup({
    keymap = { preset = 'super-tab' },
    appearance = { nerd_font_variant = 'mono' },
    completion = { documentation = { auto_show = true } },
    signature = { enabled = true },
    fuzzy = { implementation = "lua" },
})

local capabilities = require("blink.cmp").get_lsp_capabilities()

for _, server in ipairs({
    "pyright",
    "terraformls",
    "eslint",
    "html",
}) do
    vim.lsp.config(server, { capabilities = capabilities })
    vim.lsp.enable(server)
end

-- specific lua config to define 'vim' as a global
vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})
vim.lsp.enable("lua_ls")

vim.keymap.set("n", "<leader>F", function() vim.lsp.buf.format() end, { desc = 'Format (LSP)' })
