return {
    'nvim-lualine/lualine.nvim',

    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        local is_lualine, lualine = pcall(require, "lualine")

        if not is_lualine then return end


        lualine.setup({
            options = {
                theme = {
                    normal = {
                        a = { fg = '#88c0d0', bg = '#2e3440', gui = 'italic' },
                        b = { fg = '#88c0d0', bg = '#3b4252' },
                        c = { fg = '#d8dee9', bg = '#2e3440' },
                        x = { fg = '#88c0d0', bg = '#2e3440' },
                        y = { fg = '#88c0d0', bg = '#2e3440' },
                        z = { fg = '#88c0d0', bg = '#2e3440' },
                    },
                    insert = {
                        a = { fg = '#88c0d0', bg = '#2e3440', gui = 'italic' },
                    },
                    visual = {
                        a = { fg = '#88c0d0', bg = '#2e3440', gui = 'italic' },
                    },
                    replace = {
                        a = { fg = '#88c0d0', bg = '#2e3440', gui = 'italic' },
                    },
                    command = {
                        a = { fg = '#88c0d0', bg = '#2e3440', gui = 'italic' },
                    },
                    inactive = {
                        a = { fg = '#4c566a', bg = '#2e3440', gui = 'italic' },
                        b = { fg = '#4c566a', bg = '#2e3440' },
                        c = { fg = '#4c566a', bg = '#2e3440' },
                        x = { fg = '#4c566a', bg = '#2e3440' },
                        y = { fg = '#4c566a', bg = '#2e3440' },
                        z = { fg = '#4c566a', bg = '#2e3440' },
                    },
                },
                component_separators = {'', ''},  -- Rounded separators
                section_separators = {'', ''},    -- Rounded separators
                icons_enabled = true,
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'},
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {},
            },
        })

    end
}
