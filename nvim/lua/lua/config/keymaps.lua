-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Copy absolute path to clipboard
vim.keymap.set("n", "<leader>cp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied absolute path: " .. path)
end, { desc = "Copy Absolute Path" })

-- Beautify JSON
vim.keymap.set("n", "<leader>jq", ":%!jq .<CR>", { desc = "Format JSON" })

-- Minify JSON
vim.keymap.set("n", "<leader>jm", ":%!jq -c .<CR>", { desc = "Minify JSON (jq)" })

-- Terminal mode navigation & escape
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })

-- Normal and Insert mode window navigation (for smoothly jumping to agent)
vim.keymap.set({ "n", "i", "v" }, "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
vim.keymap.set({ "n", "i", "v" }, "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })
