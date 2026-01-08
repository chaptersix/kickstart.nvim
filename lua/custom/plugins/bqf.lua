-- Better quickfix window
return {
  'kevinhwang91/nvim-bqf',
  ft = 'qf',
  opts = {
    auto_enable = true,
    auto_resize_height = true,
    preview = {
      win_height = 12,
      win_vheight = 12,
      delay_syntax = 80,
      border = 'rounded',
      show_title = true,
    },
    filter = {
      fzf = {
        action_for = { ['ctrl-s'] = 'split', ['ctrl-v'] = 'vsplit' },
        extra_opts = { '--bind', 'ctrl-o:toggle-all', '--prompt', '> ' },
      },
    },
  },
}
