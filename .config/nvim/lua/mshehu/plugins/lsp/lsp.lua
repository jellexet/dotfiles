return {
    "hrsh7th/cmp-nvim-lsp",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "antosha417/nvim-lsp-file-operations", config = true },
        { "folke/lazydev.nvim", opts = {} },
    },
    config = function()
        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        local clangd_config = require("mshehu.lspconfigs.clangd")
        vim.lsp.config("clangd", clangd_config)

        vim.lsp.config("*", {
            capabilities = capabilities,
        })
        vim.lsp.enable({
            "bashls",
            "clangd",
            "gopls",
            "hls",
            "lua_ls",
            "pylsp",
            "rust_analyzer",
        })
    end,
}
