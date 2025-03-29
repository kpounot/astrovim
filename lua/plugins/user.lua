return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  "mg979/vim-visual-multi",
  {
    "phaazon/hop.nvim",
    branch='v2',
    config = function() 
      require 'hop'.setup()
      vim.api.nvim_set_keymap("n", "<leader>z", ":HopWord<cr>", { desc = "HopWord" })
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false,
    keys = {
      {"<leader>r", group = "Rusteceanvim", desc = "Rusteceanvim"},
      {"<leader>rr", "<cmd>RustLsp runnables<cr>", desc = "Runnables" },
      {"<leader>rt", "<cmd>RustLsp testables<cr>", desc = "Testables" },
      {"<leader>rd", "<cmd>RustLsp debuggables<cr>", desc = "Debuggables" },
    }
  },
  {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  },
}
