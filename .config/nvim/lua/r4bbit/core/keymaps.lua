vim.g.mapleader = ","

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>w", ":w!<CR>")

keymap.set("c", "q", "qall!")

-- navigation
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")

keymap.set("v", "J", "5j")
keymap.set("v", "K", "5k")

-- tab keymaps
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- theme
keymap.set("n", "<leader>dm", ":set background=dark<CR>")
keymap.set("n", "<leader>lm", ":set background=light<CR>")

-- plugin keymaps
