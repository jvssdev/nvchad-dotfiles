-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "rosepine",
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  hl_override = {
    -- General editor highlights
    Normal = { bg = "#000000" }, -- Main editor background
    NormalFloat = { bg = "#000000" }, -- Floating windows background
    NonText = { bg = "#000000" }, -- Non-text areas (e.g., ~ at end of buffer)
    LineNr = { bg = "#000000" }, -- Line numbers background
    CursorLine = { bg = "#000000" }, -- Cursor line background
    CursorLineNr = { bg = "#000000" }, -- Cursor line number background
    SignColumn = { bg = "#000000" }, -- Sign column background
    FoldColumn = { bg = "#000000" }, -- Fold column background
    EndOfBuffer = { bg = "#000000" }, -- End of buffer background
    MsgArea = { bg = "#000000" }, -- Message area background
    MsgSeparator = { bg = "#000000" }, -- Message separator background

    -- -- Nvim-Tree highlights (comprehensive list to cover all possible elements)
    -- NvimTreeNormal = { bg = "#000000" }, -- Main Nvim-Tree window background
    -- NvimTreeNormalFloat = { bg = "#000000" }, -- Floating windows in Nvim-Tree
    -- NvimTreeFolderName = { bg = "#000000" }, -- Folder names
    -- NvimTreeEmptyFolderName = { bg = "#000000" }, -- Empty folder names
    -- NvimTreeOpenedFolderName = { bg = "#000000" }, -- Opened folder names
    -- NvimTreeRootFolder = { bg = "#000000" }, -- Root folder
    -- NvimTreeGitDirty = { bg = "#000000" }, -- Git dirty indicators
    -- NvimTreeGitStaged = { bg = "#000000" }, -- Git staged indicators
    -- NvimTreeGitNew = { bg = "#000000" }, -- Git new files
    -- NvimTreeGitDeleted = { bg = "#000000" }, -- Git deleted files
    -- NvimTreeGitIgnored = { bg = "#000000" }, -- Git ignored files
    -- NvimTreeGitRenamed = { bg = "#000000" }, -- Git renamed files
    -- NvimTreeGitMerge = { bg = "#000000" }, -- Git merge conflict indicators
    -- NvimTreeIndentMarker = { bg = "#000000" }, -- Indent markers
    -- NvimTreeWindowPicker = { bg = "#000000" }, -- Window picker
    -- NvimTreeSpecialFile = { bg = "#000000" }, -- Special files (e.g., README)
    -- NvimTreeCursorLine = { bg = "#000000" }, -- Cursor line in Nvim-Tree
    -- NvimTreeFolderIcon = { bg = "#000000" }, -- Folder icons
    -- NvimTreeFileIcon = { bg = "#000000" }, -- File icons
    -- NvimTreeSymlink = { bg = "#000000" }, -- Symlink files
    -- NvimTreeBookmark = { bg = "#000000" }, -- Bookmarked files
    -- NvimTreeExecFile = { bg = "#000000" }, -- Executable files
    -- NvimTreeImageFile = { bg = "#000000" }, -- Image files
    -- NvimTreeModifiedFile = { bg = "#000000" }, -- Modified files
    -- NvimTreeOpenedFile = { bg = "#000000" }, -- Opened files
    -- NvimTreeLiveFilterPrefix = { bg = "#000000" }, -- Live filter prefix
    -- NvimTreeStatusLine = { bg = "#000000" }, -- Statusline within Nvim-Tree
    -- NvimTreeVertSplit = { bg = "#000000" }, -- Vertical split in Nvim-Tree
    -- NvimTreeEndOfBuffer = { bg = "#000000" }, -- End of buffer in Nvim-Tree
    -- NvimTreeStatusLineNC = { bg = "#000000" }, -- Non-current statusline in Nvim-Tree
    -- NvimTreeGitUntracked = { bg = "#000000" }, -- Git untracked files
    -- NvimTreeGitConflict = { bg = "#000000" }, -- Git conflict files
    -- NvimTreeBookmarkIcon = { bg = "#000000" }, -- Bookmark icons
    -- NvimTreeSignColumn = { bg = "#000000" }, -- Sign column in Nvim-Tree
    -- NvimTreeNormalNC = { bg = "#000000" }, -- Non-current Nvim-Tree window
    -- NvimTreeLineNr = { bg = "#000000" }, -- Line numbers in Nvim-Tree (if enabled)
    --
    -- Telescope highlights
    TelescopeNormal = { bg = "#000000" }, -- Main Telescope window background
    TelescopeBorder = { bg = "#000000", fg = "#000000" }, -- Telescope border
    --TelescopePromptNormal = { bg = "#000000" }, -- Prompt area background
    TelescopePromptBorder = { bg = "#000000", fg = "#000000" }, -- Prompt border
    --TelescopeResultsNormal = { bg = "#000000" }, -- Results area background
    TelescopeResultsBorder = { bg = "#000000", fg = "#000000" }, -- Results border
    TelescopePreviewNormal = { bg = "#000000" }, -- Preview window background
    TelescopePreviewBorder = { bg = "#000000", fg = "#000000" }, -- Preview border
    --TelescopeSelection = { bg = "#000000" }, -- Selected item background
    TelescopeSelectionCaret = { bg = "#000000" }, -- Caret of selected item
    TelescopeMultiSelection = { bg = "#000000" }, -- Multi-selection background
    --TelescopeTitle = { bg = "#000000" }, -- Title background
    --TelescopePromptTitle = { bg = "#000000" }, -- Prompt title background
    TelescopeResultsTitle = { bg = "#000000" }, -- Results title background
    TelescopePreviewTitle = { bg = "#000000" }, -- Preview title background
    TelescopeMatching = { bg = "#000000" }, -- Matching text background
    TelescopePromptPrefix = { bg = "#000000" }, -- Prompt prefix background

    -- Tabufline highlights
    TabLine = { bg = "#000000" }, -- Tabufline background
    TabLineSel = { bg = "#000000" }, -- Selected tab background
    TabLineFill = { bg = "#000000" }, -- Tabufline fill background
    TabLineBufTabInactive = { bg = "#000000" }, -- Inactive buffer tabs
    TabLineBufTabActive = { bg = "#000000" }, -- Active buffer tabs
    TabLineBufTabClose = { bg = "#000000" }, -- Buffer tab close button
    TbLineBufOn = { bg = "#000000" }, -- Active buffer in Tabufline
    TbLineBufOff = { bg = "#000000" }, -- Inactive buffer in Tabufline
    TbLineBufOnClose = { bg = "#000000" }, -- Close button for active buffer
    TbLineBufOffClose = { bg = "#000000" }, -- Close button for inactive buffer
    TbLineThemeToggleBtn = { bg = "#000000" }, -- Theme toggle button
    TbLineTabNewBtn = { bg = "#000000" }, -- New tab button

    -- Terminal (Volt/Term) highlights
    TerminalNormal = { bg = "#000000" }, -- Terminal normal background
    TerminalNormalFloat = { bg = "#000000" }, -- Terminal floating window
    TerminalBorder = { bg = "#000000" }, -- Terminal border
    TermCursor = { bg = "#000000" }, -- Terminal cursor
    TermCursorNC = { bg = "#000000" }, -- Non-current terminal cursor

    -- UI elements (Statusline, Winbar, etc.)
    -- StatusLine = { bg = "#000000" }, -- Statusline background
    -- StatusLineNC = { bg = "#000000" }, -- Non-current statusline
    WinBar = { bg = "#000000" }, -- Winbar background
    WinBarNC = { bg = "#000000" }, -- Non-current winbar
    Pmenu = { bg = "#000000" }, -- Popup menu background (completion)
    PmenuSel = { bg = "#000000" }, -- Selected popup menu item
    PmenuSbar = { bg = "#000000" }, -- Popup menu scrollbar
    PmenuThumb = { bg = "#000000" }, -- Popup menu scrollbar thumb
    FloatBorder = { bg = "#000000" }, -- Floating window border
    WinSeparator = { bg = "#000000" }, -- Window separator
    VertSplit = { bg = "#000000" }, -- Vertical split separator
  },
  transparency = false, -- Disable transparency to enforce black background
}

-- Autocommands to force reapply highlights after theme and plugin initialization
M.nvchad = {
  autocmds = {
    {
      event = { "VimEnter", "ColorScheme", "BufWinEnter" },
      callback = function()
        vim.schedule(function()
          vim.api.nvim_command "hi clear"
          require("base46").load_all_highlights()
        end)
      end,
    },
    {
      event = { "User NvimTreeOpened", "BufWinEnter" },
      pattern = "NvimTree*",
      callback = function()
        vim.schedule(function()
          vim.api.nvim_command "hi clear"
          require("base46").load_all_highlights()
        end)
      end,
    },
  },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}
M.ui = {
  cmp = {
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      lsp = true,
    },
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
    order = { "mode", "git", "file", "%=", "lsp", "cursor" },
    modules = {
      file = function()
        local path = vim.fn.expand "%:p"
        if path == "" then
          return " [No File] "
        end
        return "%#StText# " .. path .. " "
      end,
    },
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
    bufwidth = 21,
  },
}
M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}
return M

-- {
--    base46 = {
--      theme = "onedark",
--      hl_add = {},
--      hl_override = {},
--      integrations = {},
--      changed_themes = {},
--      transparency = false,
--      theme_toggle = { "onedark", "one_light" },
--    },
--
--    ui = {
--      cmp = {
--        lspkind_text = true,
--        style = "default", -- default/flat_light/flat_dark/atom/atom_colored
--        format_colors = {
--          lsp = true,
--        },
--      },
--
--      telescope = { style = "borderless" }, -- borderless / bordered
--
--      statusline = {
--        theme = "default", -- default/vscode/vscode_colored/minimal
--        -- default/round/block/arrow separators work only for default statusline theme
--        -- round and block will work for minimal theme only
--        separator_style = "default",
--        order = nil,
--        modules = nil,
--      },
--
--      -- lazyload it when there are 1+ buffers
--      tabufline = {
--        enabled = true,
--        lazyload = true,
--        order = { "treeOffset", "buffers", "tabs", "btns" },
--        modules = nil,
--        bufwidth = 21,
--      },
--    },
--
--    nvdash = {
--      load_on_startup = false,
--
--      header = {
--        "                            ",
--        "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
--        "   ▄▀███▄     ▄██ █████▀    ",
--        "   ██▄▀███▄   ███           ",
--        "   ███  ▀███▄ ███           ",
--        "   ███    ▀██ ███           ",
--        "   ███      ▀ ███           ",
--        "   ▀██ █████▄▀█▀▄██████▄    ",
--        "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
--        "                            ",
--        "     Powered By  eovim    ",
--        "                            ",
--      },
--
--      buttons = {
--        { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
--        { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
--        -- more... check nvconfig.lua file for full list of buttons
--      },
--    }
--
--    term = {
--      base46_colors = true,
--      winopts = { number = false },
--      sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
--      float = {
--        relative = "editor",
--        row = 0.3,
--        col = 0.25,
--        width = 0.5,
--        height = 0.4,
--        border = "single",
--      },
--    },
--
--    lsp = { signature = true },
--
--    cheatsheet = {
--      theme = "grid", -- simple/grid
--      excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
--    },
--
--    mason = { pkgs = {}, skip = {} },
--
--    colorify = {
--      enabled = true,
--      mode = "virtual", -- fg, bg, virtual
--      virt_text = "󱓻 ",
--      highlight = { hex = true, lspvars = true },
--    },
--  }
