local config = require "nightly.config"
local M = {}

M.setup = config.setup

function M.load()
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd "hi clear"
  end

  -- enable termguicolors
  if vim.api.nvim_get_option "termguicolors" == false then
    vim.opt.termguicolors = true
  end

  vim.g.colors_name = "nightly"

  require("nightly.theme").setup()
end

return M
