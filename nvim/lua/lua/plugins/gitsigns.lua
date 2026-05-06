return {
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts)
      opts.current_line_blame = true
      opts.current_line_blame_opts = vim.tbl_deep_extend("force", opts.current_line_blame_opts or {}, {
        delay = 200,
      })
      return opts
    end,
  },
  -- LazyVim `<leader>uG` toggles **sign column**, not virtual-text line blame; use `<leader>gtb`.
  {
    "gitsigns.nvim",
    opts = function()
      Snacks.toggle({
        name = "Git Inline Blame",
        get = function()
          return require("gitsigns.config").config.current_line_blame
        end,
        set = function(state)
          require("gitsigns").toggle_current_line_blame(state)
        end,
      }):map("<leader>gtb")
    end,
  },
}
