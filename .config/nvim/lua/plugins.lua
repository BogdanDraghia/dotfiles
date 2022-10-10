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
	use 'nvim-lualine/lualine.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use {
   'nvim-treesitter/nvim-treesitter',
     run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
  use 'projekt0n/github-nvim-theme'
  use 'neovim/nvim-lspconfig'
  use 'kyazdani42/nvim-web-devicons'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'BurntSushi/ripgrep'
  use{
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires={{'nvim-lua/plenary.nvim'}}
  }
end)
