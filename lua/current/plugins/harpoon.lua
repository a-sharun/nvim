return {
    "ThePrimeagen/harpoon",

    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function ()
        local is_harpoon, harpoon = pcall(require, "harpoon")

        if not is_harpoon then return end

        harpoon.setup({

        })
    end
}
