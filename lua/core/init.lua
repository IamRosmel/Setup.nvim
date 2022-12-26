-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

-- commands
local command = vim.api.nvim_create_user_command

command("SetupUpdate", function()
  require("lib.tools").update_setup()
end, {})

command("SetupSnapshotCreate", function()
  require("lib.tools").snap_create()
end, {})

command("SetupSnapshotDelete", function()
  require("lib.tools").snap_delete()
end, {})

command("SetupSnapshotCheckout", function()
  require("lib.tools").snap_checkout()
end, {})

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- dont list quickfix buffers
autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.opt_local.buflisted = false
  end,
})

-- wrap the PackerSync command to warn people before using it in NvChadSnapshots
autocmd("VimEnter", {
  callback = function()
    vim.api.nvim_create_user_command("PackerSync", function(opts)
      require "plugins"
      require("core.utils").packer_sync(opts.fargs)
    end, {
      bang = true,
      nargs = "*",
      complete = require("packer").plugin_complete,
    })
  end,
})
