local builtin    = require "lib.status.builtin"
local extensions = require "lib.status.extensions"
local sections   = require "lib.status.sections"
local subscribe  = require "lib.status.subscribe"
local diagnostic = require "lib.status.diagnostic"
-- local processor  = require "lib.status.processor"
-- local log        = require "lib.status.log"
-- local meta       = require "lib.status.meta"

-- local lsp_statusline = require "lib.status.plugins.lsp_status"

local generator = function()
  local segments = {}

  table.insert(segments, extensions.mode)
  table.insert(segments,
    subscribe.buf_autocmd(
      "st_git_branch",
      "BufEnter",
      function(window, buffer)
        local branch = extensions.git_branch(window, buffer)
        if branch then
          return " [" .. branch .. "] "
        end
      end
    )
  )
  table.insert(segments, sections.split)
  table.insert(segments, builtin.file)
  table.insert(segments,
    sections.collapse_builtin {
      " ",
      builtin.modified_flag,
      " ",
    }
  )
  table.insert(segments, sections.split)
  -- table.insert(segments, lsp_statusline.segment)
  -- table.insert(segments, lsp_statusline.server_progress)
  table.insert(segments, diagnostic.make_buffer())
  table.insert(segments, " ")
  table.insert(segments,
    subscribe.buf_autocmd(
      "st_git_status",
      "BufWritePost",
      function(window, buffer)
        return extensions.git_changes(window, buffer)
      end
    )
  )
  table.insert(segments, "[")
  table.insert(segments, builtin.line)
  table.insert(segments, ":")
  table.insert(segments, builtin.column)
  table.insert(segments, "]")
  table.insert(segments, builtin.filetype)

  return segments
end

require("lib.status").setup { generator = generator }
