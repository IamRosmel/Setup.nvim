local base30 = require("lib.colors").get_theme_tb "base_30"

return {
  NotifyERRORBorder = { fg = base30.red },
  NotifyERRORIcon = { fg = base30.red },
  NotifyERRORTitle = { fg = base30.red },
  NotifyWARNBorder = { fg = base30.orange },
  NotifyWARNIcon = { fg = base30.orange },
  NotifyWARNTitle = { fg = base30.orange },
  NotifyINFOBorder = { fg = base30.green },
  NotifyINFOIcon = { fg = base30.green },
  NotifyINFOTitle = { fg = base30.green },
  NotifyDEBUGBorder = { fg = base30.grey },
  NotifyDEBUGIcon = { fg = base30.grey },
  NotifyDEBUGTitle = { fg = base30.grey },
  NotifyTRACEBorder = { fg = base30.purple },
  NotifyTRACEIcon = { fg = base30.purple },
  NotifyTRACETitle = { fg = base30.purple },
}
