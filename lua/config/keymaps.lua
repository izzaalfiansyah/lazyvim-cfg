-- ~/.config/nvim/lua/config/keymaps.lua
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Find files (+dotfiles, +ignored)" })

vim.keymap.set("n", "<leader><space>", function()
  require("telescope.builtin").find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Find files (include dotfiles & ignored)" })

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
vim.keymap.set("v", "jk", "<Esc>", { desc = "Exit visual mode with jk" })
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { noremap = true, silent = true })
