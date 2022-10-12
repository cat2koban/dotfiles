-- Normal
vim.keymap.set('n', '<Esc><Esc>', ':<C-u>set nohlsearch<Return>', {})
vim.keymap.set('n', '<C-h>', ':tabprevious<Return>', {})
vim.keymap.set('n', '<C-l>', ':tabnext<Return>', {})
vim.keymap.set('n', '<C-n>', ':tabnew<Return>', {})

-- Insert
vim.keymap.set('i', 'jj', '<Esc>', { silent = true })
