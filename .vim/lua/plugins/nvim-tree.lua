require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "l", action = "edit" },
        { key = "<C-e>", action = "close" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
})

vim.keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>', {})
