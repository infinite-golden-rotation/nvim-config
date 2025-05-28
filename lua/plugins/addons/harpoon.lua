return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require 'harpoon'
        harpoon:setup {}

        -- -- Use Telescope as a UI
        -- local conf = require('telescope.config').values
        -- local function toggle_telescope(harpoon_files)
        --   local file_paths = {}
        --   for _, item in ipairs(harpoon_files.items) do
        --     table.insert(file_paths, item.value)
        --   end
        --
        --   require('telescope.pickers')
        --     .new({}, {
        --       prompt_title = 'Harpoon',
        --       finder = require('telescope.finders').new_table {
        --         results = file_paths,
        --       },
        --       previewer = conf.file_previewer {},
        --       sorter = conf.generic_sorter {},
        --     })
        --     :find()
        -- end
        --
        -- vim.keymap.set('n', '<leader>M', function()
        --   toggle_telescope(harpoon:list())
        -- end, { desc = 'Open harpoon window' })
    end,
    keys = {
        {
            '<leader>M',
            function() require('harpoon'):list():add() end,
            mode = { 'n' },
            desc = 'Harpoon to List',
        },
        {
            '<leader>m',
            function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end,
            mode = { 'n' },
            desc = 'Harpoon UI',
        },
        {
            '<leader>1',
            function() require('harpoon'):list():select(1) end,
            mode = { 'n' },
            desc = 'Harpoon<1>',
        },
        {
            '<leader>2',
            function() require('harpoon'):list():select(2) end,
            mode = { 'n' },
            desc = 'Harpoon<2>',
        },
        {
            '<leader>3',
            function() require('harpoon'):list():select(3) end,
            mode = { 'n' },
            desc = 'Harpoon<3>',
        },
        {
            '<leader>4',
            function() require('harpoon'):list():select(4) end,
            mode = { 'n' },
            desc = 'Harpoon<4>',
        },
        {
            '<leader>5',
            function() require('harpoon'):list():select(5) end,
            mode = { 'n' },
            desc = 'Harpoon<5>',
        },
        {
            '<leader>p',
            function() require('harpoon'):list():prev() end,
            mode = { 'n' },
            desc = 'Harpoon<prev>',
        },
        {
            '<leader>n',
            function() require('harpoon'):list():next() end,
            mode = { 'n' },
            desc = 'Harpoon<next>',
        },
    },
}
