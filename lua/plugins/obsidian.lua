return {
  -- "epwalsh/obsidian.nvim",
  "obsidian-nvim/obsidian.nvim", -- NOTE: Using a fork from the community
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
    "MeanderingProgrammer/render-markdown.nvim",
  },
  keys = {
    { "<leader>o" .. "o", "<cmd>ObsidianOpen<CR>", desc = "Open in Obsidian App" },
    { "<leader>o" .. "s", "<cmd>ObsidianSearch<CR>", desc = "Obsidian Search" },
    { "<leader>o" .. "n", "<cmd>ObsidianNew<CR>", desc = "Obsidian New Note" },
    { "<leader>o" .. "<space>", "<cmd>ObsidianQuickSwitch<CR>", desc = "Obsidian Find Files" },
    { "<leader>o" .. "b", "<cmd>ObsidianBacklinks<CR>", desc = "Obsidian Backlinks" },
    { "<leader>o" .. "t", "<cmd>ObsidianTemplate<CR>", desc = "Obsidian Template" },
    { "<leader>o" .. "L", "<cmd>ObsidianLink<CR>", mode = "v", desc = "Obsidian Link" },
    { "<leader>o" .. "l", "<cmd>ObsidianLinks<CR>", desc = "Obsidian Links" },
    -- { "<leader>o" .. "l", "<cmd>ObsidianLinkNew<CR>", mode = "v", desc = "Obsidian New Link" },
    { "<leader>o" .. "e", "<cmd>ObsidianExtractNote<CR>", mode = "v", desc = "Obsidian Extract Note" },
    { "<leader>o" .. "w", "<cmd>ObsidianWorkspace<CR>", desc = "Obsidian Workspace" },
    { "<leader>o" .. "r", "<cmd>ObsidianRename<CR>", desc = "Obsidian Rename" },
    { "<leader>o" .. "i", "<cmd>ObsidianPasteImg<CR>", desc = "Obsidian Paste Image" },
    { "<leader>o" .. "d", "<cmd>ObsidianDailies<CR>", desc = "Obsidian Daily Notes" },
  },
  opts = {
    workspaces = {
      {
        name = "Obsidian Vault",
        path = "~/Documents/Obsidian Vault",
      },
    },
    --
    -- notes_subdir = "01 - Bandeja Entrada",
    --
    -- daily_notes = {
    --   folder = "03 - Diario/Diariamente",
    --   date_format = "%Y-%m-%d",
    --   alias_format = "%B %-d, %Y",
    --   template = "00 - Data/Plantillas/Diariamente.md",
    -- },

    completion = {
      nvim_cmp = false,
      blink = true,
    },

    -- picker = {
    --   name = "snacks.pick",
    --   note_mappings = {
    --     -- Create a new note from your query.
    --     new = "<C-x>",
    --     -- Insert a link to the selected note.
    --     insert_link = "<C-l>",
    --   },
    --   tag_mappings = {
    --     -- Add tag(s) to current note.
    --     tag_note = "<C-x>",
    --     -- Insert a tag at the current location.
    --     insert_tag = "<C-l>",
    --   },
    -- },

    mappings = {
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      ["<C-c>"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      ["<cr>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      },
    },

    -- new_notes_location = "notes_subdir",

    -- templates = {
    --   subdir = "00 - Data/Plantillas",
    --   date_format = "%Y-%m-%d-%a",
    --   time_format = "%H:%M",
    -- },

    ---@param spec { id: string, dir: obsidian.Path, title: string|? }
    ---@return string|obsidian.Path The full path to the new note.
    note_path_func = function(spec)
      return spec.title
    end,

    note_frontmatter_func = function(note)
      if note.title then
        note:add_alias(note.title)
      end

      local out = { aliases = note.aliases }

      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end

      return out
    end,

    follow_url_func = function(url)
      vim.fn.jobstart { "xdg-open", url }
    end,

    -- attachments = {
    --   img_folder = "00 - Data/Documentos",
    -- },

    ui = { enable = true },

    statusline = {
      enabled = true,
      format = "{{backlinks}} backlinks | {{words}} words",
    },
  },
}
