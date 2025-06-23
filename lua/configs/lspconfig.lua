require("nvchad.configs.lspconfig").defaults()

local servers = { "stylua", "html", "cssls", "gopls", "pyrefly", "zls", "ts_ls", "clang", "tailwindcss" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
