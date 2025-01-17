local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- Scroll by one line
map('n', '<C-Up>', '<C-y>', opts)
map('n', '<C-Down>', '<C-e>', opts)

-- Window navigation_message
map('n', '<C-h>', '<C-w>h', { silent = true })
map('n', '<C-j>', '<C-w>j', { silent = true })
map('n', '<C-k>', '<C-w>k', { silent = true })
map('n', '<C-l>', '<C-w>l', { silent = true })
-- Select all
map('n', '<C-a>', 'ggVG', { silent = true })

-- Find refs
map('n', '<F12>', 'gr', { silent = true })

-- Open old files
map('n', '<F4>', ':Telescope oldfiles<CR>', { silent = true })

-- Disable highlight on escape
map('n', '<Esc>', ':nohl<CR>', { silent = true })

-- Format
map('n', '<leader>f', ':Format<CR>', { silent = true })

-- Wrap toggle
map('n', '<A-z>', ':set wrap!<CR>', { silent = true })

-- New tab buffer
map('n', '<C-n>', ':ene<CR>', { silent = true })

-- LSP
map('n', '<leader>c', 'gcc', { silent = true })
map('v', '<leader>b', 'gb', { desc = 'Comment block', silent = true })

-- Nvim Tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
map('n', '<C-e>', ':NvimTreeFocus<CR>', { silent = true })

-- Barbar
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-x>', '<Cmd>BufferClose!<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

map('n', '<C-t>', ':ToggleTerm<CR>', { silent = true })

function _G.set_terminal_keymaps()
  local optsloc = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], optsloc)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], optsloc)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], optsloc)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], optsloc)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], optsloc)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], optsloc)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], optsloc)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
