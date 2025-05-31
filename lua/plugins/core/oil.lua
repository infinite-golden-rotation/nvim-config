return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
        -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
        default_file_explorer = true,
        -- show hidden files by default
        view_options = { show_hidden = true },

        -- disable keymaps and bind them how I want
        use_default_keymaps = false,
        keymaps = {
            ['g?'] = { 'actions.show_help', mode = 'n' },
            ['<CR>'] = 'actions.select',
            ['<C-s>'] = '<CMD>write<CR>',
            --['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
            ['<C-t>'] = { 'actions.select', opts = { tab = true } },
            ['<C-p>'] = 'actions.preview',
            ['<C-c>'] = { 'actions.close', mode = 'n' },
            ['<C-l>'] = 'actions.refresh',
            ['-'] = { 'actions.parent', mode = 'n' },
            ['_'] = { 'actions.open_cwd', mode = 'n' },
            ['`'] = { 'actions.cd', mode = 'n' },
            ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
            ['gs'] = { 'actions.change_sort', mode = 'n' },
            ['gx'] = 'actions.open_external',
            ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
            ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
        },
    },

    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    priority = 1000,

    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    keys = {
        { '-', '<CMD>Oil<CR>', mode = { 'n' }, desc = 'Oil' },
        { '<leader>-', function() require('oil').toggle_float '.' end, mode = { 'n' }, desc = 'Oil (Float)' },
    },
}
