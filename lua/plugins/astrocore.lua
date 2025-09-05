-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  -- https://github.com/AstroNvim/astrocore
  "AstroNvim/astrocore",
  opts = function(_, opts)
    local maps = opts.mappings
    maps.x["s"] = {
      function() require("flash").jump() end,
      desc = "Flash",
    }
    maps.x["R"] = {
      function() require("flash").treesitter_search() end,
      desc = "Treesitter Search",
    }
    maps.x["S"] = {
      function() require("flash").treesitter() end,
      desc = "Flash Treesitter",
    }

    maps.o["r"] = {
      function() require("flash").remote() end,
      desc = "Remote Flash",
    }
    maps.o["R"] = {
      function() require("flash").treesitter_search() end,
      desc = "Treesitter Search",
    }
    maps.o["s"] = {
      function() require("flash").jump() end,
      desc = "Flash",
    }
    maps.o["S"] = {
      function() require("flash").treesitter() end,
      desc = "Flash Treesitter",
    }

    maps.n["s"] = {
      function() require("flash").jump() end,
      desc = "Flash",
    }
    maps.n["S"] = {
      function() require("flash").treesitter() end,
      desc = "Flash Treesitter",
    }
    maps.n["<Leader>e"] = {
      "<Cmd>Neotree toggle reveal<CR>",
      desc = "Toggle Explorer",
    }

    -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
    -- maps.n["<Leader>bb"] = {
    --   function() require("snacks").picker.buffers() end,
    --   desc = "Buffers",
    -- }
    maps.n["<Leader>,"] = {
      function() require("snacks").picker.buffers() end,
      desc = "Buffers",
    }
    maps.n["<Leader>:"] = {
      function() require("snacks").picker.command_history() end,
      desc = "Command History",
    }

    -- See https://docs.astronvim.com/recipes/disable_tabline/
    opts.options.opt.showtabline = 0
  end,

  ---@type AstroCoreOpts
  -- opts = {
  --   -- Configure core features of AstroNvim
  --   features = {
  --     large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
  --     autopairs = true, -- enable autopairs at start
  --     cmp = true, -- enable completion at start
  --     diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
  --     highlighturl = true, -- highlight URLs at start
  --     notifications = true, -- enable notifications at start
  --   },
  --   -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  --   diagnostics = {
  --     virtual_text = true,
  --     underline = true,
  --   },
  --   -- vim options can be configured here
  --   options = {
  --     opt = { -- vim.opt.<key>
  --       relativenumber = true, -- sets vim.opt.relativenumber
  --       number = true, -- sets vim.opt.number
  --       spell = false, -- sets vim.opt.spell
  --       signcolumn = "yes", -- sets vim.opt.signcolumn to yes
  --       wrap = false, -- sets vim.opt.wrap
  --     },
  --     g = { -- vim.g.<key>
  --       -- configure global vim variables (vim.g)
  --       -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
  --       -- This can be found in the `lua/lazy_setup.lua` file
  --     },
  --   },
  --   -- Mappings can be configured through AstroCore as well.
  --   -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
  --   mappings = {
  --     -- first key is the mode
  --     n = {
  --       -- second key is the lefthand side of the map
  --
  --       -- navigate buffer tabs
  --       ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
  --       ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
  --
  --       -- mappings seen under group name "Buffer"
  --       ["<Leader>bd"] = {
  --         function()
  --           require("astroui.status.heirline").buffer_picker(
  --             function(bufnr) require("astrocore.buffer").close(bufnr) end
  --           )
  --         end,
  --         desc = "Close buffer from tabline",
  --       },
  --
  --       -- tables with just a `desc` key will be registered with which-key if it's installed
  --       -- this is useful for naming menus
  --       -- ["<Leader>b"] = { desc = "Buffers" },
  --
  --       -- setting a mapping to false will disable it
  --       -- ["<C-S>"] = false,
  --     },
  --   },
  -- },
}
