local function change_theme(current_theme, new_theme)
  local misc = require "lib.tools.misc"
  local config = require "lib.tools.config"

  if current_theme == nil or new_theme == nil then
    print "Error: Provide current and new theme name"
    return false
  end

  if current_theme == new_theme then
    return
  end

  local result = misc.ensure_file_exists(config.custom.default_setup_path, misc.get_example_setup())

  if not result then
    print "Error: Could not set a default theme. Please set it manually in your 'setup.lua'."
    return false
  end

  -- escape characters which can be parsed as magic chars
  current_theme = current_theme:gsub("%p", "%%%0")
  new_theme = new_theme:gsub("%p", "%%%0")

  local old_theme_txt = "theme = .?" .. current_theme .. ".?"
  local new_theme_txt = 'theme = "' .. new_theme .. '"'

  require("lib.tools").write_data(old_theme_txt, new_theme_txt)
end

return change_theme
