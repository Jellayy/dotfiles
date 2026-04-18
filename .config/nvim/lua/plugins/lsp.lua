return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp"
        },
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()

            local lsp = require("lspconfig")
            lsp.pyright.setup { capabilities = capabilities }
            lsp.lua_ls.setup { capabilities = capabilities }
            lsp.terraformls.setup {capabilities = capabilities }
            lsp.ts_ls.setup { capabilities = capabilities }

            vim.keymap.set("n", "<space>F", function() vim.lsp.buf.format() end, { desc = 'Format (LSP)' })
        end,
    }
}
