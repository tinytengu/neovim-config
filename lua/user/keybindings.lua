local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", ",<Space>", ":nohlsearch<CR>", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Wrapping
local tags = {
    {
        trigger = "{",
        pair = { "{", "}" }
    },
    {
        trigger = "[",
        pair = { "[", "]" }
    },
    {
        trigger = "(",
        pair = { "(", ")" }
    },
    {
        trigger = "<",
        pair = { "<", ">" }
    },
    {
        trigger = "\"",
        pair = { "\"", "\"" }
    },
    {
        trigger = "'",
        pair = { "'", "'" }
    },
    {
        trigger = "-",
        pair = { "-- ", " --" }
    }
}

for i, tag in ipairs(tags) do
  keymap("n", "<C-w>" .. tag.trigger, "bi" .. tag.pair[1] .. "<Esc>ea" .. tag.pair[2] .. "<Esc>", opts)
  keymap("n", "<C-w>" .. tag.trigger .. tag.trigger, "^i" .. tag.pair[1] .. "<Esc>$a" .. tag.pair[2] .. "<Esc>", opts)
end

-- Move line
keymap("n", "<A-up>", "@='ddkP'<CR>", opts)
keymap("n", "<A-down>", "@='ddjP'<CR>", opts)
keymap("n", "<A-d>", "@='yyP'<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("", "<S-Right>", ":BufferLineCycleNext<CR>", opts)
keymap("", "<S-Left>", ":BufferLineCyclePrev<CR>", opts)
keymap("", "<C-S-Left>", ":BufferLineMovePrev<CR>", opts)
keymap("", "<C-S-Right>", ":BufferLineMoveNext<CR>", opts)

for i=1,9 do
  keymap("n", "<C-b>" .. i, ":BufferLineGoToBuffer " .. i .. "<CR>", opts)
end

keymap("n", "<C-b>w", ":bd<CR>", opts)

-- Splits
keymap("n", "<C-s>v", ":vsplit<CR>", opts)
keymap("n", "<C-s>h", ":split<CR>", opts)
keymap("n", "<C-s><Left>", ":wincmd h<CR>", opts)
keymap("n", "<C-s><Right>", ":wincmd l<CR>", opts)
keymap("n", "<C-s><Up>", ":wincmd k<CR>", opts)
keymap("n", "<C-s><Down>", ":wincmd j<CR>", opts)

-- NERDTree
keymap("n", "<leader>n", ":NERDTreeFocus<CR>", opts)
keymap("n", "<leader>t", ":NERDTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":NERDTreeFind<CR>", opts)

-- Coc
keymap("n", "<C-c>o", ":CocCommand workspace.showOutput<CR>", opts)
keymap("n", "<C-c>c", ":CocConfig<CR>", opts)
keymap("n", "<C-C>", ":edit $COC_VIMCONFIG<CR>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<Up>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)
