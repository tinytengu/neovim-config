local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {
    "gitignore",
    "dockerfile",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "php",
    "python",
    "rust",
    "scss",
    "sql",
    "toml",
    "typescript",
    "tsx",
    "yaml"
  }, -- "all" or a list of languages
  sync_install = false,
  auto_install = true,
  ignore_install = { "" },

  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = { "python" }
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
