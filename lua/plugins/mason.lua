-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  -- https://github.com/williamboman/mason-lspconfig.nvim
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "vtsls",
        "eslint",
        "jsonls",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  -- https://github.com/jay-babu/mason-null-ls.nvim
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        "selene",
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
        -- add more arguments for adding more debuggers
      },
    },
  },
}
