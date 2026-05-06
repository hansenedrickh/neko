-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Snacks dashboard: pure white for header / title text (readable on dark terminals).
-- Applied on ColorScheme too so themes do not wipe it after load.
local function snacks_dashboard_highlights()
  vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#FFFFFF", bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = "#FFFFFF", bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = "#BBBBBB" })
  vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = "#888888" })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "snacks_dashboard",
  callback = snacks_dashboard_highlights,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    snacks_dashboard_highlights()
  end,
})

-- Snacks skips the startup dashboard when `argc > 0`, so `nvim .` never opens it.
-- With netrw disabled, use UIEnter to cd into the directory and show the dashboard anyway.
vim.api.nvim_create_autocmd("UIEnter", {
  once = true,
  callback = function()
    if vim.fn.argc(-1) ~= 1 then
      return
    end
    local arg = vim.fn.argv(0) --[[@as string]]
    if arg == "" then
      return
    end
    local dir = vim.fn.fnamemodify(arg, ":p")
    if vim.fn.isdirectory(dir) ~= 1 then
      return
    end
    vim.schedule(function()
      vim.cmd.cd({ args = { dir } })
      vim.cmd.enew()
      Snacks.dashboard({
        buf = vim.api.nvim_get_current_buf(),
        win = vim.api.nvim_get_current_win(),
      })
    end)
  end,
  desc = "Snacks dashboard for nvim <directory> (e.g. nvim .)",
})

-- Automatically enter insert mode when jumping into a terminal
vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
  pattern = "term://*",
  callback = function()
    vim.cmd("startinsert")
  end,
  desc = "Auto-enter insert mode in terminal",
})
