-- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/motion/flash-nvim
-- https://github.com/folke/flash.nvim
---@type LazySpec
return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    mode = "fuzzy",
    label = {
      after = false,
      before = true,
    },
    -- highlight = {
    --   matches = false,
    -- },
  },
}
