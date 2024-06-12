-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Custom Keybinds
vim.keymap.set('n', '-', ':Ex<CR>')
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('n', '<leader>w', ':w<CR>')

vim.keymap.set('n', '<leader>v', ':vsp ~/.config/nvim/lua/custom/plugins/init.lua<CR>')
vim.keymap.set('n', '<leader>d', ':vsp %:h/<c-z>')
vim.keymap.set('n', '<leader>e', ':e %:h/<c-z>')

-- Config
vim.opt.termguicolors = true

return {}
