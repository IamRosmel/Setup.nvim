local base30 = require("lib.colors").get_theme_tb "base_30"

return {
  IndentBlanklineChar = { fg = base30.line },
  IndentBlanklineSpaceChar = { fg = base30.line },
  IndentBlanklineContextChar = { fg = base30.grey },
  IndentBlanklineContextStart = { bg = base30.one_bg2 },
}
