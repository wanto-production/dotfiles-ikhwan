require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    version = "^5", -- Remove version tracking to elect for nightly AstroNvim
    import = "astronvim.plugins",
    opts = { -- AstroNvim options must be set here with the `import` key
      mapleader = " ", -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",", -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true, -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil, -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
      update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
    },
    config = function()
      require("toggleterm").setup {
        open_mapping = [[<C-t>]],
        direction = "float",
        float_opts = {
          border = "curved", -- bisa juga 'single', 'double', 'shadow', dst.
        },
        start_in_insert = true,
        shade_terminals = true,
        shading_factor = 2,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        close_on_exit = true,
        shell = vim.o.shell,
      }
    end,
  },
  { import = "community" },
  { import = "plugins" },
  { import = "plugins.ui_config" },
  { import = "plugins.optional" },
} --[[@as LazySpec]], {
  -- Configure any other `lazy.nvim` configuration options here
  install = { colorscheme = { "astrotheme", "habamax" } },
  ui = { backdrop = 100 },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
} --[[@as LazyConfig]])
