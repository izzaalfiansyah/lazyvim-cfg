return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      enabled = true,
      auto_close = true, -- disable auto-close when focus shifts
      -- other explorer options...
    },
    -- optionally configure picker behaviors:
    picker = {
      sources = {
        explorer = {
          auto_close = true, -- if you launch it via picker
          focus = "list", -- ensure it stays focused
          -- other layout/actions...
        },
      },
    },
  },
}
