return {
  'github/copilot.vim',
  lazy = false,
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}
