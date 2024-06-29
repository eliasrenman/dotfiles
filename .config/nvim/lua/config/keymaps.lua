-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Shorten function name
function map(mode, lhs, rhs, opts)
  local options = vim.tbl_extend('force', { noremap = true, silent = true }, opts or {})
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   ten


-- duplicate line down
map('i', '<C-d>', '<ESC>:normal! yyp<CR>i')
map('n', '<C-d>', 'yyp')
-- Tab indent
map('n', '<Tab>', '>>')
map('n', '<S-Tab>', '<<')
-- select
map('n', '<C-Left>', 'v')

-- undo last  
map('n', '<C-Z>', ':undo<CR>')
map('i', '<C-Z>', '<Esc>:undo<CR>a')

-- Terminal open and close -> broken
map('n', '<C-3>', ':terminal<CR>')
map('i', '<C-3>', '<ESC>:terminal<CR>')
map('t', '<C-3>', '<C-\\><C-N>:q<CR>')

-- Toggle comments with Ctrl + ' -> broken
map('n', "<C-ä>", ':normal gcc<CR>')
--map('n', "<C-ä>", ':Telescope find_files<CR>')
map('i', "<C-ä>", '<Esc>:normal gcc<CR>i')

-- Open telescope
map('i', '<C-p>', ':Telescope find_files<CR>')
--- Move line up and down
map("n", "<A-down>", ":m .+1<CR>==") -- move line down(n)
map("n", "<A-up>", ":m .-2<CR>==") -- move line up(n)
map("v", "<A-down>", ":m '>+1<CR>gv=gv") -- move line down(v)
map("v", "<A-up>", ":m '<-2<CR>gv=gv") -- move line up(v)
