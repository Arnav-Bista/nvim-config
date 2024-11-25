-- return {
--   'ellisonleao/gruvbox.nvim',
--   config = function()
--     vim.cmd.colorscheme 'gruvbox'
--   end,
--   priority = 1000,
-- }


-- return {
--   'Mofiqul/dracula.nvim',
--   config = function()
--     vim.cmd.colorscheme 'dracula'
--   end,
--   priority = 1000,
-- }

return {
  'catppuccin/nvim',
  priority = 1000,
  opts = {
    term_colors = true,
    transparent_background = false,
    dim_inactive = {
      enabled = false,   -- dims the background color of inactive window
      shade = "dark",
      percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    show_end_of_buffer = false,
    no_italic = true, -- Force no italic
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
    }
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    -- vim.cmd.colorscheme("catppuccin-macchiato")
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
