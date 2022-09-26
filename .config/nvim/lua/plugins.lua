local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end
vim.cmd [[packadd packer.nvim]]


vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use{
	'nvim-lualine/lualine.nvim',
	requires={'kyazdani42/nvim-web-devicons',opt= true }
  }
  use 'norcalli/nvim-colorizer.lua'
end)
