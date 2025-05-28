require 'config.options' --load vim option configs
require 'config.keymaps' --load vim option configs

--Install Lazy Package Manager
local lazypath = vim.fn.stdpath 'data' .. 'lazy/lazy.nvim' --path to install lazy package mgr
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', --latest stable release of lazy package manager
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

--[[
    We will use a filestructure like this.
    .
    ├── init.lua
    └── lua
        ├── config
        └── plugins
            ├── addons -- addon plugins, ones I don't find super necessary
            ├── core -- core plugins, always want these along with lsp stuff
            ├── lsp
            └── themes
--]]

-- Setup themes switcher functionality later
local default_color_scheme = 'onedark'
local env_var_nvim_theme = os.getenv 'NVIM_THEME' or default_color_scheme

local themes = {
    onedark = 'plugins.themes.onedark',
    tokyonight = 'plugins.themes.tokynight',
}

-- Setup plugin loading, all core, all lsp. Theme selection to be added later, addons selected explicitly.
require('lazy').setup {
    spec = {
        { import = themes[env_var_nvim_theme] },
        { import = 'plugins.core' },
        { import = 'plugins.lsp' },
        { import = 'plugins.addons.harpoon' },
    },
}

vim.cmd.colorscheme(env_var_nvim_theme)
