local colors = require("lib.colors")

colors.load_highlight "defaults"
colors.load_highlight "syntax"
colors.load_highlight "statusline"

colors.load_highlight "treesitter"
colors.load_highlight "lsp"
colors.load_highlight "git"
--[[ colors.load_highlight "blankline" ]]

colors.load_highlight "cmp"
colors.load_highlight "telescope"
colors.load_highlight "mason"

local config = require("core.utils").load_config()
local turn_str_to_color = colors.turn_str_to_color(config.ui.hl_add)

colors.load_highlight(turn_str_to_color) -- custom highlights

require "lib.colors.term" -- terminal palette
