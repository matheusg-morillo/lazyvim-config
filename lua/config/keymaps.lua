-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<C-p>", "<Plug>MarkdownPreviewToggle", { desc = "MarkdownPreview toggle" })
vim.keymap.set("v", "zn", ":'<,'>Narrow<CR>", { desc = "Narrow selected content" })
vim.keymap.set("n", "zf", ":Focus<CR>", { desc = "Focus Mode" })
vim.keymap.set("n", "<CR>", "o<Esc>", { desc = "Break line bellow and stay on normal mode" })
vim.keymap.set("n", "<S-CR>", "O<Esc>", { desc = "Break line above and stay on normal mode" })
vim.keymap.set("n", "<C-CR>", "a<CR><Esc>", { desc = "Break line after the cursor and stay on normal mode" })
vim.keymap.set("n", "<leader>m", "'", { desc = "Go to mark (line)" })
vim.keymap.set("n", "<leader>M", "`", { desc = "Go to mark (exact position)" })
vim.keymap.set("n", "<C-c>tf", "<localleader>tf", { desc = "Execute tests for the current file" })
vim.keymap.set("n", "<C-c>tc", "<localleader>tc", { desc = "Execute tests under the cursor" })
vim.keymap.set("n", "<C-c>ef", "<localleader>ef", { desc = "Evaluate file" })
vim.keymap.set("n", "<C-c>eb", "<localleader>eb", { desc = "Evaluate buffer" })
