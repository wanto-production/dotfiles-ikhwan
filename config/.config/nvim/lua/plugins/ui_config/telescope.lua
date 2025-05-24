-- plugins/telescope.lua:
---@type LazySpec
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup {
        defaults = {
          file_ignore_patterns = {
            "dist",
            "node_modules",
            "vendor",
          },
        },
      }

      local builtin = require "telescope.builtin"
      vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    end,
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    cond = vim.fn.executable "make" == 1,
    config = function() require("telescope").load_extension "fzf" end,
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function() require("telescope").load_extension "ui-select" end,
  },
}
