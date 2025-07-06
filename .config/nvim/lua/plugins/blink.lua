return {
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',

        opts = {
            keymap = { preset = 'super-tab' },

            appearance = {
                nerd_font_variant = 'mono'
            },

            -- show documentation when selecting completion
            completion = { documentation = { auto_show = true } },

            -- show documenation while inside function call (signature)
            signature = { enabled = true },
        },
        opts_extend = { "sources.default" }
    }
}
