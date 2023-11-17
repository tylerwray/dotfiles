-- Remap space as leader key
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.keymap.set({ "n", "v" }, " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y');
vim.keymap.set("n", "<leader>yy", '"+yy');

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- Neo-tree shortcuts
vim.keymap.set('n', '<leader>b', ':Neotree toggle<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree reveal<CR>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Clear highlights
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", { silent = true })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })

-- Awesome search and replace
vim.keymap.set("n", "<leader>s", ":%s///g<left><left>", { silent = true })

-- Elxir Test shortcuts
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "elixir" },
    callback = function()
        vim.cmd [[
      nmap <buffer> <Leader>t :execute "!clear && mix test %\\:" . line(".")<CR>
      nmap <buffer> <Leader>T :execute "!clear && mix test %"<CR>
    ]]
    end,
})

