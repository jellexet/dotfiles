-- init.lua

-- 4 spaces TAB
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- Install lazy.nvim (plugin manager) if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup({
  {"neovim/nvim-lspconfig"},
  {"williamboman/mason.nvim", config = true},
  {"williamboman/mason-lspconfig.nvim"},
  {"hrsh7th/nvim-cmp", dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip"
  }},
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"}},

  -- Add Rose Pine theme
  {
    "rose-pine/neovim", 
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        -- Optional: customize the theme
        -- variant = "moon", -- Options: 'auto', 'main', 'moon', or 'dawn'
        -- dark_variant = "main", -- Main is default for dark
        -- disable_background = false,
        -- disable_float_background = false,
        -- disable_italics = false,
      })
      
      -- Set colorscheme after options
      vim.cmd("colorscheme rose-pine")
    end
  },
})

-- LSP settings
local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"clangd", "rust_analyzer", "gopls"},
  handlers = {
    function(server) lspconfig[server].setup({capabilities = require("cmp_nvim_lsp").default_capabilities()}) end,
  },
})

-- Treesitter
require("nvim-treesitter.configs").setup {
  ensure_installed = {"c", "cpp", "rust", "haskell", "go"},
  highlight = { enable = true },
}

-- Completion
local cmp = require("cmp")
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  })
}

-- Telescope
require("telescope").setup {}
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })

