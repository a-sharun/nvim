return {
    "epwalsh/obsidian.nvim",

    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function ()
        local is_obsidian, obsidian = pcall(require, "obsidian")

        if not is_obsidian then return end

        obsidian.setup({
            workspaces = {
                {
                    name = "personal",
                    path = "/mnt/c/Documents and Settings/asharu/Documents/my/obsidian/vaults/personal",
                }
            },
        })


    end
}
