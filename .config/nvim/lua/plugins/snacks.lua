-- show hidden files by default in sidebar

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
        },
      },
    },
  },
}
