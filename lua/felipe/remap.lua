vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)

vim.keymap.set("n", "<leader>wv", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>wn", vim.cmd.split)

vim.keymap.set("n", "<leader>wl", function() vim.cmd.wincmd('l') end)
vim.keymap.set("n", "<leader>wh", function() vim.cmd.wincmd('h') end)
vim.keymap.set("n", "<leader>wj", function() vim.cmd.wincmd('j') end)
vim.keymap.set("n", "<leader>wk", function() vim.cmd.wincmd('k') end)

vim.keymap.set("n", "<leader>q", vim.cmd.bd)
vim.keymap.set("n", "<leader>wq", vim.cmd.q)
vim.keymap.set("n", "<leader>s", vim.cmd.w)

vim.keymap.set("n", "<leader>bc", vim.cmd.ene)
vim.keymap.set("n", "<leader>bn", vim.cmd.bNext)

vim.opt.clipboard = "unnamedplus"
