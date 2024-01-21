return {
    "rose-pine/neovim",
    name = "rose-pine",

    config = function()
        local is_colorscheme, colorscheme = pcall(require, "rose-pine")

        if not is_colorscheme then return end

        colorscheme.setup({
            variant = "main",
            dark_variant = "main",
            dim_inactive_windows = false,
            extend_background_behind_borders = true,

            styles = {
                bold = false,
                italic = false,
                transparency = false
            }
        })

        vim.cmd('colorscheme rose-pine')
    end
}
