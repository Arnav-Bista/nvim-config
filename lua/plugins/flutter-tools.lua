local keymaps = require('config.keymaps')

require('lspconfig').dartls.setup {
  on_attach = keymaps.on_attach
}

return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    require('flutter-tools').setup {
      lsp = {
        on_attach = require('lspconfig').dartls.setup {
          on_attach = keymaps.on_attach
        },
        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
      },
    }
  end,
  opts = {}
}
