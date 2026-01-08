return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
               __m▒░▒▒▒▒╚╚╚╙²²^ªªª````````ªª²╙╚▒▒░░░░░░░░░▒▒@%mm∞¬_____▒░░░░░░░░
                                                    `²▒▒░░░░░░░░░░░░░░░░░░░░░░░░
                                                         ª╚▒░░░░░░░░░░░░░░░░░░░░
                                                            `╙▒░░░░░░░░░░░░░░░░░
                                     _     _  ___ ___          `▒░░░░░░░░░░░░░░░
                               ¬  ` `      `    ⁿ-ª=²`¿%m_        ²▒░░░░░░░░░░░░
                                                   ,      ¬]≈_      ª▒░░░░░░░░░░
                           ▄▄r               ▄▄█▄  █▄L█ ▄ _``  ∞_     `▒░░░░░░░░
                      ▄▄█╓███ ⌐  .          ▀███▀` ▐███ █_█▌L,  «▒▒_     ╙░░░░░░
                   ,▒███████▌!░░░░░           ▒░░m⌐ ██████▐█▌▐▌┌  ^²▒▒m_   ²▒░░░
               _∩▒▒▒░███████▌ª░░░▒▒           ▒░░░  ████████▌██▐   º4▒░▒░▒░▒u²░░
           _@ ▒▒░░░░░████████ ▓▒▒▒▒▒_      _¿▒░░░░ █████████████▄▄▒   ¢▒░░░░░▒ú░
          J_ª²╚▒▒░░░░░████████_╚▒▒▒▒░░▒▒]▒▒▒░░░░▒ ▄██████████████▌∩¢░¢ `▒░░░░░░░
             `²∞m√J_ª²╚████████▄_╙▓▒▒▒░▒▒░▒▒▒▒╝`▄███████████████▀░░░░▒²u ª░░░░░░
                   `²▒▒▒W≡m▀▀▀▀▀██▄▄_²²╚²╧╜└_▄▄████████▀▀▀▀▀▀▀▀░___⌐⌐¿▒░m ª░░░░░
                            `ª²²╙╚╚▒▒▒▒▒▒▒░░░░░░░▒▒▒▒▒▒▒▒▒▒░░░░░▒▒▒░░░░░░  ░░░░░
                           ___⌐∞mm ∩¢▒  @ Æ@  ⌡_]∞]m]░░░░▒Å²]]╔@▒░░░░░░░░▒ ░░░░░
                        ª²╚▒▒▒░░░░▒▒░░]]░J░░▒▒▒▒∩▒∞²ª`__¿¢▒░░░░░░░░░░░░░░░▒░░░░░
                                                __m@▒░░░░░░░░░░░░░░░░░░░░░░░░░░░
                                         __¿m▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
]],
      },
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1, padding = 1 },
        { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1, limit = 5 },
        { section = 'startup' },
      },
    },
    explorer = {
      enabled = true,
      replace_netrw = false, -- using telescope on directory open instead
    },
    picker = {
      hidden = true,
      ignored = false,
    },
    scroll = { enabled = false },
    indent = { enabled = true },
    notifier = {
      enabled = false, -- Using noice.nvim + nvim-notify instead
    },
    quickfile = {
      enabled = true,
    },
    statuscolumn = {
      enabled = true,
    },
    terminal = {
      win = {
        style = 'terminal',
        position = 'bottom',
        height = 0.3,
      },
    },
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true }, -- Wrap notifications
      },
    },
  },
  keys = {
    {
      '<leader>un',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Dismiss All Notifications',
    },
    {
      '<leader>uN',
      '<cmd>Telescope notify<cr>',
      desc = 'Notification History',
    },
    {
      '<leader>bd',
      function()
        Snacks.bufdelete()
      end,
      desc = 'Delete Buffer',
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>gb',
      function()
        Snacks.git.blame_line()
      end,
      desc = 'Git Blame Line',
    },
    {
      '<leader>gB',
      function()
        Snacks.gitbrowse()
      end,
      desc = 'Git Browse',
    },
    {
      '<leader>gf',
      function()
        Snacks.lazygit.log_file()
      end,
      desc = 'Lazygit Current File History',
    },
    {
      '<leader>gl',
      function()
        Snacks.lazygit.log()
      end,
      desc = 'Lazygit Log (cwd)',
    },
    {
      '<leader>cR',
      function()
        Snacks.rename.rename_file()
      end,
      desc = 'Rename File',
    },
    {
      '<leader>z',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
    },
    {
      '<leader>tt',
      function()
        Snacks.terminal()
      end,
      desc = 'Toggle Terminal',
    },
    {
      ']]',
      function()
        Snacks.words.jump(vim.v.count1)
      end,
      desc = 'Next Reference',
      mode = { 'n', 't' },
    },
    {
      '[[',
      function()
        Snacks.words.jump(-vim.v.count1)
      end,
      desc = 'Prev Reference',
      mode = { 'n', 't' },
    },
    {
      '<leader>D',
      function()
        Snacks.dashboard()
      end,
      desc = 'Dashboard',
    },
    {
      '\\',
      function()
        Snacks.explorer()
      end,
      desc = 'Explorer',
    },
  },
}
