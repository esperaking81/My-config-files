local M = {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" },
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-nvim-lua" },
		{
			"tzachar/cmp-tabnine",
			build = "./install.sh",
			dependencies = "hrsh7th/nvim-cmp",
		},

		-- Snippets
		{ "L3MON4D3/LuaSnip" },
		{ "rafamadriz/friendly-snippets" },
	},
}

function M.config()
	require("mason.settings").set({
		ui = {
			border = "rounded",
		},
	})

	local lsp = require("lsp-zero").preset("recommended")

	-- the function below will be executed whenever
	-- a language server is attached to a buffer
	lsp.on_attach(function(client, bufnr)
		local handlers = require("iamespera.lsp.handlers")
		handlers.enable_format_on_save(_, bufnr)
	end)

	local cmp = require("cmp")
	local cmp_sources = {
		{ name = "cmp_tabnine" },
		{ name = "nvim_lsp" },
	}

	local cmp_select = { behavior = cmp.SelectBehavior.Select }
	local cmp_mappings = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
	})

	cmp.setup({
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		sources = cmp_sources,
		mapping = cmp_mappings,
	})

	lsp.setup()
end

return M
