return {
  "askfiy/http-client.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local width = math.floor(vim.o.columns * 0.25) -- Calculate 25% of screen width
    local height = math.floor(vim.o.lines * 0.8) -- Use 80% of screen height

    require("http-client").setup({
      render = {
        open = {
          relative = "editor",
          width = width,
          height = height,
          -- Position it on the far right
          col = vim.o.columns - width,
          row = 1,
          zindex = 100,
          focus = true,
          border = "rounded",
        },
      },
    })
  end,
  keys = {
    { "<leader>rr", "<cmd>HttpClient sendRequest<cr>", desc = "Send Request" },
  },
}
