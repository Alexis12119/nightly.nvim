local nightly = {
  normal = {
    left = { { "#7AA2F7", "NONE" }, { "#BBC2CF", "NONE" } },
    right = { { "#7AA2F7", "NONE" }, { "#BBC2CF", "NONE" } },
    middle = { { "#BBC2CF", "NONE" } },
    error = { { "#DB4B4B", "NONE" } },
    warning = { { "#D19A66", "NONE" } },
  },
  inactive = {
    right = { { "NONE", "NONE" }, { "NONE", "NONE" } },
    left = { { "NONE", "NONE" }, { "NONE", "NONE" } },
    middle = { { "NONE", "NONE" } },
  },
  insert = {
    left = { { "#98BE65", "NONE" }, { "#BBC2CF", "NONE" } },
    right = { { "#98BE65", "NONE" }, { "#BBC2CF", "NONE" } },
    middle = { { "#BBC2CF", "NONE" } },
  },
  replace = {
    left = { { "#DB4B4B", "NONE" }, { "#BBC2CF", "NONE" } },
    right = { { "#DB4B4B", "NONE" }, { "#BBC2CF", "NONE" } },
    middle = { { "#BBC2CF", "NONE" } },
  },
  visual = {
    left = { { "#C678DD", "NONE" }, { "#BBC2CF", "NONE" } },
    right = { { "#C678DD", "NONE" }, { "#BBC2CF", "NONE" } },
    middle = { { "#BBC2CF", "NONE" } },
  },
  command = {
    left = { { "#ECBE7B", "NONE" }, { "#BBC2CF", "NONE" } },
    right = { { "#ECBE7B", "NONE" }, { "#BBC2CF", "NONE" } },
    middle = { { "#BBC2CF", "NONE" } },
  },
  tabline = {
    left = { { "#BBC2CF", "NONE" } },
    right = { { "#BBC2CF", "NONE" } },
    tabsel = { { "#BBC2CF", "NONE" } },
    middle = { { "#BBC2CF", "NONE" } },
  },
}

return nightly
