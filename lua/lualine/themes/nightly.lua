local color = require "nightly.palette"

local nightly = {
  normal = {
    a = { bg = color.blue, fg = color.black },
    b = { bg = color.fg_gutter, fg = color.blue },
    c = { bg = color.none, fg = color.fg_sidebar },
  },

  insert = {
    a = { bg = color.green, fg = color.black },
    b = { bg = color.fg_gutter, fg = color.green },
  },

  command = {
    a = { bg = color.yellow, fg = color.black },
    b = { bg = color.fg_gutter, fg = color.yellow },
  },

  visual = {
    a = { bg = color.magenta, fg = color.black },
    b = { bg = color.fg_gutter, fg = color.magenta },
  },

  replace = {
    a = { bg = color.red, fg = color.black },
    b = { bg = color.fg_gutter, fg = color.red },
  },

  terminal = {
    a = { bg = color.green1, fg = color.black },
    b = { bg = color.fg_gutter, fg = color.green1 },
  },

  inactive = {
    a = { bg = color.bg_statusline, fg = color.blue },
    b = { bg = color.bg_statusline, fg = color.fg_gutter },
    c = { bg = color.bg_statusline, fg = color.fg_gutter },
  },
}
return nightly
