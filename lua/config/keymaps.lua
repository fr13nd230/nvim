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
-- Exit => <leader>q
-- Comment lines and blocks gcc,gco => <C-/>
-- Format current code run conform => <leader>f
-- Hide/Unhide tree file system <Cmd>Neotree toggle reveal<CR> => <leader>b
-- Split editors vertically <Cmd>vsplit<Cr> => <leader>v
-- Jump between split editors <C-direction> => <leader>direction
--]]
vim.keymap.set({ "n", "v" }, "<leader>w", "<Cmd>wq<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>s", "<Cmd>w<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>q", "<Cmd>q<CR>", { silent = true })
vim.keymap.set("n", "<C-_>", function()
    require("Comment.api").toggle.linewise.current()
end, { noremap = true, silent = true })
vim.keymap.set("v", "<C-_>", function()
    local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
    vim.api.nvim_feedkeys(esc, "nx", false)
    require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>f", function()
    require("conform").format()
end, { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>b", "<Cmd>Neotree toggle reveal<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>v", "<Cmd>vsplit<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader><Left>", "<C-w>h", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader><Right>", "<C-w>l", { silent = true })
