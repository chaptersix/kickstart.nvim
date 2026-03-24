-- Octo.nvim - GitHub PRs in Neovim
return {
  'pwntester/octo.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  cmd = 'Octo',
  keys = {
    { '<leader>go', '<cmd>Octo pr list<cr>', desc = 'Octo PR list' },
    { '<leader>gr', '<cmd>Octo pr search<cr>', desc = 'Octo PR search' },
  },
  opts = {},
}
