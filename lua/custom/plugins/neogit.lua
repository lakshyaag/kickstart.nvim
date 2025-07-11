return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    require('neogit').setup {}
    vim.keymap.set('n', '<leader>gg', ':Neogit<CR>', { desc = 'Open Neogit' })
  end,
}
