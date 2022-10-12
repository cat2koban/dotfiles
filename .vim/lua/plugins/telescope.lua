local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-f>', ':Telescope find_files hidden=true<CR>', {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
