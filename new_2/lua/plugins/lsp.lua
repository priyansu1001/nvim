return {
    { -- manage LSP servers, DAP servers, linters, and formatters -> mason
        "williamboman/mason.nvim",

        config = function ( )

        require("mason").setup({
        ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
            }
         }
        })
        end
    },

    { -- mason-lspconfig bridges mason.nvim with the lspconfig plugin - making it easier to use both plugins together.
        "williamboman/mason-lspconfig.nvim",

        config = function ( )

        require("mason-lspconfig").setup ({
        ensure_installed = { "lua_ls", "rust_analyzer" }, 
        -- for adding new servers
        -- ensure_installed = { "lua_ls", "rust_analyzer", "new servername" },
        -- then go to nvim-lspconfig
        -- and past this -> lspconfig.lua_ls.setup({})
        })

        end
    },

    { -- nvim lspconfig
        "neovim/nvim-lspconfig",

        config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities() -- provide snippet source to luasnip and cmp-nvim-lsp

        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities
        })
        -- lspconfig.servername.setup({})

        vim.keymap.set('n','K', vim.lsp.buf.hover, {})
        vim.keymap.set('n','gd', vim.lsp.buf.definition, {})    -- crtl+o or crtl +i to come back
        vim.keymap.set({'n'},'<leader>ca', vim.lsp.buf.code_action, {})
        -- to bring back diagnostic -> vim.diagnostic.open_float()
        end
    }


}