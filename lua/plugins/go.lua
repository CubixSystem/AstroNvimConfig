---@type LazySpec
return {
  -- {
  --   -- https://github.com/leoluz/nvim-dap-go
  --   "leoluz/nvim-dap-go",
  --   ft = "go",
  --   dependencies = {
  --     "mfussenegger/nvim-dap",
  --   },
  --   opts = {},
  -- },
  -- {
  --   -- https://github.com/olexsmir/gopher.nvim
  --   "olexsmir/gopher.nvim",
  --   ft = "go",
  --   build = function()
  --     if not require("lazy.core.config").spec.plugins["mason.nvim"] then
  --       vim.print "Installing go dependencies..."
  --       vim.cmd.GoInstallDeps()
  --     end
  --   end,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     { "williamboman/mason.nvim", optional = true }, -- by default use Mason for go dependencies
  --   },
  --   opts = {},
  -- },
  {
    "nvim-neotest/neotest-go",
  },
}
