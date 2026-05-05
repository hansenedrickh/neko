return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = vim.tbl_deep_extend("force", opts.linters_by_ft or {}, {
        -- LazyVim `lang.go` sets golangcilint here; run golangci-lint from git pre-commit instead.
        go = {},
      })
      return opts
    end,
  },
}
