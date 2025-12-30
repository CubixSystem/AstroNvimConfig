-- Customize Mason plugins

---@type LazySpec
return {
  {
    -- use mason-lspconfig to configure LSP installations
    -- https://github.com/williamboman/mason-lspconfig.nvim
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "vtsls",
        "eslint",
        "jsonls",
        "taplo",
        "gopls",
        "ruff",
        "basedpyright",
        "buf_ls", -- https://github.com/bufbuild/buf
        "clangd",
        -- "sqls",
        -- add more arguments for adding more language servers
      },
    },
  },
  {
    -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
    -- https://github.com/jay-babu/mason-null-ls.nvim
    -- https://github.com/nvimtools/none-ls.nvim
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        "selene",
        "gomodifytags", -- https://github.com/fatih/gomodifytags
        "iferr", -- https://github.com/koron/iferr
        "impl",
        "gotests", -- https://github.com/cweill/gotests
        "goimports",
        "isort",
        "buf",
        "clang-format",
        -- add more arguments for adding more null-ls sources
      },
      handlers = {
        selene = function(source_name, methods)
          local null_ls = require "null-ls"
          for _, method in ipairs(methods) do
            null_ls.register(null_ls.builtins[method][source_name].with {
              runtime_condition = function(params)
                return #vim.fs.find("selene.toml", { path = params.bufname, upward = true, type = "file" }) > 0
              end,
            })
          end
        end,
        -- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md#goimports
        goimports = function(_source_name, _methods)
          local null_ls = require "null-ls"
          null_ls.register(null_ls.builtins.formatting.goimports.with {
            -- command = "ya",
            -- args = { "tool", "yoimports", "$DIRNAME" },
            -- args = { "tool", "goimports", "-srcdir", "$DIRNAME" },
            extra_args = { "-local", "a.yandex-team.ru" },
          })
        end,
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "js",
        "codelldb",
        "delve",
        "debugpy",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
