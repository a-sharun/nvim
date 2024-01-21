return {
    "williamboman/mason-lspconfig.nvim",

    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },

    config = function()
        local is_mason, mason = pcall(require, "mason")
        local is_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")

        if not (is_mason and is_mason_lspconfig) then return end

        mason.setup({
            ui = {
                border = "rounded",
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "cssls",
                "html",
                "tsserver",
                "pyright",
                "bashls",
                "jsonls",
            },
        })
    end
}
