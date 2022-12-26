local base16 = require("lib.colors").get_theme_tb "base_16"
local base30 = require("lib.colors").get_theme_tb "base_30"

return {

  DiffAdd = {
    fg = base30.blue,
  },

  DiffAdded = {
    fg = base30.green,
  },

  DiffChange = {
    fg = base30.light_grey,
  },

  DiffChangeDelete = {
    fg = base30.red,
  },

  DiffModified = {
    fg = base30.orange,
  },

  DiffDelete = {
    fg = base30.red,
  },

  DiffRemoved = {
    fg = base30.red,
  },

  -- git commits
  gitcommitOverflow = {
    fg = base16.base08,
  },

  gitcommitSummary = {
    fg = base16.base08,
  },

  gitcommitComment = {
    fg = base16.base03,
  },

  gitcommitUntracked = {
    fg = base16.base03,
  },

  gitcommitDiscarded = {
    fg = base16.base03,
  },

  gitcommitSelected = {
    fg = base16.base03,
  },

  gitcommitHeader = {
    fg = base16.base0E,
  },

  gitcommitSelectedType = {
    fg = base16.base0D,
  },

  gitcommitUnmergedType = {
    fg = base16.base0D,
  },

  gitcommitDiscardedType = {
    fg = base16.base0D,
  },

  gitcommitBranch = {
    fg = base16.base09,
    bold = true,
  },

  gitcommitUntrackedFile = {
    fg = base16.base0A,
  },

  gitcommitUnmergedFile = {
    fg = base16.base08,
    bold = true,
  },

  gitcommitDiscardedFile = {
    fg = base16.base08,
    bold = true,
  },

  gitcommitSelectedFile = {
    fg = base16.base0B,
    bold = true,
  },
}
