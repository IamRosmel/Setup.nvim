local base30 = require("lib.colors").get_theme_tb "base_30"

return {
  -- LSP References
  LspReferenceText = { fg = base30.darker_black, bg = base30.white },
  LspReferenceRead = { fg = base30.darker_black, bg = base30.white },
  LspReferenceWrite = { fg = base30.darker_black, bg = base30.white },

  -- Lsp Diagnostics
  DiagnosticHint = { fg = base30.purple },
  DiagnosticError = { fg = base30.red },
  DiagnosticWarn = { fg = base30.yellow },
  DiagnosticInformation = { fg = base30.green },
  LspSignatureActiveParameter = { fg = base30.black, bg = base30.green },

  RenamerTitle = { fg = base30.black, bg = base30.red },
  RenamerBorder = { fg = base30.red },
}
