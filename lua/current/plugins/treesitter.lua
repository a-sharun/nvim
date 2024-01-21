return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",

    config = function()
        local is_treesitter, treesitter = pcall(require, "nvim-treesitter.configs")

        if not is_treesitter then return end

        treesitter.setup({
            ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "javascript", "typescript" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
