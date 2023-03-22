local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "sw", ":set wrap<CR>", opts)
keymap("n", "nw", ":set nowrap<CR>", opts)
keymap("n", "ee", ":e %:p:h/<CR>", opts)
keymap("n", "eee", ":e!<CR>", opts)
keymap("n", "-", "$", opts)
keymap("n", " ", ":", opts)
keymap("n", "  ", "/", opts)
keymap("n", " qq", ":q!", opts)
keymap("i", "qq", "<ESC>", opts)
keymap("i", "wq", "<ESC>:w<CR>", opts)
keymap("v", "qq", "<ESC>", opts)

-- Keep original clipboard copy
keymap("v", "p", '"_dP', opts)

-- Set Telescope shortcuts
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'fa', builtin.find_files, {})
vim.keymap.set('n', 'ff', builtin.git_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

vim.keymap.set('n', ' u', vim.cmd.UndotreeToggle)
