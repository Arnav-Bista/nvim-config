return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = '*', -- set this if you want to always pull the latest change
  opts = {
    hints = { enabled = false },
    provider = "copilot",
    providers = {
      copilot = {
        model = "claude-3.7-sonnet"
      }
    }
    -- claude = {
    --   model="claude-3-5-sonnet-20240620"
    -- },
    -- winfixbuf = false,
    -- mappings = {
    --   clear = "<leader>ac",
    -- },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    -- "zbirenbaum/copilot.lua",      -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
        },
      },
    },
  },
}
