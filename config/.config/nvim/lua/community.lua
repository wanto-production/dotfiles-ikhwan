-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
local server = {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.angular" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
}

return server
