vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<esc>", ":noh<return><esc>")

-- MOVING IN LINEWRAPPED MODE
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "0", "g0")
vim.keymap.set("n", "$", "g$")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J lässt den Cursor an der Stelle, an der zuvor war
vim.keymap.set("n", "J", "mzJ`z")
-- Lässt den Cursor in der Mitte beim Blättern
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Lässt den Cursor in der Mitte beim Durchgehen von Suchergebnissen
vim.keymap.set("n", "n", "nzzzv")

-- Mit <leader>p kann ich gehighlighteten Text durch kopierten Text ersetzten, ohne dass der gelöschte Text den kopierten überschreibt (wird ins void kopiert)
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Mit <leader> wird der Text ins System-Clipboard kopiert und nicht in Vims-Internal
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Löscht alles ins Void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Lässt mich mit <leader>s das Wort replacen, auf dem ich mich gerade befinde
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("i", "<A-h>", "<C-o>h")
vim.keymap.set("i", "<A-l>", "<C-o>l")
vim.keymap.set("i", "<A-j>", "<C-o>j")
vim.keymap.set("i", "<A-k>", "<C-o>k")

vim.cmd [[tnoremap <esc> <C-\><C-N> ]]
