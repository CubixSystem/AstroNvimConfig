---@type LazySpec
return {
  {
    -- https://github.com/stevearc/aerial.nvim
    "stevearc/aerial.nvim",
    opts = {
      on_attach = function(bufnr)
        -- Jump forwards/backwards with '{' and '}'
        -- vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        -- vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        --
        -- vim.opt_local.number = true
        -- vim.opt_local.relativenumber = true
      end,
    },
  },
}
