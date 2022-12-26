local base30 = require("lib.colors").get_theme_tb "base_30"

return {
  MasonHeader = { bg = base30.red, fg = base30.black },
  MasonHighlight = { fg = base30.blue },
  MasonHighlightBlock = { fg = base30.black, bg = base30.green },
  MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
  MasonHeaderSecondary = { link = "MasonHighlightBlock" },
  MasonMuted = { fg = base30.light_grey },
  MasonMutedBlock = { fg = base30.light_grey, bg = base30.one_bg },
}
