-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Custom Keybinds
vim.keymap.set('n', '-', ':Oil<CR>')
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('n', '<leader>w', ':w<CR>')

vim.keymap.set('n', '<leader>v', ':vsp ~/.config/nvim/lua/custom/plugins/init.lua<CR>')
vim.keymap.set('n', '<leader>d', ':vsp %:h/<c-z>')
vim.keymap.set('n', '<leader>e', ':e %:h/<c-z>')

-- Config
vim.opt.termguicolors = true

-- Trim triling whitespace on save, persisting cursor position
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*' },
  callback = function(ev)
    local save_cursor = vim.fn.getpos '.'
    vim.cmd [[%s/\s\+$//e]]
    vim.fn.setpos('.', save_cursor)
  end,
})

return {}
