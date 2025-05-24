-- Customize Mason
local ensure_installed = {
  -- install language servers
  "lua-language-server",

  "tailwindcss-language-server",

  "debugpy",
  -- install formatters
  "stylua",
  -- install any other package
  "tree-sitter-cli",
}

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = ensure_installed,
    },
  },
}
