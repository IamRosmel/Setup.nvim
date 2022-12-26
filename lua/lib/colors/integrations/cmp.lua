local base16 = require("lib.colors").get_theme_tb "base_16"
local base30 = require("lib.colors").get_theme_tb "base_30"

return {
  -- nvim cmp
  CmpItemAbbr = { fg = base30.white },
  CmpItemAbbrMatch = { fg = base30.blue, bold = true },
  CmpBorder = { fg = base30.grey },
  CmpDocBorder = { fg = base30.darker_black, bg = base30.darker_black },
  CmPmenu = { bg = base30.darker_black },
  CmpItemMenu = { fg = base30.grey },

  -- cmp item kinds
  CmpItemKindConstant = { fg = base16.base09 },
  CmpItemKindFunction = { fg = base16.base0D },
  CmpItemKindIdentifier = { fg = base16.base08 },
  CmpItemKindField = { fg = base16.base08 },
  CmpItemKindVariable = { fg = base16.base0E },
  CmpItemKindSnippet = { fg = base30.red },
  CmpItemKindText = { fg = base16.base0B },
  CmpItemKindStructure = { fg = base16.base0E },
  CmpItemKindType = { fg = base16.base0A },
  CmpItemKindKeyword = { fg = base16.base07 },
  CmpItemKindMethod = { fg = base16.base0D },
  CmpItemKindConstructor = { fg = base30.blue },
  CmpItemKindFolder = { fg = base16.base07 },
  CmpItemKindModule = { fg = base16.base0A },
  CmpItemKindProperty = { fg = base16.base08 },
  -- CmpItemKindEnum = { fg = "" },
  CmpItemKindUnit = { fg = base16.base0E },
  -- CmpItemKindClass = { fg = "" },
  CmpItemKindFile = { fg = base16.base07 },
  -- CmpItemKindInterface = { fg = "" },
  CmpItemKindColor = { fg = base30.red },
  CmpItemKindReference = { fg = base16.base05 },
  -- CmpItemKindEnumMember = { fg = "" },
  CmpItemKindStruct = { fg = base16.base0E },
  -- CmpItemKindValue = { fg = "" },
  -- CmpItemKindEvent = { fg = "" },
  CmpItemKindOperator = { fg = base16.base05 },
  CmpItemKindTypeParameter = { fg = base16.base08 },
  CmpItemKindCopilot = { fg = base30.green },
}
