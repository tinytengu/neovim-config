local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autorun PackerSync command on plugins.lua update
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { 'plugins.lua' },
  group = vim.api.nvim_create_augroup("packer_user_config", {}),
  callback = function(data)
    vim.cmd("source " .. data.file .. " | PackerSync")
  end
})

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float {
        border = "shadow"
      }
    end,
  },
}
