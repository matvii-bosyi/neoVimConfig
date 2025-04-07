local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- require "plugins.telescope",
	require "plugins.treesitter",
	require "plugins.neotree",
	require "plugins.theme",
	require "plugins.lualine",
	require "plugins.bufferline",
	require "plugins.nvim-cmp",
	require "plugins.lsp.mason",
	require "plugins.lsp.lspconfig",
	require "plugins.auto-save",
	require "plugins.auto-pairs",
	require "plugins.live-server",
	require "plugins.gpt",
	-- "ThePrimeagen/vim-be-good",
	-- {
	-- 	"folke/which-key.nvim", opts = {}
	-- }
})
require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
  ignore_certificate_errors = false,
  -- workspace_folders = {
  --   paths = { "/your/project" },
  --   get_paths = function()
  --       return { "/your/project" }
  --   end,
  -- },
})
