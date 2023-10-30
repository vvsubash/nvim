return {
			{
				"numToStr/Comment.nvim",
				config = function()
								require("Comment").setup()
				end,
			},
			{
				"ellisonleao/gruvbox.nvim",
				priority = 1000,
				config = function()
					vim.cmd("colorscheme gruvbox")
				end,
			},
			{
				"nvim-lualine/lualine.nvim",
				dependencies = {
					"nvim-tree/nvim-web-devicons"
				},
				config = function()
					require("lualine").setup({
						icons_enabled = true,
						theme = 'gruvbox',
					})
				end,
			},
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"folke/neodev.nvim",
			{
			"nvim-telescope/telescope.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },

			},
			{
				'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
			},

		 {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
			{
				"hrsh7th/nvim-cmp",
				dependencies = {
					"L3MON4D3/LuaSnip",
					"saadparwaiz1/cmp_luasnip",
					"rafamadriz/friendly-snippets",
					"hrsh7th/cmp-nvim-lsp",
				}
			}
}
