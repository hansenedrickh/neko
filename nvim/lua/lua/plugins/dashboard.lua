return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Neo-tree handles file tree; keep Snacks explorer off so keymaps do not clash.
      opts.explorer = vim.tbl_deep_extend("force", opts.explorer or {}, {
        enabled = false,
        replace_netrw = false,
      })

      opts.image = { enabled = false } -- disable Snacks image viewer so it stops complaining about Kitty protocol
      opts.dashboard = opts.dashboard or {}
      opts.dashboard.enabled = true
      opts.dashboard.preset = opts.dashboard.preset or {}
      opts.dashboard.preset.keys = {}
      opts.dashboard.preset.pick = nil
      opts.dashboard.preset.header = nil
      local cat_art = [[
⠀⠀⠀⠀⢠⡶⠚⢷⣤⡀⠀⠀⠀⠀⠀⣲⡶⠛⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⡿⠁⠀⠀⠙⣷⣄⠀⢀⣴⡟⠁⠀⠀⢷⢹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣾⠃⠀⠠⠶⠚⠛⠛⠛⠛⠋⠀⠀⣀⡀⢸⠈⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢸⣏⡔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠉⠉⣿⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢠⣿⢠⣶⡆⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀
⢒⡾⠁⠘⠟⠁⠀⠀⠀⠀⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠉⣧⠀⠀⠀⠀⠃⠀⠀⠀⠈⠉⠠⣍⠀⠀⠀⠀⠀⠀⣸⡇⢀⣤⠶⠛⠛⠻⢦⣄
⠀⠸⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⣴⠟⠁⠀⠀⠀⠀⠀⢻
⠀⠀⠀⠛⣷⡦⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⡴⠞⠋⢠⡟⠀⠀⠀⠀⠀⠀⢀⡾
⠀⠀⠀⢰⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⣤⡀⢸⠃⠀⠀⠀⠀⢠⡶⠟⠁
⠀⠀⠀⣸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣹⡄⠀⠀⠀⠀⣼⠀⠀⠀
⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣇⠀⠀⠀⠀⢹⡄⠀⠀
⠀⠀⠀⢸⡀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡄⠀⠀⠀⠈⣧⠀⠀
⠀⠀⠀⢸⡇⠘⡇⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⢹⡇⠀
⠀⠀⠀⢸⡇⠀⠙⠀⠀⠀⠀⠀⢠⠞⠁⠀⠀⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⢸⡇⠀
⠀⠀⠀⢸⡇⠀⢸⡆⠀⠀⠀⠀⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠀⠀⠀⠀⣸⠇⠀
⠀⠀⠀⢸⣿⠀⠀⡇⠀⠀⠀⠀⣿⡀⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⠀⢀⣴⡟⠁⠀
⠀⠀⠀⠘⠿⠶⢶⢧⣦⣦⡴⢾⣥⣽⣤⣤⣤⣤⣤⣤⡴⣯⡤⠴⠶⠛⠋⠀⠀⠀
   _   _  _____  _  __  ___  __     __  ___  __  __ 
  | \ | || ____|| |/ / / _ \ \ \   / / |_ _||  \/  |
  |  \| ||  _|  | ' / | | | | \ \ / /   | | | |\/| |
  | |\  || |___ | . \ | |_| |  \ V /    | | | |  | |
  |_| \_||_____||_|\_\ \___/    \_/    |___||_|  |_|
]]

      opts.dashboard.sections = {
        function()
          local colors = {
            "#F5C2E7", -- Pink
            "#CBA6F7", -- Mauve
            "#F38BA8", -- Red
            "#EBA0AC", -- Maroon
            "#FAB387", -- Peach
            "#F9E2AF", -- Yellow
            "#A6E3A1", -- Green
            "#94E2D5", -- Teal
            "#89DCEB", -- Sky
            "#74C7EC", -- Sapphire
            "#89B4FA", -- Blue
            "#B4BEFE", -- Lavender
          }
          local header_section = {}
          for i, line in ipairs(vim.split(cat_art, "\n")) do
            if line ~= "" then
              local hl = "DashboardCat" .. i
              vim.api.nvim_set_hl(0, hl, { fg = colors[(i % #colors) + 1] })
              table.insert(header_section, { text = { { line, hl = hl } }, align = "center" })
            end
          end

          table.insert(header_section, { padding = 1 })

          -- Get Current Working Directory
          local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
          table.insert(header_section, { text = { { "󰉖 " .. cwd, hl = "Directory" } }, align = "center" })

          -- Get the git branch
          local branch = vim.fn.system("git branch --show-current 2> /dev/null"):gsub("\n", "")

          -- Only show it if we are actually in a git repo
          if branch ~= "" then
            table.insert(header_section, {
              text = { { "  " .. branch, hl = "Constant" } }, -- You can change hl to "Special" or "String"
              align = "center",
            })
          end

          table.insert(header_section, { padding = 1 })
          return header_section
        end,
        { section = "startup" },
      }
      return opts
    end,
  },
}
