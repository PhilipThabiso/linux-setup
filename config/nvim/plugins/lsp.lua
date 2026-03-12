return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				gopls = {
					settings = {
						gopls = {
							analyses = {
								unusedparams = true,
							},
							staticcheck = true,
							gofumpt = true,
						},
					},
				},
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = { globals = { "vim" } },
						},
					},
				},
			},
		},
	},
}
