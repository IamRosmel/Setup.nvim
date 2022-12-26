local base30 = require("lib.colors").get_theme_tb "base_30"

return {

  StatusLine = {
    fg = base30.darker_black,
    bg = base30.blue,
    -- bold = true,
  },

  -- St_gitIcons = {
  --   fg = base30.light_grey,
  --   bg = base30.statusline_bg,
  --   bold = true,
  -- },

  -- LSP

  -- St_lspError = {
  --   fg = base30.red,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_lspWarning = {
  --   fg = base30.yellow,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_LspHints = {
  --   fg = base30.purple,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_LspInfo = {
  --   fg = base30.green,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_LspStatus = {
  --   fg = base30.nord_blue,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_LspProgress = {
  --   fg = base30.green,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_LspStatus_Icon = {
  --   fg = base30.black,
  --   bg = base30.nord_blue,
  -- },

  -- MODES

  St_NormalMode = {
    -- bg = base30.nord_blue,
    -- fg = base30.black,
    fg = base30.nord_blue,
    bold = true,
  },

  St_InsertMode = {
    -- bg = base30.dark_purple,
    -- fg = base30.black,
    fg = base30.dark_purple,
    bold = true,
  },

  St_TerminalMode = {
    -- bg = base30.green,
    -- fg = base30.black,
    fg = base30.green,
    bold = true,
  },

  St_NTerminalMode = {
    -- bg = base30.yellow,
    -- fg = base30.black,
    fg = base30.yellow,
    bold = true,
  },

  St_VisualMode = {
    -- bg = base30.cyan,
    -- fg = base30.black,
    fg = base30.cyan,
    bold = true,
  },

  St_ReplaceMode = {
    -- bg = base30.orange,
    -- fg = base30.black,
    fg = base30.orange,
    bold = true,
  },

  St_ConfirmMode = {
    -- bg = base30.teal,
    -- fg = base30.black,
    fg = base30.teal,
    bold = true,
  },

  St_CommandMode = {
    -- bg = base30.green,
    -- fg = base30.black,
    fg = base30.green,
    bold = true,
  },

  St_SelectMode = {
    -- bg = base30.nord_blue,
    -- fg = base30.black,
    fg = base30.nord_blue,
    bold = true,
  },

  -- Separators for mode

  -- St_NormalModeSep = {
  --   fg = base30.nord_blue,
  --   bg = base30.grey,
  -- },
  --
  -- St_InsertModeSep = {
  --   fg = base30.dark_purple,
  --   bg = base30.grey,
  -- },
  --
  -- St_TerminalModeSep = {
  --   fg = base30.green,
  --   bg = base30.grey,
  -- },
  --
  -- St_NTerminalModeSep = {
  --   fg = base30.yellow,
  --   bg = base30.grey,
  -- },
  --
  -- St_VisualModeSep = {
  --   fg = base30.cyan,
  --   bg = base30.grey,
  -- },
  --
  -- St_ReplaceModeSep = {
  --   fg = base30.orange,
  --   bg = base30.grey,
  -- },
  --
  -- St_ConfirmModeSep = {
  --   fg = base30.teal,
  --   bg = base30.grey,
  -- },
  --
  -- St_CommandModeSep = {
  --   fg = base30.green,
  --   bg = base30.grey,
  -- },
  --
  -- St_SelectModeSep = {
  --   fg = base30.nord_blue,
  --   bg = base30.grey,
  -- },
  --
  -- St_EmptySpace = {
  --   fg = base30.grey,
  --   bg = base30.lightbg,
  -- },
  --
  -- St_EmptySpace2 = {
  --   fg = base30.grey,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_file_info = {
  --   bg = base30.lightbg,
  --   fg = base30.white,
  -- },
  --
  -- St_file_sep = {
  --   bg = base30.statusline_bg,
  --   fg = base30.lightbg,
  -- },
  --
  -- St_cwd_icon = {
  --   fg = base30.one_bg,
  --   bg = base30.red,
  -- },
  --
  -- St_cwd_text = {
  --   fg = base30.white,
  --   bg = base30.lightbg,
  -- },
  --
  -- St_cwd_sep = {
  --   fg = base30.red,
  --   bg = base30.statusline_bg,
  -- },
  --
  -- St_pos_sep = {
  --   fg = base30.green,
  --   bg = base30.lightbg,
  -- },
  --
  -- St_pos_icon = {
  --   fg = base30.black,
  --   bg = base30.green,
  -- },
  --
  -- St_pos_text = {
  --   fg = base30.green,
  --   bg = base30.lightbg,
  -- },
}
