-- setup.lua overrides this file

local M = {}

M.options = {
  repository = {
    update_url = "https://github.com/IamRosmel/Setup.nvim",
    update_branch = "main",
  },
}

M.ui = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},

  changed_themes = {},
  theme = "onedark", -- default theme

  transparency = false,
}

M.plugins = {}

-- these are default mappings, check core.mappings for table structure
M.mappings = require "core.mappings"

return M
