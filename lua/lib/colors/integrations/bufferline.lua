local base30 = require("lib.colors").get_theme_tb "base_30"

return {

  BufferLineBackground = {
    fg = base30.light_grey,
    bg = base30.black2,
  },

  BufferlineIndicatorVisible = {
    fg = base30.black2,
    bg = base30.black2,
  },

  -- buffers
  BufferLineBufferSelected = {
    fg = base30.white,
    bg = base30.black,
  },

  BufferLineBufferVisible = {
    fg = base30.light_grey,
    bg = base30.black2,
  },

  -- for diagnostics = "nvim_lsp"
  BufferLineError = {
    fg = base30.light_grey,
    bg = base30.black2,
  },
  BufferLineErrorDiagnostic = {
    fg = base30.light_grey,
    bg = base30.black2,
  },

  -- close buttons
  BufferLineCloseButton = {
    fg = base30.light_grey,
    bg = base30.black2,
  },
  BufferLineCloseButtonVisible = {
    fg = base30.light_grey,
    bg = base30.black2,
  },
  BufferLineCloseButtonSelected = {
    fg = base30.red,
    bg = base30.black,
  },
  BufferLineFill = {
    fg = base30.grey_fg,
    bg = base30.black2,
  },
  BufferlineIndicatorSelected = {
    fg = base30.black,
    bg = base30.black,
  },

  -- modified
  BufferLineModified = {
    fg = base30.red,
    bg = base30.black2,
  },
  BufferLineModifiedVisible = {
    fg = base30.red,
    bg = base30.black2,
  },
  BufferLineModifiedSelected = {
    fg = base30.green,
    bg = base30.black,
  },

  -- separators
  BufferLineSeparator = {
    fg = base30.black2,
    bg = base30.black2,
  },
  BufferLineSeparatorVisible = {
    fg = base30.black2,
    bg = base30.black2,
  },
  BufferLineSeparatorSelected = {
    fg = base30.black2,
    bg = base30.black2,
  },

  -- tabs
  BufferLineTab = {
    fg = base30.light_grey,
    bg = base30.one_bg3,
  },
  BufferLineTabSelected = {
    fg = base30.black2,
    bg = base30.nord_blue,
  },
  BufferLineTabClose = {
    fg = base30.red,
    bg = base30.black,
  },

  BufferLineDevIconDefaultSelected = {
    bg = "none",
  },

  BufferLineDevIconDefaultInactive = {
    bg = "none",
  },

  BufferLineDuplicate = {
    fg = "NONE",
    bg = base30.black2,
  },
  BufferLineDuplicateSelected = {
    fg = base30.red,
    bg = base30.black,
  },
  BufferLineDuplicateVisible = {
    fg = base30.blue,
    bg = base30.black2,
  },

  -- custom area
  BufferLineRightCustomAreaText1 = {
    fg = base30.white,
  },

  BufferLineRightCustomAreaText2 = {
    fg = base30.red,
  },
}
