-- Define leader key <space>
vim.g.mapleader = " "

-- Remap exploring files
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Remap exit in visual, insert, cmd-mode
vim.keymap.set({ "v", "i", "c" }, "jk", "<esc>")

-- Remap o and shift-o to not enter insert mode when adding a line
vim.keymap.set({ "n", "v" }, "o", "o<esc>")
vim.keymap.set({ "n", "v" }, "O", "O<esc>")

-- Remap some personal keys
--[[
-- Save and quit => <leader>w
-- Save file => <leader>s
-- Comment lines and blocks gcc,gco => <C-/>
-- Format current code =ap => <leader>f
-- Hide/Unhide tree file system <Cmd>Neotree toggle reveal<CR> => <leader>b
-- Split editors vertically <Cmd>vsplit<Cr> => <leader>v
--]]
vim.keymap.set({ "n", "v" }, "<leader>w", "<Cmd>wq<CR>")
vim.keymap.set({ "n", "v" }, "<leader>s", "<Cmd>w<CR>")
vim.keymap.set({ "n", "v" }, "<C-_>", function() require('Comment.api').toggle.linewise.current() end,
    { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>f", "=ap")
vim.keymap.set({ "n", "v" }, "<leader>b", "<Cmd>Neotree toggle reveal<CR>")
vim.keymap.set({ "n", "v" }, "<leader>v", "<Cmd>vsplit<CR>")
