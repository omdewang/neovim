return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls","tsserver","clangd","unocss","html","jdtls","kotlin_language_server","remark_ls","pyright","sqlls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.clangd.setup({})
            lspconfig.unocss.setup({})
            lspconfig.html.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.kotlin_language_server.setup({})
            lspconfig.remark_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.sqlls.setup({})
            vim.keymap.set('n','k',vim.lsp.buf.hover,{})
            vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
            vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})
        end
    }
}
