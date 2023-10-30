local on_attach = function(_ , bufnr)

	local bufmap = function(keys, func)
		vim.keymap.set('n', keys, func, {buffer = bufnr})
	end

	bufmap('<leader>r',vim.lsp.buf.rename)
	bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
	bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)
	vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
		vim.lsp.buf.format()
	end,{})

end
-- adding lua LSP
local capabilities = vim.lsp.protocol.make_client_capabilities()

--adding mason
require("mason").setup()
require("mason-lspconfig").setup_handlers({
 function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,

    ["lua_ls"] = function()
				require('neodev').setup()
        require('lspconfig').lua_ls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    workspace = { checkThirdParty = false },
                    telemetry = { enable = true }
                },
            }
        }
    end
	})
