return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end 
  },


  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },


  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition,opts)
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
