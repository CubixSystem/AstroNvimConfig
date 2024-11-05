-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.bash" },
  -- { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" }, -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/colorscheme/gruvbox-nvim
  { import = "astrocommunity.diagnostics.trouble-nvim" }, -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/diagnostics/trouble-nvim
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" }, -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/diagnostics/lsp_lines-nvim
  -- import/override with your plugins folder
}
