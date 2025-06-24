local nmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { desc = desc })
end

local vmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('v', keys, func, { desc = desc })
end

nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
vmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
nmap('<leader>k', vim.lsp.buf.signature_help, 'Signature Documentation')

nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
nmap('<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, '[W]orkspace [L]ist Folders')


nmap('[d', vim.diagnostic.get_prev, "Go to previous diagnostic message")
nmap(']d', vim.diagnostic.get_next, "Go to next diagnostic message")
nmap('<leader>e', vim.diagnostic.open_float, "Open floating diagnostic message")
nmap('<leader>q', vim.diagnostic.setloclist, "Open diagnostics list")

-- DAP 
local dap = require('dap')
nmap('<leader>b', dap.toggle_breakpoint, '[B]reakpoint')
nmap('<leader>dr', dap.repl.toggle, '[D]ebug [R]epl')


nmap('<leader>dk', dap.continue, '[D]ebug [K]eep (Continue)')
nmap('<leader>dl', dap.run_last, '[D]ebug [L]ast')


vim.api.nvim_set_hl(0, 'DapBreakpointSign', { fg = '#ff0000' }) -- Uses a hex code for red

vim.fn.sign_define('DapBreakpoint', {
  text = '•',
  texthl = 'DapBreakpointSign',
  linehl = '',
  numhl = ''
})
