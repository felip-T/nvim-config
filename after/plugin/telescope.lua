local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><space>', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.current_buffer_fuzzy_find)
vim.keymap.set('n', '<leader>bb', builtin.buffers)
