return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {
      enable_git_status = true,
      filesystem = {
        filtered_items = {
          visible = false,
          hide_by_pattern = {
            "*.class",
          }
        }
      }
    }
  end,
}

