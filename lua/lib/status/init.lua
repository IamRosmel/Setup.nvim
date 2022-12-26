local builtin = require "lib.status.builtin"
local extensions = require "lib.status.extensions"
local log = require "lib.status.log"
local meta = require "lib.status.meta"
local processor = require "lib.status.processor"
local sections = require "lib.status.sections"
local subscribe = require "lib.status.subscribe"

local lsp_statusline = require "lib.status.plugins.lsp_status"

---@class st.Item
--- Is a function that takes (window, buffer) -> string

local st = {}

---@tag st
---@brief [[
--- st (short for `statusline`) is a Lua statusline that I have been
--- exploring making for awhile. Somewhat recently, I have decided to try and make this
--- plugin a bit better. I hope you enjoy it.
---
--- - tjdevries
---
--- General Information
---
--- Types of items:
--- 0. string
--- 1. function that returns a string
---     - built-in statusline items
---     - literal strings to display
--- 2. function that returns a function
---     - will be called every time (so should be somewhat fast)
--- 3. Returns a coroutine
---     - calls something that might take short amount of time.
--- 4. Returns a variable reference
---     - gets updated via timer / autocmds / other
---     - for example, running git status and saving the result to a var
---
--- I'm targeting to have the following be true.
---
--- Anytime you see a function with `make_` at the beginning of it's name,
--- you can expect that function to create a function that returns an item.
---
--- In other words, you always need to pass in the result of a `make_` function,
--- not the `make_` function itself to the generator. Examples include things like
--- |st.diagnostic.make_buffer|, which creates a function that returns an item.
---
---@brief ]]

-- Unlikely, but good reminders:
--  tabline (shout out to @KD)

local get_new_windows_table = function()
  return setmetatable({}, {
    __index = function(self, win_id)
      local val = setmetatable({}, {
        __index = function(win_table, bufnr)
          log.debug("Generating statusline for:", win_id, bufnr)

          if not st.statusline_generator then
            log.debug "No statusline_generator for now"
            return function()
              return ""
            end
          end

          -- Gather up functions to use when evaluating statusline
          local window = meta.Window:new(win_id)
          local buffer = meta.Buffer:new(bufnr)
          local items = vim.tbl_flatten(st.statusline_generator(--[[ window, buffer ]]))

          local p = processor.new(items, window, buffer)

          rawset(win_table, bufnr, p)
          return p
        end,
      })

      rawset(self, win_id, val)
      return val
    end,
  })
end

st._window_status_lines = get_new_windows_table()

st.reset_windows = function()
  subscribe._reload()

  st._window_status_lines = get_new_windows_table()
end

st.regenerate = function(win_id, bufnr)
  if not win_id or win_id == 0 then
    win_id = vim.api.nvim_get_current_win()
  end

  if not bufnr then
    -- Clear everything for the window
    st._window_status_lines[win_id] = nil
    return
  end

  if bufnr == 0 then
    bufnr = vim.api.nvim_win_get_buf(win_id)
  end
  st._window_status_lines[win_id][bufnr] = nil
end

local default_statusline_generator = function(--[[ win_id ]])
  return {
    extensions.mode,
    sections.split,
    builtin.file,
    sections.collapse_builtin {
      " ",
      builtin.modified_flag,
    },
    sections.split,
    lsp_statusline.segment,
    lsp_statusline.current_function,
    subscribe.buf_autocmd("st_git_status", "BufWritePost", function(window, buffer)
      return extensions.git_changes(window, buffer)
    end),
    "[",
    builtin.line,
    ":",
    builtin.column,
    "]",
    sections.collapse_builtin {
      "[",
      builtin.help_list,
      builtin.readonly_list,
      "]",
    },
    builtin.filetype,
  }
end

st.run = function(win_id)
  if not vim.api.nvim_win_is_valid(win_id) then
    return
  end

  local bufnr = vim.api.nvim_win_get_buf(win_id)

  return st._window_status_lines[win_id][bufnr]()
end

--- Default setup function
---@param opts table: st configuration table. Use key `generator` to pass a new statusline generator
st.setup = function(opts)
  opts = opts or {}

  local generator = opts.generator or default_statusline_generator
  vim.validate { generator = { generator, "f" } }

  -- TODO: In the future, probably want some easier ways to give users to regenerate their statusline based on some
  -- events. For now, they can write their own autocmds or just call `require('lib.status').regenerate(win_id, bufnr)`
  local regenerate_autocmds = opts.regenerate_autocmds or {}

  st.statusline_generator = generator
  st.reset_windows()

  -- Setup autocmds to make sure
  vim.cmd [=[
    augroup StatusLineAutoSetup
      au!
      autocmd BufWinEnter,WinEnter * :lua vim.wo.statusline = string.format([[%%!luaeval('require("lib.status").run(%s)')]], vim.api.nvim_get_current_win())
  ]=]

  for _, event in ipairs(regenerate_autocmds) do
    vim.cmd(string.format([=[  autocmd %s * :lua require('lib.status').regenerate(vim.api.nvim_get_current_win())]=], event))
  end

  vim.cmd [[augroup END]]
  vim.cmd [[doautocmd BufWinEnter]]
end

return st
