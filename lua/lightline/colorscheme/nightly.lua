local nightly = {
  normal = {
    left = { { "NONE", "#7AA2F7" }, { "#BBC2CF", "NONE" } },
    right = { { "NONE", "#7AA2F7" }, { "#BBC2CF", "NONE" } },
    middle = { { "NONE", "#BBC2CF" } },
    error = { { "NONE", "#DB4B4B" } },
    warning = { { "NONE", "#D19A66" } },
  },
  inactive = {
    right = { { "NONE", "NONE" }, { "NONE", "NONE" } },
    left = { { "NONE", "NONE" }, { "NONE", "NONE" } },
    middle = { { "NONE", "NONE" } },
  },
  insert = {
    left = { { "NONE", "#98BE65" }, { "#BBC2CF", "NONE" } },
    right = { { "NONE", "#98BE65" }, { "#BBC2CF", "NONE" } },
    middle = { { "NONE", "#BBC2CF" } },
  },
  replace = {
    left = { { "NONE", "#DB4B4B" }, { "#BBC2CF", "NONE" } },
    right = { { "NONE", "#DB4B4B" }, { "#BBC2CF", "NONE" } },
    middle = { { "NONE", "#BBC2CF" } },
  },
  visual = {
    left = { { "NONE", "#C678DD" }, { "#BBC2CF", "NONE" } },
    right = { { "NONE", "#C678DD" }, { "#BBC2CF", "NONE" } },
    middle = { { "NONE", "#BBC2CF" } },
  },
  tabline = {
    left = { { "#BBC2CF", "NONE" } },
    tabsel = { { "#BBC2CF", "NONE" } },
    middle = { { "#BBC2CF", "NONE" } },
    right = { { "#BBC2CF", "NONE" } },
  },
}

return nightly
