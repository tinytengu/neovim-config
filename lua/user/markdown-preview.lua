local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true } -- Default keymap options


keymap("n", "<leader>mdp", "<Plug>MarkdownPreview<CR>", opts)
keymap("n", "<leader>mdps", "<Plug>MarkdownPreviewStop<CR>", opts)
--[[ keymap({ "n", "v" }, "<leader>mdp", "<Plug>MarkdownPreviewToggle<CR>", opts) ]]
