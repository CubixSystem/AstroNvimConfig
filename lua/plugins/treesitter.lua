-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "luap",
      "json",
      "jsonc",
      -- "vim",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
