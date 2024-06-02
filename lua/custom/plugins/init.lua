-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Custom Keybinds
vim.keymap.set('n', '-', ':Ex<CR>')
vim.keymap.set('i', 'jk', '<ESC>')

vim.keymap.set('n', '<leader>v', ':vsp ~/.config/nvim/lua/custom/plugins/init.lua<CR>')
vim.keymap.set('n', '<leader>d', ':vsp %:h/<c-z>')
vim.keymap.set('n', '<leader>e', ':e %:h/<c-z>')
-- vim.key

-- Initialize lsp_signatures for intellisense
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if vim.tbl_contains({ 'null-ls' }, client.name) then -- blacklist lsp
      return
    end
    require('lsp_signature').on_attach({
      -- ... setup options here ...
    }, bufnr)
  end,
})

return {}
