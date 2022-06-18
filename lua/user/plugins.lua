vim.cmd [[packadd packer.nvim]]
vim.cmd [[let g:black_virtualenv = getcwd() .. "\\venv"]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use 'ryanoasis/vim-devicons'

  use 'preservim/nerdtree'
  use 'preservim/nerdcommenter'

  use {'neoclide/coc.nvim', branch = 'release'}
  use {'psf/black', branch = 'stable' }

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  require("bufferline").setup{}
end)

