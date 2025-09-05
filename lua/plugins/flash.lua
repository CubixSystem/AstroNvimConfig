---@type LazySpec
return {
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/motion/flash-nvim
  -- https://github.com/folke/flash.nvim
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
