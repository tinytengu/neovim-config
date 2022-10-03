-- Modes
--   normal = "n"
--   insert = "i"
--   visual = "v"
--   visual_block = "x"
--   term = "t"
--   command = "c"

local leader = { "<Space>", " " }
USE_ARROWS = true -- Use Up, Down, Left, Right arrow buttons instead of hjkl layout


local opts = { noremap = true, silent = true } -- Default keymap options
local term_opts = { silent = true } -- Same as above but for terminal

local keymap = vim.api.nvim_set_keymap


-- Remap leader key
keymap("", leader[1], "<Nop>", opts)
vim.g.mapleader = leader[2]
vim.g.maplocalleader = leader[2]

-- Direction keys
K_LEFT = USE_ARROWS and "Left" or "h"
K_LEFT_W = USE_ARROWS and "<Left>" or "h"

K_RIGHT = USE_ARROWS and "Right" or "l"
K_RIGHT_W = USE_ARROWS and "<Right>" or "l"

K_UP = USE_ARROWS and "Up" or "k"
K_UP_W = USE_ARROWS and "<Up>" or "k"

K_DOWN = USE_ARROWS and "Down" or "j"
K_DOWN_W = USE_ARROWS and "<Down>" or "j"



function _G.test_f()
  print(USE_ARROWS and "Arrows" or "HJKL")
end

keymap("n", "<leader>k", ":lua test_f()<CR>", opts)


---- [Normal Mode] ----
-- [Misc] --
keymap("n", "<leader>e", ":Lex 30<cr>", opts) -- File explorer
keymap("n", "<leader>nh", ":noh<CR>", opts)

-- [Windows] --
-- Close window: Ctrl+wq

-- Navigate between windows with Alt-<Direction key>
keymap("n", "<A-" .. K_LEFT .. ">", "<C-w>h", opts)
keymap("n", "<A-" .. K_DOWN .. ">", "<C-w>j", opts)
keymap("n", "<A-" .. K_UP .. ">", "<C-w>k", opts)
keymap("n", "<A-" .. K_RIGHT .. ">", "<C-w>l", opts)

-- Resize window
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-" .. K_RIGHT .. ">", ":bnext<CR>", opts)
keymap("n", "<S-" .. K_LEFT .. ">", ":bprevious<CR>", opts)


---- [Insert Mode] ----
keymap("i", "jk", "<ESC>", opts) -- Press jk fast to enter


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "K", ":m .+1<CR>==", opts)
keymap("v", "J", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)


-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
