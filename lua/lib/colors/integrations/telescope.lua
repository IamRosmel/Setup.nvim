local base30 = require("lib.colors").get_theme_tb "base_30"

return {
  TelescopePromptNormal = {
    fg = base30.white,
    bg = base30.one_bg3,
  },

  TelescopePromptTitle = {
    fg = base30.darker_black,
    bg = base30.red,
  },

  TelescopePromptBorder = {
    fg = base30.one_bg3,
    bg = base30.one_bg3,
  },

  TelescopePromptPrefix = {
    fg = base30.red,
    bg = base30.one_bg3,
  },

  TelescopePreviewNormal = {
    bg = base30.one_bg,
  },

  TelescopePreviewTitle = {
    fg = base30.one_bg,
    bg = base30.one_bg,
  },

  TelescopePreviewBorder = {
    fg = base30.one_bg,
    bg = base30.one_bg,
  },

  TelescopeResultsNormal = {
    bg = base30.black2,
  },

  TelescopeResultsTitle = {
    fg = base30.darker_black,
    bg = base30.blue,
  },

  TelescopeResultsBorder = {
    fg = base30.black2,
    bg = base30.black2,
  },

  TelescopePromptCounter = {
    fg = base30.light_grey,
  },

  TelescopeSelection = {
    bg = base30.one_bg2,
    fg = base30.white
  },

  TelescopeResultsDiffAdd = {
    fg = base30.green,
  },

  TelescopeResultsDiffChange = {
    fg = base30.yellow,
  },

  TelescopeResultsDiffDelete = {
    fg = base30.red,
  },
}
