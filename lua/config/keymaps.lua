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
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { desc = "Exit terminal mode with jk", noremap = true, silent = true })
vim.keymap.set("i", ",.", "->", { desc = "Type -> in insert mode", noremap = true })
-- vim.keymap.set("n", "<C-j>", "<C-d>", { desc = "Scroll down half a page", noremap = true })
-- vim.keymap.set("n", "<C-k>", "<C-u>", { desc = "Scroll up half a page", noremap = true })
