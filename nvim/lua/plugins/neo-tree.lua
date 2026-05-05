return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window = vim.tbl_deep_extend("force", opts.window or {}, {
        position = "left",
        width = 40,
      })

      opts.filesystem = opts.filesystem or {}
      -- Default "open_default" hijacks directory buffers on BufEnter and opens Neo-tree before
      -- Snacks UIEnter runs; the dashboard then sees 2 windows and refuses to open.
      opts.filesystem.hijack_netrw_behavior = "disabled"
      opts.filesystem.filtered_items = vim.tbl_deep_extend(
        "force",
        opts.filesystem.filtered_items or {},
        {
          visible = true,
          hide_dotfiles = false,
        }
      )

      opts.default_component_configs = opts.default_component_configs or {}
      opts.default_component_configs.indent = vim.tbl_deep_extend(
        "force",
        opts.default_component_configs.indent or {},
        {
          with_expanders = true,
          expander_collapsed = "",
          expander_expanded = "",
        }
      )

      return opts
    end,
  },
}
