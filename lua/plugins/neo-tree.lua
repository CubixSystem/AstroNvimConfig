-- https://dx13.co.uk/articles/2023/04/08/neovim-reveal-in-finder/
vim.api.nvim_create_user_command("Rfinder", function()
  local path = vim.api.nvim_buf_get_name(0)
  os.execute("open -R " .. path)
end, {})

local events = require "neo-tree.events"

---@type LazySpec
return {
  -- https://github.com/nvim-neo-tree/neo-tree.nvim?tab=readme-ov-file#quickstart
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = events.NEO_TREE_BUFFER_ENTER,
        handler = function()
          vim.opt_local.number = true
          vim.opt_local.relativenumber = true
          vim.opt_local.signcolumn = "auto"
          -- vim.opt_local.signcolumn = "yes"
          -- vim.opt_local.foldcolumn = "0"
          --   --   -- require "notify" "neo_tree_buffer_enter"
          --   --   -- vim.cmd "stopinsert"
          --   -- vim.cmd "setlocal relativenumber"
          --   --   -- vim.opt_local.relativenumber = true
          --   --   -- local buf = vim.api.nvim_get_current_buf()
          --   --
          --   --   -- nvim_set_option_value("relativenumber", true, { buf = buf })
        end,
      },

      -- https://github.com/AstroNvim/astrolsp?tab=readme-ov-file#neo-treenvim
      {
        event = events.BEFORE_FILE_ADD,
        handler = function(args) require("astrolsp.file_operations").willCreateFiles(args) end,
      },
      {
        event = events.FILE_ADDED,
        handler = function(args) require("astrolsp.file_operations").didCreateFiles(args) end,
      },
      {
        event = events.BEFORE_FILE_DELETE,
        handler = function(args) require("astrolsp.file_operations").willDeleteFiles(args) end,
      },
      {
        event = events.FILE_DELETED,
        handler = function(args) require("astrolsp.file_operations").didDeleteFiles(args) end,
      },
      {
        event = events.BEFORE_FILE_MOVE,
        handler = function(args)
          require("astrolsp.file_operations").willRenameFiles { from = args.source, to = args.destination }
        end,
      },
      {
        event = events.BEFORE_FILE_RENAME,
        handler = function(args)
          require("astrolsp.file_operations").willRenameFiles { from = args.source, to = args.destination }
        end,
      },
      {
        event = events.FILE_MOVED,
        handler = function(args)
          require("astrolsp.file_operations").didRenameFiles { from = args.source, to = args.destination }
        end,
      },
      {
        event = events.FILE_RENAMED,
        handler = function(args)
          require("astrolsp.file_operations").didRenameFiles { from = args.source, to = args.destination }
        end,
      },
    },
    window = {
      -- position = "right",
      -- width = 60,
      position = "float",
      -- mappings = {
      --   ["e"] = "command_a",
      -- },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_by_name = {
          "node_modules",
          "dist",
          "__pycache__",
          ".tvm_cache",
        },
        hide_by_pattern = {
          "*.a",
        },
      },
    },
  },
}
