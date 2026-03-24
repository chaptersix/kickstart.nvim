-- Spectre - project-wide search and replace
return {
  'nvim-pack/nvim-spectre',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = 'Spectre',
  keys = {
    {
      '<leader>rr',
      function()
        require('spectre').open()
      end,
      desc = '[R]eplace (Spectre)',
    },
    {
      '<leader>rc',
      function()
        require('spectre').close()
      end,
      desc = '[R]eplace (Spectre)',
    },
    {
      '<leader>rw',
      function()
        require('spectre').open_visual { select_word = true }
      end,
      desc = '[R]eplace current [W]ord',
    },
    {
      '<leader>rf',
      function()
        require('spectre').open_file_search { select_word = true }
      end,
      desc = '[R]eplace in [F]ile',
    },
  },
  opts = {
    open_cmd = 'noswapfile vnew',
    live_update = true,
  },
}
