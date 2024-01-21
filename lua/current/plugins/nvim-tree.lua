return {
    "nvim-tree/nvim-tree.lua",

    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local is_nvim_tree, nvim_tree = pcall(require, "nvim-tree")

        if not is_nvim_tree then return end

        local HEIGHT_RATIO = 0.8
        local WIDTH_RATIO = 0.5


        nvim_tree.setup({
            view = {
                float = {
                    enable = false,
                    open_win_config = function()
                        local screen_w = vim.opt.columns:get()
                        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                        local window_w = screen_w * WIDTH_RATIO
                        local window_h = screen_h * HEIGHT_RATIO
                        local window_w_int = math.floor(window_w)
                        local window_h_int = math.floor(window_h)
                        local center_x = (screen_w - window_w) / 2
                        local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()

                        return {
                            border = 'rounded',
                            relative = 'editor',
                            row = center_y,
                            col = center_x,
                            width = window_w_int,
                            height = window_h_int,
                        }
                    end,
                }
            }
        })

        local tree_view = require("nvim-tree.view")

        vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", {silent = true, noremap = true})


        vim.api.nvim_create_augroup("NvimTreeResize", {
            clear = true,
        })

        vim.api.nvim_create_autocmd({ "VimResized" }, {
            group = "NvimTreeResize",
            callback = function()
                if tree_view.is_visible() then
                    tree_view.close()
                    tree_api.open()
                end
            end
        })
    end
}
