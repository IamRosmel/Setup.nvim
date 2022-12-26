-- Install package manager (Packer)

local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  }
  vim.cmd "packadd packer.nvim"
end

require "core"

-- Install plugins + LSP servers

if is_bootstrap then
  require "plugins"
  vim.cmd "PackerSync"

  vim.api.nvim_create_autocmd("User", {
    pattern = "PackerComplete",
    callback = function()
      vim.cmd "bw | silent! MasonInstallAll"
      require("packer").loader "nvim-treesitter"
    end
  })
  print "Installing plugins ..."
  return
end

vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

-- Setup

require "core.options"

require "ui.colorscheme"

require "ui.statusline"

pcall(require, "custom")

require("core.utils").load_mappings()
