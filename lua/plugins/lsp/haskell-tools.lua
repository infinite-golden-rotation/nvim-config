--local ht = require 'haskell-tools'
--local hask = 'Haskell: '
--local bufnr = vim.api.nvim_get_current_buf()
--
----map keybinds
--local map = function(keys, func, desc, mode)
--    local opts = { noremap = true, silent = true, buffer = bufnr, desc = 'Haskell: ' .. desc }
--    mode = mode or 'n'
--    vim.keymap.set(mode, keys, func, opts)
--end
---- haskell-language-server relies heavily on codeLenses,
---- so auto-refresh (see advanced configuration) is enabled by default
--map('<leader>cl', vim.lsp.codelens.run, '[C]ode[L]ens')
---- Hoogle search for the type signature of the definition under the cursor
--map('<leader>hs', ht.hoogle.hoogle_signature, '[H]oogle Search [S]ignature')
---- Evaluate all code snippets
--map('<leader>ha', ht.lsp.buf_eval_all, 'Evaluate [A]ll Snippets')
---- Toggle a GHCi repl for the current package
--map('<leader>hr', ht.repl.toggle, 'Toggle [R]epl')
---- Toggle a GHCi repl for the current buffer
--map('<leader>hb', function() ht.repl.toggle(vim.api.nvim_buf_get_name(0)) end, 'Toggle Repl for [B]uffer')
return {
    'mrcjkb/haskell-tools.nvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
}
