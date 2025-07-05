-- ~/.config/nvim/lua/plugins/telescope.lua

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      hidden = true, -- tampilkan dotfiles
      no_ignore = true, -- abaikan aturan .gitignore
      file_ignore_patterns = { ".git", "node_modules", "vendor", "storage", "public", "dist" },
    },
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
      },
    },
  },
}
