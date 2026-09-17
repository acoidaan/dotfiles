return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = false,

      color_overrides = {
        mocha = {
          base = "#0c0c0c",
          mantle = "#101010",
          crust = "#080808",

          text = "#e8e8e8",
          subtext1 = "#d0d0d0",
          subtext0 = "#a8a8a8",

          surface0 = "#202020",
          surface1 = "#292929",
          surface2 = "#333333",

          overlay0 = "#777777",
          overlay1 = "#999999",
          overlay2 = "#bbbbbb",

          pink = "#f28fb8",
          flamingo = "#f8c8dc",
          rosewater = "#fff6d6",
          mauve = "#d8a0c4",

          blue = "#9ab8d7",
          sky = "#9ecfd8",
          teal = "#94c9b8",
          green = "#a6cfa0",
          yellow = "#f4d35e",
          peach = "#e9a66b",
          red = "#e78284",
        },
      },

      integrations = {
        blink_cmp = true,
        gitsigns = true,
        mason = true,
        native_lsp = {
          enabled = true,
        },
        snacks = true,
        treesitter = true,
        which_key = true,
      },

      custom_highlights = function()
        return {
          Normal = { bg = "#0c0c0c" },
          NormalNC = { bg = "#0c0c0c" },

          NormalFloat = { bg = "#101010" },
          FloatBorder = { fg = "#f28fb8", bg = "#101010" },

          CursorLine = { bg = "#181818" },
          LineNr = { fg = "#555555" },
          CursorLineNr = { fg = "#f28fb8", bold = true },

          Visual = { bg = "#35232c" },

          WinSeparator = { fg = "#292929" },

          SnacksPickerBorder = { fg = "#f28fb8" },
          SnacksPickerTitle = { fg = "#f8c8dc", bold = true },

          NeoTreeNormal = { bg = "#101010" },
          NeoTreeNormalNC = { bg = "#101010" },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
