-- Customize Treesitter

-- See https://github.com/kevinhwang91/nvim-ufo/issues/288
vim.g._ts_force_sync_parsing = true

---@type LazySpec
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "luap",
        "json",
        "jsonc",
        "rust",
        "toml",
        "go",
        "gomod",
        "gosum",
        "gowork",
        -- "yamake",
        -- "vim",
        -- add more arguments for adding more treesitter parsers
      },
    },
  },
}
