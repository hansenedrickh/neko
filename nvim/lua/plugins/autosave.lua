return {
  "pocco81/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" }, -- Load when you start typing or leave insert mode
  opts = {
    enabled = true,
    execution_message = {
      message = function()
        return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
      end,
      dim = 0.18,
      cleaning_interval = 1250,
    },
    trigger_events = { "InsertLeave", "TextChanged" },
    -- This condition prevents saving if the buffer is a special type (like a terminal)
    condition = function(buf)
      local fn = vim.fn
      if fn.getbufvar(buf, "&modifiable") == 1 and fn.getbufvar(buf, "&buftype") == "" then
        return true
      end
      return false
    end,
    write_all_buffers = false, -- write all open buffers or only the current one
    debounce_delay = 135, -- delay in ms after a change to wait before saving
  },
}
