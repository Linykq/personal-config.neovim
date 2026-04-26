require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",           -- Lua
    "clangd",           -- C, C++
    "jdtls",            -- Java
    "gopls",            -- Go
    "pyright",          -- Python (or "pylsp", "basedpyright")
    "ts_ls",            -- TypeScript, JavaScript (formerly "tsserver")
    "cssls",            -- CSS
    "html",             -- HTML
    "texlab",           -- LaTeX
  }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config['lua_ls'] = {
  capabilities = capabilities,
}
