-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Normal --
keymap({ "n", "v" }, "J", "5j", opts)
keymap({ "n", "v" }, "K", "5k", opts)
keymap({ "n", "v" }, "H", "^", opts)
keymap({ "n", "v" }, "L", "$", opts)

keymap("n", "S", ":w<CR>", opts)
keymap("n", "Q", ":q<CR>", opts)
keymap("n", "W", "5w", opts)
keymap("n", "B", "5b", opts)
keymap("n", "dL", "d$", opts)
keymap("n", "yL", "y$", opts)

keymap("n", "th", "<cmd>bNext<CR>", opts)
keymap("n", "tl", "<cmd>bnext<CR>", opts)
keymap("n", "<leader>s-", "<C-w>t<C-w>K", opts)
keymap("n", "<leader>s|", "<C-w>t<C-w>H", opts)

-- Insert --
keymap("i", "<C-j>", "<down>", opts)
keymap("i", "<C-k>", "<up>", opts)
keymap("i", "<C-h>", "<left>", opts)
keymap("i", "<C-l>", "<right>", opts)

-- custom --
keymap("n", "<leader>n", "<Esc>/<++><CR>:nohl<CR>c4l", opts)

-- Copilot --
keymap({ "i", "s" }, "<C-p>", "<Nop>")
keymap({ "i", "s" }, "<C-n>", "<Nop>")
keymap("i", "<C-p>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, silent = true })

-- Multi Cursor --
keymap("n", "<C-Down>", ":<C-U>call vm#commands#add_cursor_down(0, v:count1)<CR>", opts)
