return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            -- list of servers for mason to install
            ensure_installed = {
                "bashls",
                "clangd",
                "gopls",
                "hls", -- this requires ghcup installed: curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | bash
                "lua_ls",
                "pylsp",
                "rust_analyzer",
            },
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗",
                        },
                    },
                },
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "black", -- python formatter
                "cmakelang",
                "cmakelint", -- CMake linter
                "codelldb", -- C/C++ debugger
                "isort", -- python formatter
                "pylint", -- python linter
                "shfmt", -- bash formatter
                "stylua", -- lua formatter
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
}
