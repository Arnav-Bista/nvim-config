-- Custom commands configuration
-- This file contains user-defined commands for Neovim

-- Format command - formats the current buffer using LSP
vim.api.nvim_create_user_command('Format', function()
  vim.lsp.buf.format({ async = false })
end, { desc = 'Format current buffer with LSP' })

