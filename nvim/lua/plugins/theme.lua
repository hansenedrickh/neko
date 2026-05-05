return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("catppuccin").load()
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 10001,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
          surface0 = "#0a0a0a",
          surface1 = "#121212",
          surface2 = "#1a1a1a",
        },
      },
      integrations = {
        -- This helps plugins like neo-tree and telescope use theme colors
        native_lsp = { enabled = true },
        telescope = { enabled = true },
        neotree = true,
      },
      custom_highlights = function(colors)
        return {
          Normal = { fg = colors.text },
          NormalNC = { fg = colors.text },
          NormalFloat = { fg = colors.text },
          FloatBorder = { fg = colors.surface2 },
          SignColumn = {},
          FoldColumn = {},
          LineNr = { fg = colors.surface2 },
          CursorLineNr = { fg = colors.lavender },
          EndOfBuffer = { fg = colors.base },
          SnacksPickerIcon = { fg = colors.sky },
          SnacksPickerFile = { fg = colors.text },
          SnacksPickerDirectory = { fg = colors.blue },
          SnacksPickerMatch = { fg = colors.peach, bold = true },
          -- Catppuccin's snacks integration colors SnacksDashboardHeader blue; override so D-Terminal matches pure white branding.
          SnacksDashboardNormal = { fg = "#FFFFFF" },
          SnacksDashboardHeader = { fg = "#FFFFFF", bold = true },
          SnacksDashboardTitle = { fg = "#FFFFFF", bold = true },
          SnacksDashboardKey = { fg = "#FFFFFF", bold = true },
          SnacksDashboardDesc = { fg = "#BBBBBB" },
          SnacksDashboardFooter = { fg = "#888888" },
          SnacksDashboardSpecial = { fg = "#BBBBBB" },
          SnacksDashboardIcon = { fg = "#BBBBBB", bold = true },
          SnacksDashboardFile = { fg = "#BBBBBB" },
          SnacksDashboardDir = { fg = "#888888" },
          SnacksDashboardTerminal = { fg = "#FFFFFF" },
          -- Catppuccin uses surface1 (~#121212); on pitch-black base inline blame is invisible.
          GitSignsCurrentLineBlame = { fg = "#888888", italic = true },
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end,
  },
}
