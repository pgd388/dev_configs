local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "sw", ":set wrap<CR>", opts)
keymap("n", "nw", ":set nowrap<CR>", opts)
keymap("n", "ee", ":e %:p:h/<CR>", opts)
keymap("n", "re", ":e!<CR>", opts)
keymap("n", "-", "$", opts)
keymap("n", " ", ":", opts)
keymap("n", "  ", "/", opts)
keymap("n", " qq", ":q!", opts)
keymap("i", "qq", "<ESC>", opts)
keymap("i", "wq", "<ESC>:w", opts)
keymap("v", "qq", "<ESC>", opts)

-- Keep original clipboard copy
keymap("v", "p", '"_dP', opts)
