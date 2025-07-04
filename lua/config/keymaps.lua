local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- ~/.config/nvim/lua/config/keymaps.lua
keymap.set("n", "<leader>ff", function()
  ("telescope.builtin").find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Find files (+dotfiles, +ignored)" })

keymap.set("n", "<leader><space>", function()
  ("telescope.builtin").find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Find files (include dotfiles & ignored)" })

keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
-- keymap.set("v", "jk", "<Esc>", { desc = "Exit visual mode with jk" })
keymap.set("t", "jk", [[<C-\><C-n>]], { desc = "Exit terminal mode with jk", noremap = true, silent = true })
keymap.set("i", "..", "->", { desc = "Type -> in insert mode", noremap = true })
keymap.set("i", ";;", "=>", { desc = "Type => in insert mode", noremap = true })
-- keymap.set("n", "<C-j>", "<C-d>", { desc = "Scroll down half a page", noremap = true })
-- keymap.set("n", "<C-k>", "<C-u>", { desc = "Scroll up half a page", noremap = true })

keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprevious<Return>", opts)
