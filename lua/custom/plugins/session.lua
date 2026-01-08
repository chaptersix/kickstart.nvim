-- Session management (auto-save/restore)
return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {
    dir = vim.fn.stdpath 'state' .. '/sessions/',
    need = 1, -- minimum number of buffers to save
    branch = true, -- include git branch in session name
  },
  keys = {
    { '<leader>qs', function() require('persistence').load() end, desc = 'Restore Session' },
    { '<leader>ql', function() require('persistence').load { last = true } end, desc = 'Restore Last Session' },
    { '<leader>qd', function() require('persistence').stop() end, desc = "Don't Save Current Session" },
  },
  init = function()
    -- Auto-save session on exit
    vim.api.nvim_create_autocmd('VimLeavePre', {
      callback = function()
        -- Only save if we have real buffers open
        local dominated_by_special = true
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if vim.api.nvim_buf_is_loaded(buf) then
            local buftype = vim.bo[buf].buftype
            if buftype == '' then
              dominated_by_special = false
              break
            end
          end
        end
        if not dominated_by_special then
          require('persistence').save()
        end
      end,
    })
  end,
}
