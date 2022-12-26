local base30 = require("lib.colors").get_theme_tb "base_30"
local base16 = require("lib.colors").get_theme_tb "base_16"

return {
  MatchWord = {
    bg = base30.grey,
    fg = base30.white,
  },

  Pmenu = { bg = base30.one_bg },
  PmenuSbar = { bg = base30.one_bg },
  PmenuSel = { bg = base30.pmenu_bg, fg = base30.black },
  PmenuThumb = { bg = base30.grey },

  MatchParen = { link = "MatchWord" },

  Comment = { fg = base30.grey_fg },

  CursorLineNr = { fg = base30.white },
  LineNr = { fg = base30.grey },

  -- floating windows
  FloatBorder = { fg = "NONE" },
  NormalFloat = { bg = base30.darker_black },

  NvimInternalError = { fg = base30.red },
  WinSeparator = { fg = base30.line },

  -- packer
  PackerPackageName = { fg = base30.red },
  PackerSuccess = { fg = base30.green },
  PackerStatusSuccess = { fg = base16.base08 },
  PackerStatusCommit = { fg = base30.blue },
  PackeProgress = { fg = base30.blue },
  PackerOutput = { fg = base30.red },
  PackerStatus = { fg = base30.blue },
  PackerHash = { fg = base30.blue },

  Normal = {
    fg = base16.base05,
    bg = base16.base00,
  },

  Bold = {
    bold = true,
  },

  Debug = {
    fg = base16.base08,
  },

  Directory = {
    fg = base16.base0D,
  },

  Error = {
    fg = base16.base00,
    bg = base16.base08,
  },

  ErrorMsg = {
    fg = base16.base08,
    bg = base16.base00,
  },

  Exception = {
    fg = base16.base08,
  },

  FoldColumn = {
    fg = base16.base0C,
    bg = base16.base01,
  },

  Folded = {
    fg = base16.base03,
    bg = base16.base01,
  },

  IncSearch = {
    fg = base16.base01,
    bg = base16.base09,
  },

  Italic = {
    italic = true,
  },

  Macro = {
    fg = base16.base08,
  },

  ModeMsg = {
    fg = base16.base0B,
  },

  MoreMsg = {
    fg = base16.base0B,
  },

  Question = {
    fg = base16.base0D,
  },

  Search = {
    fg = base16.base01,
    bg = base16.base0A,
  },

  Substitute = {
    fg = base16.base01,
    bg = base16.base0A,
    sp = "none",
  },

  SpecialKey = {
    fg = base16.base03,
  },

  TooLong = {
    fg = base16.base08,
  },

  UnderLined = {
    fg = base16.base0B,
  },

  Visual = {
    bg = base16.base02,
  },

  VisualNOS = {
    fg = base16.base08,
  },

  WarningMsg = {
    fg = base16.base08,
  },

  WildMenu = {
    fg = base16.base08,
    bg = base16.base0A,
  },

  Title = {
    fg = base16.base0D,
    sp = "none",
  },

  Conceal = {
    bg = "NONE",
  },

  Cursor = {
    fg = base16.base00,
    bg = base16.base05,
  },

  NonText = {
    fg = base16.base03,
  },

  SignColumn = {
    fg = base16.base03,
    sp = "NONE",
  },

  ColorColumn = {
    bg = base16.base01,
    sp = "none",
  },

  CursorColumn = {
    bg = base16.base01,
    sp = "none",
  },

  CursorLine = {
    bg = "none",
    sp = "none",
  },

  QuickFixLine = {
    bg = base16.base01,
    sp = "none",
  },

  -- spell
  SpellBad = {
    undercurl = true,
    sp = base16.base08,
  },

  SpellLocal = {
    undercurl = true,
    sp = base16.base0C,
  },

  SpellCap = {
    undercurl = true,
    sp = base16.base0D,
  },

  SpellRare = {
    undercurl = true,
    sp = base16.base0E,
  },

  healthSuccess = {
    bg = base30.green,
    fg = base30.black,
  },
}
