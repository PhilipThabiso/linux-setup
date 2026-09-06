return {
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		opts = {
			highlights = {
				["@variable.parameter"] = { fg = "NONE" },
				["@variable.member"] = { fg = "NONE" },
				["@property"] = { fg = "NONE" },
				["@variable "] = { fg = "NONE" },
				-- ["@function "] = { fg = "Normal" },
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "onedark",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"go",
				"lua",
				"vim",
				"vimdoc",
				"query",
			},
			highlight = {
				enable = true,
			},
		},
	},
}
