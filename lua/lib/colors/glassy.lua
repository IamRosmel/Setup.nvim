local base30 = require("lib.colors").get_theme_tb "base_30"

local M = {
  NvimTreeWinSeparator = {
    fg = base30.one_bg2,
    bg = "NONE",
  },

  -- TelescopeResultsTitle = {
  --   fg = base30.black,
  --   bg = base30.blue,
  -- },
}

-- for hl groups which need bg = "NONE" only!
local hl_groups = {
  -- "NormalFloat",
  "Normal",
  "Folded",
  "NvimTreeNormal",
  "NvimTreeNormalNC",
  "NvimTreeCursorLine",
  -- "TelescopeNormal",
  -- "TelescopePrompt",
  -- "TelescopeResults",
  -- "TelescopePromptNormal",
  -- "TelescopePromptPrefix",
  "CursorLine",
  -- "Pmenu",
}

for _, groups in ipairs(hl_groups) do
  M[groups] = {
    bg = "NONE",
  }
end

-- M.TelescopeBorder = {
--   fg = base30.grey,
--   bg = "NONE",
-- }
--
-- M.TelescopePromptBorder = {
--   fg = base30.grey,
--   bg = "NONE",
-- }

return M
