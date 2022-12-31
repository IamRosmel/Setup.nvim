local M = {}

M.treesitter = {
  ensure_installed = {
    "javascript",
    "python",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- misc stuff
    "typescript-language-server",
    "bash-language-server",
    "clangd",
    "pyright",
  },
}

return M
