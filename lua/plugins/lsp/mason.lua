return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "ts_ls",    -- JavaScript/TypeScript server
        "html",        -- HTML server
        "cssls",       -- CSS server
        "tailwindcss", -- Tailwind CSS server
        "emmet_ls",    -- Emmet for HTML and CSS
        "eslint",      -- Linter for JavaScript and TypeScript
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",    -- Prettier formatter for JavaScript, HTML, CSS
        "stylua",      -- Lua formatter
        "eslint_d",    -- ESLint daemon for faster linting
      },
    })
  end,
}

