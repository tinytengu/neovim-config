# nvim-config
This is my carefully crafted, neatly stolen from different places [Neovim](https://neovim.io) config written in Lua.

My goal was to make it unified as much as possible so everything looks similar, keybindings make sense and so on.

It has most of the things one may need. This is a full list of packaged plugins:
* Plugin manager
  * [packer.nvim](https://github.com/wbthomason/packer.nvim)
* LSP, Linting, Formatting
  * [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
  * [nvim-lsp-installer](https://github.com/awilliamboman/nvim-lsp-installer)
  * [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
  * [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* Autocompletion
  * [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  * [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
  * [cmp-path](https://github.com/hrsh7th/cmp-path)
  * [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
  * [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
  * [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
  * [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
* Snippets
  * [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
  * [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
* Smart comments and bracket pairs
  * [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
  * [Comment.nvim](https://github.com/numToStr/Comment.nvim)
  * [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
* File explorer
* Gorgeous colorschemes
  * [colorschemes](https://github.com/lunarvim/colorschemes)
* And some miscelanious things
  * [popup.nvim](https://github.com/nvim-lua/popup.nvim)
  * [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
  * [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

## Keybindings
### No category
|Mode|Binding|Description|Module|
|----|-------|-----------|------|
|Insert|jk|Famouse binding, exit from Insert mode quickly||

### Go to
|Mode|Binding|Description|Module|
|----|-------|-----------|------|
|Normal|gD|**D**eclaration|LSP|
|Normal|gd|**d**efiniton|LSP|
|Normal|gi|**i**mplementation|LSP|
|Normal|gr|**r**eference|LSP|

### \<leader\> - semantic action
> Mainly used for actions that can be semantically described with a few letters

|Mode|Binding|Description|Module|
|----|-------|-----------|------|
|Normal|\<leader\>h|**h**over|LSP|
|Normal|\<leader\>rn|**r**e**n**ame variable/function/etc. in a buffer|LSP|
|Normal|\<leader\>ca|**c**ode **a**ctions|LSP|
|Normal|\<leader\>d|**d**iagnostic float window|LSP|
|Normal|\<leader\>dll|**d**iagnostic **l**oc**l**ist|LSP|
|Normal|\<leader\>bf|**B**uffer **f**ormat|LSP|
|Normal|\<leader\>e|File **e**xplorer||
|Normal|\<leader\>nh|:noh - **n**o **h**ighlight||

### Windows
|Mode|Binding|Description|Module|
|----|-------|-----------|------|
|Normal|\<Alt-Left\>|Navigate to window at left||
|Normal|\<Alt-Right\>|Navigate to window at right||
|Normal|\<Alt-Up\>|Navigate to window at above||
|Normal|\<Alt-Down\>|Navigate to window at below||

### Buffers
|Mode|Binding|Description|Module|
|----|-------|-----------|------|
|Normal|\<Shift-Left\>|Navigate to the next buffer||
|Normal|\<Shift-Right\>|Navigate to the previous buffer||

