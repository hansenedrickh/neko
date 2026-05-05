return {
  "aug6th/cursoragent.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("cursoragent").setup({
      terminal = {
        show_native_term_exit_tip = false,
      },
    })
  end,
  keys = {
    { "<leader>a", "<cmd>CursorAgent<CR>", desc = "Cursor Agent" },
  },
}
