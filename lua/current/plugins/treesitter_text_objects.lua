return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },

    config = function()
        local is_treesitter, treesitter = pcall(require, "nvim-treesitter.configs")

        if not is_treesitter then return end

        treesitter.setup({
            textobjects = {
                select = {
                    enable = true, 
                    lookahead = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                    }
                },
            }
        })
    end
}
