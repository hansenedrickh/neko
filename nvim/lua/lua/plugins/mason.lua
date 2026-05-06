return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- LazyVim `lang.docker` wires Docker LS through Mason; skip Mason installs if those downloads fail.
        -- Install binaries yourself (`docker-langserver`, etc.) or run `:Mason` when on a good network.
        dockerls = { mason = false },
        docker_compose_language_service = { mason = false },
      },
    },
  },
  {
    "mason.nvim",
    opts = function(_, opts)
      local skip = { hadolint = true, ["golangci-lint"] = true }
      opts.ensure_installed = vim.tbl_filter(function(tool)
        return not skip[tool]
      end, opts.ensure_installed or {})
      return opts
    end,
  },
}
