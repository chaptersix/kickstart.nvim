-- Auto-save on focus lost
return {
  'okuuva/auto-save.nvim',
  event = { 'FocusLost', 'BufLeave' },
  opts = {
    enabled = true,
    execution_message = {
      enabled = false, -- don't show "saved" message
    },
    trigger_events = {
      immediate_save = { 'BufLeave', 'FocusLost' },
      defer_save = {},
      cancel_deferred_save = { 'InsertEnter' },
    },
    condition = function(buf)
      -- Don't auto-save special buffers
      local buftype = vim.bo[buf].buftype
      local filetype = vim.bo[buf].filetype
      if buftype ~= '' then return false end
      if filetype == 'gitcommit' then return false end
      if filetype == 'harpoon' then return false end
      return true
    end,
    debounce_delay = 1000,
  },
}
