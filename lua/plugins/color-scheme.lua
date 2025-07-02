return {
  { "Mofiqul/dracula.nvim" },
  { "folke/tokyonight.nvim", lazy = true, opts = { style = "night" } },
  -- Configure LazyVim to load tokyonight
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
