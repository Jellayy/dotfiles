-- I had Claude write this to make pyright work with Anaconda
-- Suprisingly, it works.

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          before_init = function(_, config)
            -- This will detect the active conda environment
            local env_path = vim.fn.getenv("CONDA_PREFIX")
            if env_path ~= vim.NIL and env_path ~= "" then
              -- Set Python path to the conda environment's Python
              config.settings.python.pythonPath = env_path .. "/bin/python"
            end
          end,
          settings = {
            python = {
              analysis = {
                -- Enable all diagnostics
                diagnosticMode = "workspace",
                -- Use library execution environment for type checking
                useLibraryCodeForTypes = true,
                -- Add paths if needed
                extraPaths = {},
              },
            },
          },
        },
      },
    },
  },
}
