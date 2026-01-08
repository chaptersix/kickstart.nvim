-- Copy git permalinks (GitHub/GitLab/etc)
return {
  'ruifm/gitlinker.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>gy', function() require('gitlinker').get_buf_range_url('n') end, desc = 'Copy git permalink' },
    { '<leader>gy', function() require('gitlinker').get_buf_range_url('v') end, mode = 'v', desc = 'Copy git permalink (selection)' },
    { '<leader>gY', function() require('gitlinker').get_repo_url() end, desc = 'Copy repo URL' },
  },
  opts = {
    mappings = nil, -- disable default mappings, using keys above
  },
}
