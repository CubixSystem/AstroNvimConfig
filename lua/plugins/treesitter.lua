-- Customize Treesitter

-- See https://github.com/kevinhwang91/nvim-ufo/issues/288
vim.g._ts_force_sync_parsing = true

---@type LazySpec
return {
  {
    -- https://a.yandex-team.ru/arcadia/devtools/ide/tree-sitter-yamake#cherez-lazynvim
    dir = "/Users/liberateai/Documents/Code/arc/alfa/arcadia/devtools/ide/tree-sitter-yamake",
    build = ":TSInstall yamake",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    enabled = function()
      return vim.fn.isdirectory "/Users/liberateai/Documents/Code/arc/alfa/arcadia/devtools/ide/tree-sitter-yamake" ~= 0
    end,
  },
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
