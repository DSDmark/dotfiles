return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.eslint.setup({
        capabilities = capabilities,
        cmd = { "vscode-eslint-language-server", "--stdio" },
        on_attach = function(client)
          client.resolved_capabilities.document_formatting = true
        end,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
    end,
  },
}
