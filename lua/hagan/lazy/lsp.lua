return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "williamboman/mason.nvim",
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "tsserver",
                "pyright",
                "yamlls",
                "lua_ls",
                "golangci_lint_ls",
                "dockerls",
                "cssls",
                "clangd",
                "bashls",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    if server_name == "lua_ls" then
                        -- print("OVERRIDE setting up", server_name)
                        require("lspconfig")[server_name].setup {
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { 'vim', }
                                    }
                                }
                            }
                        }
                    else
                        -- print("setting up ", server_name)
                        require("lspconfig")[server_name].setup {}
                    end
                end,
            },
        })
    end
}
