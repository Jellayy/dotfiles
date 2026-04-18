vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/MunifTanjim/nui.nvim',
    'https://github.com/nvim-neo-tree/neo-tree.nvim',
})

require('neo-tree').setup({
    filesystem = {
        filtered_items = {
            visible = true,
	    hide_dotfiles = false,
	    hide_gitignored = false,
	}
    },
    window = {
        position = "current",
	mappings = {
            ["<space>"] = 'none'
	}
    }
})
