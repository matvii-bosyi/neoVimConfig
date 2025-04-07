local map = vim.keymap.set
vim.g.mapleader = " "

-- Telescope
-- local builtin = require('telescope.builtin')
-- map('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })

-- Neotree
map('n', '<leader>e', ':Neotree float toggle<CR>', { noremap = true, silent = true })
-- map('n', '<leader>f', ':Neotree focus<CR>', { noremap = true, silent = true })

-- Bufferline
map("n", "<Space>q", "<Cmd>bdelete<CR>", { desc = "Закрити поточний буфер" })
map("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Наступний буфер" })
map("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Попередній буфер" })


-- ...
map('n', '<esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
map("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "Format document" })

-- Disable arrows in every mode
map("n", "<Up>", ":echoe 'Get off my lawn!'<CR>")
map("n", "<Down>", ":echoe 'Get off my lawn!'<CR>")
map("n", "<Left>", ":echoe 'Get off my lawn!'<CR>")
map("n", "<Right>", ":echoe 'Get off my lawn!'<CR>")
-- map("i", "<Up>", "<C-o>:echoe 'Get off my lawn!'<CR>")
-- map("i", "<Down>", "<C-o>:echoe 'Get off my lawn!'<CR>")
-- map("i", "<Left>", "<C-o>:echoe 'Get off my lawn!'<CR>")
-- map("i", "<Right>", "<C-o>:echoe 'Get off my lawn!'<CR>")
map("v", "<Up>", ":<C-u>echoe 'Get off my lawn!'<CR>")
map("v", "<Down>", ":<C-u>echoe 'Get off my lawn!'<CR>")
map("v", "<Left>", ":<C-u>echoe 'Get off my lawn!'<CR>")
map("v", "<Right>", ":<C-u>echoe 'Get off my lawn!'<CR>")
