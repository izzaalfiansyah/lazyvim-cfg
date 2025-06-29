return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional, UI picker
    },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          cmd = { "dart", "language-server", "--protocol=lsp" },
        },
        ui = {
          border = "rounded",
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
          flutter_path = "flutter", -- Jika flutter tidak ada di PATH, beri path absolut
        },
      })
    end,
    ft = "dart",
  },
}
