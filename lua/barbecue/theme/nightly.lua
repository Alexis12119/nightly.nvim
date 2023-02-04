local color = require("nightly.palette").colors

local nightly = {
  -- this highlight is used to override other highlights
  -- you can take advantage of its `bg` and set a background throughout your winbar
  -- (e.g. basename will look like this: { fg = "#c0caf5", bold = true })
  normal = { fg = color.fg },

  -- these highlights correspond to symbols table from config
  ellipsis = { fg = color.cyan },
  separator = { fg = color.cyan },
  modified = { fg = color.cyan },

  -- these highlights represent the _text_ of three main parts of barbecue
  dirname = { fg = color.blue7 },
  basename = { bold = true },
  context = {},

  -- these highlights are used for context/navic icons
  context_file = { fg = color.green },
  context_module = { fg = color.yellow },
  context_namespace = { fg = color.yellow },
  context_package = { fg = color.fg },
  context_class = { fg = color.light_orange },
  context_method = { fg = color.blue },
  context_property = { fg = color.yellow },
  context_field = { fg = color.yellow },
  context_constructor = { fg = color.light_orange },
  context_enum = { fg = color.purple },
  context_interface = { fg = color.light_orange },
  context_function = { fg = color.purple },
  context_variable = { fg = color.blue },
  context_constant = { fg = color.light_orange },
  context_string = { fg = color.green },
  context_number = { fg = color.yellow },
  context_boolean = { fg = color.light_orange },
  context_array = { fg = color.blue },
  context_object = { fg = color.blue },
  context_key = { fg = color.purple },
  context_null = { fg = color.blue },
  context_enum_member = { fg = color.yellow },
  context_struct = { fg = color.purple },
  context_event = { fg = color.blue },
  context_operator = { fg = color.fg },
  context_type_parameter = { fg = color.gray4 },
}

return nightly
