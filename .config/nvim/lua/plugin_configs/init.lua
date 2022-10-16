require("mason").setup()
require("mason-lspconfig").setup(
{
ensure_installed = {"tsserver"}
}
)
require("plugin_configs.nvim-web-devicons")
require("plugin_configs.cmp")
require("plugin_configs.lualine")
require("plugin_configs.nvim-colorizer")
require("plugin_configs.nvim-treesitter")
require("plugin_configs.github-theme")
require("plugin_configs.telescope")
require("plugin_configs.lsp")
require("plugin_configs.nvim-git")
require("plugin_configs.gitsigns")
