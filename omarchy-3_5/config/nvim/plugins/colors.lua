return {
	{
		"uga-rosa/ccc.nvim",
		opts = {
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		},
		config = function(_, opts)
			require("ccc").setup(opts)
		end,
	},
}
