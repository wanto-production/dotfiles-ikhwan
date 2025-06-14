return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {
        shell = "/bin/zsh", -- ganti sesuai lokasi zsh-mu
        start_in_insert = true,
        persist_size = true,
        close_on_exit = true,
        direction = "float",
        float_opts = {
          border = "curved",
          winblend = 5,
          width = function() return math.floor(vim.o.columns * 0.8) end,
          height = function() return math.floor(vim.o.lines * 0.8) end,
          row = function() return math.floor(vim.o.lines * 0.1) end,
          col = function() return math.floor(vim.o.columns * 0.1) end,
        },
      }

      -- Function to toggle terminal (force toggle from anywhere)
      local function toggle_term()
        local Terminal = require("toggleterm.terminal").Terminal
        local term = Terminal:new { hidden = true }
        term:toggle()
      end

      -- Key mappings: Ctrl+` in normal and terminal mode
      vim.keymap.set("n", "<C-t>", toggle_term, { desc = "Toggle Terminal" })
    end,
  },
}
