return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls",
				"clangd",
				"gopls",
				"hls", -- this requires ghcup installed: curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | bash
				"lua_ls",
				"rust_analyzer",
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"black", -- python formatter
				"cmakelang",
				"cmakelint", -- CMake linter
				"codelldb", -- C/C++ debugger
				"isort", -- python formatter
				"pylint", -- python linter
				"stylua", -- lua formatter
			},
		})
	end,
}
