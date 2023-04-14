return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#0D0D1B",
          mantle = "#0D0D1B",
          crust = "#0D0D1B",
        },
      },
      custom_highlights = function(C)
        return {
          TabLineSel = { bg = C.pink },
        }
      end,
      integrations = {
        illuminate = true,
      },
    },
  },
}
