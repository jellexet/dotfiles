-- This file modifies nvim-cmp to add the clangd_extensions sorter.
return {
	"hrsh7th/nvim-cmp",
	optional = true, -- Load only if nvim-cmp is present
	dependencies = {
		"p00f/clangd_extensions.nvim", -- Make sure clangd_extensions is loaded
	},
	opts = function(_, opts)
		-- Merge new options into nvim-cmp's existing options
		opts.sorting = opts.sorting or {}
		opts.sorting.comparators = opts.sorting.comparators or {}

		-- Insert the clangd comparator at the beginning of the list
		table.insert(opts.sorting.comparators, 1, require("clangd_extensions.cmp_scores"))
	end,
}
