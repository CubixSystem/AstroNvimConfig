-- https://github.com/nvim-neo-tree/neo-tree.nvim?tab=readme-ov-file#quickstart
---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    -- event_handlers = {
    --   event = "neo_tree_buffer_enter",
    --   handler = function() vim.opt_local.relativenumber = true end,
    -- },
    window = {
      position = "right",
      width = 60,
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_by_name = {
          "node_modules",
          "dist",
        },
      },
    },
  },
}
