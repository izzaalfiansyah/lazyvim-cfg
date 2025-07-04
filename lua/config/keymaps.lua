local opts = { noremap = true, silent = true }

-- Ignore dotfiles on telescope
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

-- Exit insert, visual, and terminal mode using jk
-- vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
-- vim.keymap.set("v", "jk", "<Esc>", { desc = "Exit visual mode with jk" })
-- vim.keymap.set("t", "jk", [[<C-\><C-n>]], { desc = "Exit terminal mode with jk", noremap = true, silent = true })

-- Keymap for set attribute from object and set array on php
vim.keymap.set("i", "..", "->", { desc = "Type -> in insert mode", noremap = true })
vim.keymap.set("i", "::", "=>", { desc = "Type => in insert mode", noremap = true })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-a>G")

-- Jump tab
vim.keymap.set("n", "<tab>", "]b", opts)
vim.keymap.set("n", "<S-tab>", "[b", opts)
