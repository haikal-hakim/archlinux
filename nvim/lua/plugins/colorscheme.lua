return {
  -- 1. Catppuccin Mocha
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = false,
    },
  },

  -- 2. Tokyonight
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent_background = false,
      styles = {
        sidebars = "transparent",
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
