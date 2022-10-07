local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  -- Misc
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-web-devicons" -- Icons
  use "windwp/nvim-autopairs" -- Auto () [] {} "" and so on
  use "lunarvim/colorschemes" -- Colorschemes pack
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
  } -- Markdown preview
  use "nvim-lualine/lualine.nvim" -- Bototm statusline
  use "goolord/alpha-nvim" -- Greeter
  use "nvim-telescope/telescope.nvim" -- Telescope
  use "akinsho/bufferline.nvim" -- Bufferline
  use "folke/which-key.nvim" -- Whichkey (keybindings popup)

  -- Commenting
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  } -- Smart comments
  use "JoosepAlviste/nvim-ts-context-commentstring" -- TS React contextual comments // and {/* */}

  -- CMP plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- Cmdline completions
  use "hrsh7th/cmp-nvim-lsp" -- CMP LSP integration
  use "hrsh7th/cmp-nvim-lua"
  use "saadparwaiz1/cmp_luasnip" -- Snippet completions

  -- Snippets
  use "L3MON4D3/LuaSnip" --Snippet engine
  use "rafamadriz/friendly-snippets" -- Snippets pack

  -- LSP
  use "neovim/nvim-lspconfig" -- Config for nvim-lsp
  use "williamboman/nvim-lsp-installer" -- LSP servers installer
  use "jose-elias-alvarez/null-ls.nvim" -- Linting and formatting

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }


  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
