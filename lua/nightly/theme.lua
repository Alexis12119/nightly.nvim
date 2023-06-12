local theme = {}

function theme.setup()
  local options = require("nightly.config").options

  local p = require("nightly.palette").dark_colors

  if options.transparent then
    p.background = "NONE"
    vim.o.pumblend = 0
  end

  theme.highlights = {
    -- Base highlights
    Boolean = { fg = p.color5 },
    Character = { fg = p.color12 },
    ColorColumn = { bg = p.none },
    Comment = { fg = p.comment, style = options.styles.comments },
    Conceal = { fg = p.color4, bg = p.background },
    Conditional = { fg = p.color6 },
    Constant = { fg = p.color5 },
    Cursor = { fg = p.foreground, bg = p.foreground },
    CurSearch = { link = "IncSearch" },
    CursorColumn = { bg = p.background },
    CursorIM = { fg = p.foreground, bg = p.foreground },
    CursorLine = { bg = p.cursorline },
    CursorLineNr = { fg = p.foreground },
    Debug = { fg = p.color1 },
    Define = { fg = p.color6 },
    Delimiter = { fg = p.foreground },
    DiffAdd = { fg = p.color4, bg = p.background },
    DiffChange = { fg = p.color5, bg = p.background },
    DiffDelete = { fg = p.color1, bg = p.background },
    DiffText = { fg = p.color1, bg = p.background },
    Directory = { fg = p.color4 },
    EndOfBuffer = { fg = p.background },
    Error = { fg = p.color1, bg = p.background },
    ErrorMsg = { fg = p.color1, bg = p.background },
    Exception = { fg = p.color6 },
    Float = { fg = p.color5 },
    FloatBorder = { fg = p.color17 },
    FoldColumn = { fg = p.color4, bg = p.background },
    Folded = { fg = p.color4, bg = p.background },
    Function = { fg = p.color6, style = options.styles.functions },
    Identifier = { fg = p.color5 },
    Ignore = { fg = p.color7, bg = p.background },
    IncSearch = { fg = p.black, bg = p.color10 },
    Include = { fg = p.color6 },
    Keyword = { fg = p.color6, style = options.styles.keywords },
    Label = { fg = p.color4 },
    LineNr = { fg = p.color8 },
    Macro = { fg = p.color6 },
    MatchParen = { fg = p.color4, bg = p.background },
    ModeMsg = { fg = p.foreground, bg = p.background },
    MoreMsg = { fg = p.color5 },
    MsgArea = { fg = p.foreground, bg = p.background },
    MsgSeparator = { fg = p.foreground, bg = p.background },
    NonText = { fg = p.color1 },
    Normal = { fg = p.foreground, bg = p.background },
    NormalFloat = { bg = p.background },
    NormalNC = { fg = p.foreground, bg = p.background },
    Number = { fg = p.color3 },
    Operator = { fg = p.color6 },
    Pmenu = { fg = p.color17, bg = p.background },
    PmenuSbar = { bg = p.background },
    PmenuSel = { fg = p.black, bg = p.color4 },
    PmenuThumb = { bg = p.color2 },
    PreCondit = { fg = p.color6 },
    PreProc = { fg = p.color6 },
    Question = { fg = p.color5 },
    QuickFixLine = { bg = p.color2 },
    Repeat = { fg = p.color6 },
    Search = { fg = p.black, bg = p.color4 },
    SignColumn = { fg = p.background, bg = p.background },
    Special = { fg = p.color6 },
    SpecialChar = { fg = p.foreground },
    SpecialComment = { fg = p.color2 },
    SpecialKey = { fg = p.color4 },
    SpellBad = { fg = p.color2 },
    SpellCap = { fg = p.color6 },
    SpellLocal = { fg = p.color4 },
    SpellRare = { fg = p.color6 },
    Statement = { fg = p.color6 },
    StatusLine = { fg = p.foreground, bg = p.background },
    StatusLineNC = { bg = p.background, fg = p.background },
    Storage = { fg = p.color9 },
    StorageClass = { fg = p.color7 },
    String = { fg = p.color2 },
    Structure = { fg = p.color6 },
    Substitute = { fg = p.black, bg = p.color9 },
    TabLine = { fg = p.color2, bg = p.background },
    TabLineFill = { fg = p.foreground, bg = p.background },
    TabLineSel = { fg = p.foreground, bg = p.background },
    Tag = { fg = p.color4 },
    TermCursor = { fg = p.foreground, bg = p.foreground },
    TermCursorNC = { fg = p.foreground, bg = p.foreground },
    Title = { fg = p.color4, bold = true },
    Todo = { fg = p.color1, bg = p.background },
    Type = { fg = p.color5 },
    Typedef = { fg = p.color6 },
    Underlined = { fg = p.color2, underline = true },
    Variable = { fg = p.color5 },
    VertSplit = { fg = p.color0 },
    Visual = { bg = p.cursorline },
    VisualNOS = { bg = p.background },
    WarningMsg = { fg = p.color3, bg = p.background },
    Whitespace = { fg = p.color1 },
    WildMenu = { fg = p.color7, bg = p.color4 },
    lCursor = { fg = p.foreground, bg = p.foreground },

    -- bufferline.nvim: https://github.com/akinsho/bufferline.nvim
    BufferLineFill = { fg = p.background, bg = p.background },
    BufferLineIndicatorSelected = { fg = p.color2 },

    -- Diagnostic
    DiagnosticError = { fg = p.color1 },
    DiagnosticHint = { fg = p.color2 },
    DiagnosticInfo = { fg = p.color4 },
    DiagnosticWarn = { fg = p.color3 },
    DiagnosticUnnecessary = { fg = p.none },

    -- diff
    diffAdded = { fg = p.color4 },
    diffChanged = { fg = p.color5 },
    diffFile = { fg = p.color7 },
    diffIndexLine = { fg = p.color6 },
    diffLine = { fg = p.color1 },
    diffNewFile = { fg = p.color5 },
    diffOldFile = { fg = p.color5 },
    diffRemoved = { fg = p.color1 },

    -- gitsigns: https://github.com/lewis6991/gitsigns.nvim
    GitSignsAdd = { fg = p.color4 },
    GitSignsChange = { fg = p.color5 },
    GitSignsDelete = { fg = p.color1 },

    -- indent-blankline.nvim: https://github.com/lukas-reineke/indent-blankline.nvim
    IndentBlanklineChar = { fg = p.color0 },

    -- LSP
    LspInfoFiletype = { fg = p.color15 },
    LspReferenceText = { bg = p.color18 },
    LspReferenceRead = { bg = p.color18 },
    LspReferenceWrite = { bg = p.color18 },
    LspInfoBorder = { link = "FloatBorder" },

    -- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim
    DefinitionCount = { fg = p.color6 },
    DefinitionIcon = { fg = p.color7 },
    LspFloatWinBorder = { link = "FloatBorder" },
    LspFloatWinNormal = { bg = p.background },
    LspSagaBorderTitle = { fg = p.color7 },
    LspSagaCodeActionBorder = { link = "FloatBorder" },
    LspSagaCodeActionContent = { fg = p.color6 },
    LspSagaCodeActionTitle = { fg = p.color7 },
    LspSagaDefPreviewBorder = {},
    LspSagaFinderSelection = { fg = p.color1 },
    LspSagaHoverBorder = { link = "FloatBorder" },
    LspSagaRenameBorder = { link = "FloatBorder" },
    LspSagaSignatureHelpBorder = { link = "FloatBorder" },
    ReferencesCount = { fg = p.color6 },
    ReferencesIcon = { fg = p.color7 },
    TargetWord = { fg = p.color7 },

    -- Neogit: https://github.com/TimUntersberger/neogit
    NeogitBranch = { fg = p.color6 },
    NeogitDiffAddHighlight = { fg = p.color4, bg = p.background },
    NeogitDiffContextHighlight = { bg = p.background, fg = p.foreground },
    NeogitDiffDeleteHighlight = { fg = p.color1, bg = p.background },
    NeogitHunkHeader = { bg = p.black, fg = p.foreground },
    NeogitHunkHeaderHighlight = { bg = p.comment, fg = p.color7 },
    NeogitRemote = { fg = p.color6 },

    -- Neovim
    healthError = { fg = p.color1 },
    healthSuccess = { fg = p.color4 },
    healthWarning = { fg = p.color5 },

    -- nvim-cmp: https://github.com/hrsh7th/nvim-cmp
    CmpDocumentationBorder = { fg = p.color17, bg = p.background },
    CmpItemAbbr = { fg = p.foreground, bg = p.background },
    CmpItemAbbrDeprecated = { fg = p.color2, bg = p.background },
    CmpItemAbbrMatch = { fg = p.color7, bg = p.background },
    CmpItemAbbrMatchFuzzy = { fg = p.color7, bg = p.background },
    CmpItemKind = { fg = p.color4, bg = p.background },
    CmpItemMenu = { fg = p.color2, bg = p.background },
    CmpItemKindFolder = { fg = p.color4 },
    CmpItemKindFile = { fg = p.color2 },
    CmpItemKindConstructor = { fg = p.color5 },
    CmpItemKindInterface = { fg = p.color5 },
    CmpItemKindReference = { fg = p.color5 },
    CmpItemKindConstant = { fg = p.color5 },
    CmpItemKindProperty = { fg = p.color5 },
    CmpItemKindModule = { fg = p.color5 },
    CmpItemKindClass = { fg = p.color5 },
    CmpItemKindField = { fg = p.color5 },
    CmpItemKindEvent = { fg = p.color5 },
    CmpItemKindSnippet = { fg = p.color4 },
    CmpItemKindKeyword = { fg = p.color4 },
    CmpItemKindValue = { fg = p.color4 },
    CmpItemKindOperator = { fg = p.color4 },
    CmpItemKindTypeParameter = { fg = p.color7 },
    CmpItemKindVariable = { fg = p.color7 },
    CmpItemKindText = { fg = p.color7 },
    CmpItemKindUnit = { fg = p.color7 },

    -- Yank
    YankyPut = { link = "Visual" },
    YankyYanked = { link = "Visual" },
    YankHighlight = { bg = p.cursorline },

    -- Markdown
    markdownCodeBlock = { fg = p.color7 },
    markdownCodeDelimeter = { fg = p.color7 },
    markdownUrl = { fg = p.color15 },
    markdownLink = { fg = p.foreground, underline = true },

    -- nvim-tree.lua: https://github.com/nvim-tree/nvim-tree.lua
    NvimTreeEmptyFolderName = { fg = p.foreground },
    NvimTreeEndOfBuffer = { fg = p.foreground, bg = p.background },
    NvimTreeEndOfBufferNC = { fg = p.foreground, bg = p.background },
    NvimTreeFolderIcon = { fg = p.color4, bg = p.background },
    NvimTreeFolderName = { fg = p.foreground },
    NvimTreeGitDeleted = { fg = p.color1 },
    NvimTreeGitDirty = { fg = p.color5 },
    NvimTreeGitNew = { fg = p.color4 },
    NvimTreeImageFile = { fg = p.foreground },
    NvimTreeIndentMarker = { fg = p.color0 },
    NvimTreeNormal = { fg = p.foreground, bg = p.background },
    NvimTreeNormalNC = { fg = p.foreground, bg = p.background },
    NvimTreeOpenedFolderName = { fg = p.foreground },
    NvimTreeRootFolder = { fg = p.color12 },
    NvimTreeSpecialFile = { fg = p.color1 },
    NvimTreeStatusLineNC = { bg = p.background, fg = p.background },
    NvimTreeSymlink = { fg = p.color3 },
    NvimTreeWinSeparator = { fg = p.background },

    -- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
    ["@attribute"] = { fg = p.color4 },
    ["@boolean"] = { fg = p.color6 },
    ["@character"] = { fg = p.color4 },
    ["@comment"] = { fg = p.comment, style = options.styles.comments },
    ["@conditional"] = { fg = p.color1 },
    ["@constant"] = { fg = p.color6 },
    ["@constant.builtin"] = { fg = p.color4 },
    ["@constant.macro"] = { fg = p.color3 },
    ["@constructor"] = { fg = p.color4 },
    ["@exception"] = { fg = p.color8 },
    ["@field"] = { fg = p.color1 },
    ["@float"] = { link = "@number" },
    ["@function"] = { fg = p.color1, style = options.styles.functions },
    ["@function.builtin"] = { fg = p.color14 },
    ["@function.macro"] = { fg = p.color2 },
    ["@include"] = { fg = p.color4 },
    ["@keyword"] = { fg = p.color5, style = options.styles.keywords },
    ["@keyword.function"] = { fg = p.color5, style = options.styles.functions },
    ["@keyword.operator"] = { fg = p.color12 },
    ["@keyword.return"] = { fg = p.color4 },
    ["@label"] = { fg = p.color4 },
    ["@method"] = { fg = p.color12 },
    ["@namespace"] = { fg = p.color9 },
    ["@number"] = { fg = p.color15 },
    ["@operator"] = { fg = p.color7 },
    ["@parameter"] = { fg = p.color1 },
    ["@parameter.reference"] = { fg = p.color9 },
    ["@property"] = { fg = p.color1 },
    ["@punctuation.bracket"] = { fg = p.color7 },
    ["@punctuation.delimiter"] = { fg = p.color7 },
    ["@punctuation.special"] = { fg = p.color7 },
    ["@repeat"] = { fg = p.color13 },
    ["@string"] = { fg = p.color2 },
    ["@string.escape"] = { fg = p.color4 },
    ["@string.regex"] = { fg = p.color2 },
    ["@string.special"] = { fg = p.color4 },
    ["@symbol"] = { fg = p.color1 },
    ["@tag"] = { fg = p.color4 },
    ["@tag.attribute"] = { fg = p.color1 },
    ["@tag.delimiter"] = { fg = p.color7 },
    ["@text"] = { fg = p.color7 },
    ["@text.danger"] = { fg = p.color8 },
    ["@text.emphasis"] = { fg = p.color7, italic = true },
    ["@text.environment.name"] = { fg = p.color3 },
    ["@text.environtment"] = { fg = p.color5 },
    ["@text.literal"] = { fg = p.color2, italic = true },
    ["@text.math"] = { fg = p.color6 },
    ["@text.note"] = { fg = p.black, bg = p.color2 },
    ["@text.reference"] = { fg = p.color6 },
    ["@text.strike"] = { fg = p.color7, strikethrough = true },
    ["@text.strong"] = { fg = p.color7, bold = true },
    ["@text.title"] = { fg = p.color3, bold = true },
    ["@text.underline"] = { fg = p.color5, underline = true },
    ["@text.uri"] = { fg = p.color3, underline = true },
    ["@text.warning"] = { fg = p.color0, bg = p.color1 },
    ["@type"] = { fg = p.color4 },
    ["@type.builtin"] = { fg = p.color3 },
    ["@variable"] = { fg = p.color7, style = options.styles.variables },
    ["@variable.builtin"] = { fg = p.color4 },

    -- LSP semantic tokens
    -- ["@lsp.type.comment"] = { link = "@comment" },
    -- ["@lsp.type.enum"] = { link = "@type" },
    -- ["@lsp.type.interface"] = { link = "Identifier" },
    -- ["@lsp.type.keyword"] = { link = "@keyword" },
    -- ["@lsp.type.namespace"] = { link = "@namespace" },
    -- ["@lsp.type.parameter"] = { link = "@parameter" },
    -- ["@lsp.type.property"] = { link = "@property" },
    -- ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    -- ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    -- ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    -- ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    -- ["@lsp.typemod.string.injected"] = { link = "@string" },
    -- ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    -- ["@lsp.typemod.variable.injected"] = { link = "@variable" },

    -- alpha.nvim: https://github.com/goolord/alpha-nvim
    AlphaHeader = { fg = p.color2 },
    AlphaButton = { fg = p.color4 },
    AlphaFooter = { fg = p.color3 },
    AlphaShortcut = { fg = p.color1 },

    -- dashboard.nvim: https://github.com/nvimdev/dashboard-nvim
    DashboardHeader = { fg = p.color2 },
    DashboardCenter = { fg = p.color4 },
    DashboardFooter = { fg = p.color3 },
    DashboardShortcut = { fg = p.color1 },

    -- telescope.nvim: https://github.com/nvim-telescope/telescope.nvim
    TelescopeMatching = { fg = p.color2 },
    TelescopeSelection = { fg = p.color2, bg = p.bg },
    TelescopeMultiSelection = { bg = p.color16 },
    TelescopePromptTitle = { fg = p.background, bg = p.color5 },
    TelescopePreviewLine = { bg = p.background },
    TelescopePromptPrefix = { fg = p.color2, bg = p.cursorline },
    TelescopePromptBorder = { fg = p.cursorline, bg = p.cursorline },
    TelescopePromptNormal = { fg = p.fg, bg = p.cursorline },
    TelescopeResultsTitle = { fg = p.color16, bg = p.color16 },
    TelescopeResultsBorder = { fg = p.color16, bg = p.color16 },
    TelescopeResultsNormal = { fg = p.foreground, bg = p.color16 },
    TelescopePreviewTitle = { fg = p.background, bg = p.color3 },
    TelescopePreviewBorder = { fg = p.color16, bg = p.color16 },
    TelescopePreviewNormal = { fg = p.foreground, bg = p.color16 },

    -- mason.nvim: https://github.com/williamboman/mason.nvim
    MasonHeader = { bg = p.color9, fg = p.black },
    MasonHighlight = { fg = p.color12 },
    MasonHighlightBlock = { fg = p.black, bg = p.color10 },
    MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
    MasonHeaderSecondary = { link = "MasonHighlightBlock" },
    MasonMuted = { fg = p.color7 },
    MasonMutedBlock = { fg = p.color7, bg = p.color8 },

    -- trouble.nvim: https://github.com/folke/trouble.nvim
    LspTroubleCount = { fg = p.color6, bg = p.foreground },
    LspTroubleNormal = { fg = p.foreground, bg = p.background },
    LspTroubleText = { fg = p.foreground },

    -- vim-gitgutter: https://github.com/airblade/vim-gitgutter
    GitGutterAdd = { fg = p.color4 },
    GitGutterChange = { fg = p.color5 },
    GitGutterDelete = { fg = p.color1 },
  }

  theme.terminal_colors = {
    terminal_color_0 = p.color0,
    terminal_color_1 = p.color1,
    terminal_color_2 = p.color2,
    terminal_color_3 = p.color3,
    terminal_color_4 = p.color4,
    terminal_color_5 = p.color5,
    terminal_color_6 = p.color6,
    terminal_color_7 = p.color7,
    terminal_color_8 = p.color8,
    terminal_color_9 = p.color9,
    terminal_color_10 = p.color10,
    terminal_color_11 = p.color11,
    terminal_color_12 = p.color12,
    terminal_color_13 = p.color13,
    terminal_color_14 = p.color14,
    terminal_color_15 = p.color15,
  }

  for option, value in pairs(theme.terminal_colors) do
    vim.g[option] = value
  end

  theme.highlights = vim.tbl_extend("force", {}, theme.highlights, options.highlights)

  -- Hide all semantic highlights
  for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    vim.api.nvim_set_hl(0, group, {})
  end

  -- Set the highlights
  for group, colors in pairs(theme.highlights) do
    if colors.style then
      if type(colors.style) == "table" then
        colors = vim.tbl_extend("force", colors, colors.style)
      end
      colors.style = nil
    end
    vim.api.nvim_set_hl(0, group, colors)
  end
end

return theme
