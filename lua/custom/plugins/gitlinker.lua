-- Copy git permalinks (GitHub/GitLab/etc)
return {
  'ruifm/gitlinker.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>gy',
      function()
        require('gitlinker').get_buf_range_url 'n'
      end,
      desc = 'Copy git permalink',
    },
  },
  opts = {
    mappings = nil, -- disable default mappings, using keys above
  },
}
