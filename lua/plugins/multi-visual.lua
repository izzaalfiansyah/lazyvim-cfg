return {
  {
    "mg979/vim-visual-multi",
    branch = "master", -- stabil
    event = "VeryLazy", -- lazy-load saat butuh
    init = function()
      -- ⬇️ Contoh kostumisasi
      vim.g.VM_default_mappings = 0 -- matikan map bawaan jika mau map sendiri
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>", -- ala VS Code
        ["Find Subword Under"] = "<C-d>", -- idem untuk sub-word
      }
      vim.g.VM_leader = "<Leader>m" -- semua map VM bisa diawali <Leader>m
    end,
  },
}
