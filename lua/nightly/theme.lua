local theme = {}

function theme.setup()
  local options = require("nightly.config").options
  local color = {}

  if vim.o.background == "light" then
    color = require("nightly.palette").light_colors
    color.bg = "#EDEDED"
    color.sky = "#949B87"
    color.header = "#949B87"
    color.folder = "#949B87"
    color.root = "#949B87"
    color.border = "#949B87"
    color.fill = "#E7E7E7"
    color.cursorline = "#DDDDDD"
    color.tabline_sep = "#D0D0D0"
  else
    color = require("nightly.palette").dark_colors
    if options.color == "green" then
      color.bg = "#141B1E"
      color.sky = "#98BE65"
      color.header = "#98BE65"
      color.folder = "#98BE65"
      color.root = "#98BE65"
      color.border = "#87AF87"
      color.fill = "#242E2F"
      color.cursorline = "#242E32"
      color.tabline_sep = "#0F1416"
    end
    if options.color == "red" then
      color.bg = "#140B14"
      color.sky = "#AF8696"
      color.header = "#81454C"
      color.folder = "#81454C"
      color.root = "#AF8696"
      color.border = "#81454C"
      -- color.fill = "#0F080F"
      color.fill = "#2F1F30"
      color.cursorline = "#322E32"
      color.tabline_sep = "#0F080F"
    end
    if options.color == "black" then
      color.bg = "#121212"
      color.sky = "#6B7478"
      color.header = "#6B7478"
      color.folder = "#6B7478"
      color.root = "#6B7478"
      color.border = "#6B7478"
      color.fill = "#181818"
      color.cursorline = "#222222"
      color.tabline_sep = "#0D0D0D"
    end
    if options.color == "light_blue" then
      color.bg = "#2E3440"
      color.sky = "#CCD0DA"
      color.header = "#CCD0DA"
      color.folder = "#CCD0DA"
      color.root = "#CCD0DA"
      color.border = "#CCD0DA"
      color.fill = "#393B4E"
      color.cursorline = "#4C4F69"
      color.comment = "#ABABAF"
      color.tabline_sep = "#222730"
    end
  end

  if options.transparent then
    color.bg = "NONE"
    color.dark1 = "NONE"
    color.tabline_sep = "#292E42"
    color.win_sep = "#292E42"
    -- Fix black issue on autocompletion
    vim.opt.pumblend = 0
  end

  theme.highlights = {
    MsgArea = { fg = color.fg, bg = color.bg },
    Normal = { fg = color.fg, bg = color.bg },
    NormalNC = { fg = color.fg, bg = color.bg },
    SignColumn = { fg = color.fg, bg = color.bg },
    SignColumnSB = { fg = color.fg, bg = color.bg },
    Conceal = { fg = color.dark3 },
    ColorColumn = { fg = color.none, bg = color.highlight },
    CursorColumn = { fg = color.none, bg = color.highlight },
    LineNr = { fg = color.dark2, bg = color.bg },
    CursorLineNr = { fg = color.gray2, bg = color.bg },
    Directory = { fg = color.sky },
    EndOfBuffer = { fg = color.bg },
    Substitute = { fg = color.fg, bg = color.blue6 },
    FocusedSymbol = { fg = color.blue, bg = color.none },
    Folded = { fg = color.blue, bg = color.blue7 },
    FoldColumn = { fg = color.dark4, bg = color.none },
    Keyword = { fg = color.gray3, italic = options.styles.keywords.italic },
    ModeMsg = { fg = color.gray4, bold = true },
    NonText = { fg = color.gray4 },
    Question = { fg = color.blue },
    Special = { fg = color.blue },
    SpecialChar = { fg = color.fg },
    SpecialKey = { fg = color.fg },
    CursorLine = { bg = color.cursorline },
    Visual = { bg = color.highlight },
    VisualNOS = { bg = color.highlight },
    Title = { fg = color.blue, bold = true },
    ErrorMsg = { fg = color.red },
    WarningMsg = { fg = color.light_orange },
    Whitespace = { fg = color.blue7 },
    WildMenu = { bg = color.blue9 },
    Identifier = { fg = color.magenta, italic = options.styles.variables.italic },
    Boolean = { fg = color.yellow },
    Comment = { fg = color.comment or color.dark4, italic = options.styles.comments.italic },
    Character = { fg = color.green },
    Conditional = { fg = color.purple },
    Constant = { fg = color.light_orange },
    Define = { fg = color.purple },
    Delimiter = { fg = color.fg },
    Exception = { fg = color.yellow },
    Float = { fg = color.blue },
    Function = { fg = color.blue, italic = options.styles.functions.italic },
    Include = { fg = color.blue },
    Label = { fg = color.blue },
    Macro = { fg = color.light_orange },
    Number = { fg = color.yellow },
    Operator = { fg = color.fg },
    PreProc = { fg = color.cyan },
    PreCondit = { fg = color.cyan },
    Repeat = { fg = color.blue },
    Statement = { fg = color.blue },
    StorageClass = { fg = color.cyan },
    String = { fg = color.green },
    Structure = { fg = color.yellow },
    Tag = { fg = color.blue },
    Todo = { fg = color.dark3, bg = color.highlight },
    Type = { fg = color.cyan },
    Typedef = { fg = color.purple },
    Error = { fg = color.red },

    -- matchparen
    MatchParen = { bold = false, fg = color.yellow },

    -- Lsp semantic tokens
    -- ["@lsp.type.enum"] = { link = "@type" },
    -- ["@lsp.type.keyword"] = { link = "@keyword" },
    -- ["@lsp.type.interface"] = { link = "Identifier" },
    -- ["@lsp.type.namespace"] = { link = "@namespace" },
    -- ["@lsp.type.parameter"] = { link = "@parameter" },
    -- ["@lsp.type.property"] = { link = "@property" },
    -- ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    -- ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    -- ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    -- ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },

    -- Lazy
    LazyHandlerTask = { fg = color.green },
    LazyKey = { fg = color.dark3 },
    LazyH1 = { link = "CursorLine" },
    LazyButton = { fg = color.sky, bg = color.dark1 },

    -- Font
    Bold = { bold = true },
    Italic = { italic = true },
    Underlined = { underline = true, sp = color.dark3 },

    -- Cursor
    TermCursor = { fg = color.blue9, bg = color.gray3 },
    Cursor = { fg = color.bg, bg = color.fg },
    lCursor = { fg = color.bg, bg = color.fg },
    CursorIM = { fg = color.bg, bg = color.fg },

    -- Separator
    WinSeparator = { fg = color.border, bg = color.none },

    -- Spell
    SpellBad = { sp = color.red, undercurl = true },
    SpellCap = { sp = color.light_orange, undercurl = true },
    SpellLocal = { sp = color.blue, undercurl = true },
    SpellRare = { sp = color.yellow, undercurl = true },

    -- Statusline
    StatusLineNC = { bg = color.bg },
    StatusLine = { fg = color.fg, bg = color.fill },

    -- Float
    NormalFloat = {
      fg = color.fg,
      bg = color.bg,
    },
    FloatBorder = { fg = color.border, bg = color.none },

    -- Pmenu
    Pmenu = { fg = "#C0CAF5", bg = color.bg },
    PmenuSel = { bg = "#343A55" },
    PmenuSBar = { bg = "#222229" },
    PmenuThumb = { bg = color.blue7 },

    -- Search
    CurSearch = { link = "IncSearch" },
    Search = { fg = color.black, bg = color.blue },
    IncSearch = { fg = color.black, bg = "#87AF87" },

    qfLineNr = { link = "CursorLineNr" },
    qfFileName = { fg = color.none },

    -- Diff
    DiffAdd = { fg = color.blue9, bg = color.blue },
    DiffChange = { fg = color.blue9, bg = color.green },
    DiffDelete = { fg = color.blue9, bg = color.red },
    DiffText = { fg = color.blue9, bg = color.fg },

    -- Tabline
    TabLine = { bg = color.tabline_sep, fg = color.fg },
    TabLineFill = { bg = color.fill },
    TabLineSel = { fg = color.fg, bg = color.bg },

    -- Bufferline
    BufferLineSeparator = {
      fg = color.highlight,
      bg = color.tabline_sep,
    },
    BufferLineFill = { bg = color.fill },
    BufferLineIndicatorSelected = {
      fg = color.sky,
    },

    -- Trouble
    TroubleText = { fg = color.fg },
    TroubleCount = { fg = color.magenta, bg = color.blue7 },
    TroubleNormal = { fg = color.fg, bg = color.none },

    -- GitGutter
    GitGutterAdd = { fg = color.green, bg = color.bg },
    GitGutterChange = { fg = color.blue, bg = color.bg },
    GitGutterDelete = { fg = color.red, bg = color.bg },

    -- Markdown
    mkdCodeDelimiter = { bg = color.blue6, fg = color.fg },
    mkdCodeStart = { fg = color.red, bold = true },
    mkdCodeEnd = { fg = color.fg, bold = true },

    markdownHeadingDelimiter = { fg = color.light_orange, bold = true },
    markdownCode = { fg = color.blue },
    markdownCodeBlock = { fg = color.green },
    markdownH1 = { fg = color.fg, bold = true },
    markdownH2 = { fg = color.fg, bold = true },
    markdownH3 = { fg = color.fg, bold = true },
    markdownH4 = { fg = color.fg, bold = true },
    markdownH5 = { fg = color.fg, bold = true },
    markdownH6 = { fg = color.fg, bold = true },
    markdownLinkText = { fg = color.blue, underline = true, sp = color.blue6 },
    markdownLink = { fg = color.fg, underline = true, sp = color.blue8 },
    markdownUrl = { fg = color.fg, underline = true, sp = color.blue8 },

    -- Glyph Palette
    GlyphPalette1 = { fg = color.red },
    GlyphPalette2 = { fg = color.green },
    GlyphPalette3 = { fg = color.yellow },
    GlyphPalette4 = { fg = color.blue },
    GlyphPalette6 = { fg = color.green1 },
    GlyphPalette7 = { fg = color.fg },
    GlyphPalette9 = { fg = color.red },

    -- Neovim
    healthError = { fg = color.red },
    healthSuccess = { fg = color.green1 },
    healthWarning = { fg = color.light_orange },

    -- Illuminate
    IlluminatedWord = { bg = color.blue7 },
    IlluminatedCurWord = { bg = color.blue7 },
    IlluminatedWordText = { bg = color.blue7 },
    IlluminatedWordRead = { bg = color.blue7 },
    IlluminatedWordWrite = { bg = color.blue7 },

    -- Treesitter
    ["@annotation"] = { link = "PreProc" },
    ["@preproc"] = { link = "PreProc" },
    ["@debug"] = { fg = color.red },
    ["@variable"] = { fg = color.fg, italic = options.styles.variables.italic },
    ["@variable.builtin"] = { fg = color.blue, italic = options.styles.variables.italic },
    ["@variable.builtin.lua"] = { fg = color.fg, italic = options.styles.variables.italic },
    ["@none"] = { fg = color.none },
    ["@boolean"] = { fg = color.magenta },
    ["@character"] = { fg = color.green },
    ["@comment"] = { fg = color.comment or color.dark4, italic = options.styles.comments.italic },
    ["@conceal"] = { fg = color.fg },
    ["@conditional"] = { fg = color.purple },
    ["@constant"] = { fg = color.light_orange },
    ["@constant.builtin"] = { fg = color.light_orange },
    ["@constant.macro"] = { fg = color.light_orange },
    ["@constructor"] = { fg = color.blue },
    ["@exception"] = { fg = color.yellow },
    ["@field"] = { fg = color.green1 },
    ["@float"] = { fg = color.fg },
    ["@function.builtin"] = { fg = color.blue, italic = options.styles.functions.italic },
    ["@function"] = { fg = color.blue, italic = options.styles.functions.italic },
    ["@function.macro"] = { fg = color.blue, italic = options.styles.functions.italic },
    ["@include"] = { fg = color.blue },
    ["@keyword"] = { fg = color.purple, italic = options.styles.keywords.italic },
    ["@keyword.function"] = { fg = color.purple, italic = options.styles.keywords.italic },
    ["@keyword.operator"] = { fg = color.cyan },
    ["@operator"] = { fg = color.fg },
    ["@label"] = { fg = color.magenta },
    ["@method"] = { fg = color.blue },
    ["@method.call"] = { fg = color.blue },
    ["@namespace"] = { fg = color.yellow },
    ["@number"] = { fg = color.yellow },
    ["@parameter"] = { fg = color.fg },
    ["@parameter.reference"] = { fg = color.fg },
    ["@property"] = { fg = color.cyan },
    ["@punctuation"] = { fg = color.dark3 },
    ["@punctuation.delimiter"] = { fg = color.fg },
    ["@punctuation.bracket"] = { fg = color.dark3 },
    ["@punctuation.special"] = { fg = color.blue2 },
    ["@punctuation.special.markdown"] = { fg = color.light_orange, bold = true },
    ["@repeat"] = { fg = color.purple },
    ["@string"] = { fg = color.green },
    ["@string.regex"] = { fg = color.blue3 },
    ["@string.special"] = { fg = color.green },
    ["@string.escape"] = { fg = color.green },
    ["@symbol"] = { fg = color.gray4 },
    ["@tag"] = { link = "Tag" },
    ["@tag.delimiter"] = { link = "Tag" },
    ["@tag.attribute"] = { fg = color.cyan },
    ["@text"] = { fg = color.fg },
    ["@text.uri"] = { underline = true, sp = color.dark3 },
    ["@text.literal"] = { fg = color.green },
    ["@text.math"] = { fg = color.blue },
    ["@text.environment"] = { fg = color.blue7 },
    ["@text.environment.name"] = { fg = color.fg },
    ["@text.reference"] = { fg = color.blue },
    ["@text.title"] = { fg = color.fg },
    ["@text.note"] = { fg = color.blue9, bg = color.gray4 },
    ["@text.warning"] = { fg = color.bg, bg = color.light_orange },
    ["@text.error"] = { fg = color.bg, bg = color.red },
    ["@text.strike"] = { fg = color.fg },
    ["@text.strong"] = { link = "Bold" },
    ["@text.emphasis"] = { link = "Italic" },
    ["@text.underline"] = { link = "Underlined" },
    ["@text.literal.markdown_inline"] = { bg = color.blue6, fg = color.blue },
    ["@text.todo"] = { link = "Todo" },
    ["@text.todo.checked"] = { link = "Directory" },
    ["@text.todo.unchecked"] = { link = "PreProc" },
    ["@type"] = { fg = color.blue },
    ["@type.builtin"] = { fg = color.cyan },
    ["@type.qualifier"] = { link = "Special" },
    ["@type.definition"] = { link = "Typedef" },
    ["@storageclass"] = { link = "StorageClass" },

    TSNodeKey = { fg = color.magenta2, bold = true },
    TSNodeUnmatched = { fg = color.dark2 },

    -- Indent Blankline
    IndentBlanklineContextChar = { fg = color.gray4 },
    IndentBlanklineChar = { fg = color.fg_gutter, nocombine = true },

    -- HTML
    htmlH1 = { fg = color.magenta, bold = true },
    htmlH2 = { fg = color.blue, bold = true },
    htmlUnderline = { underline = true, sp = color.dark3 },
    htmlBoldUnderline = { bold = true, underline = true, sp = color.dark3 },
    htmlItalicUnderline = { italic = true, underline = true, sp = color.dark3 },
    htmlUnderlineBold = { bold = true, underline = true, sp = color.dark3 },
    htmlUnderlineBoldItalic = { underline = true, sp = color.dark3 },
    htmlUnderlineItalic = { underline = true, sp = color.dark3 },
    htmlUnderlineItalicBold = { underline = true, sp = color.dark3 },
    htmlItalicUnderlineBold = { italic = true, underline = true, sp = color.dark3 },
    htmlBoldItalicUnderline = { bold = true, italic = true, underline = true, sp = color.dark3 },
    htmlBoldUnderlineItalic = { bold = true, underline = true, sp = color.dark3 },
    htmlItalicBoldUnderline = { italic = true, bold = true, underline = true, sp = color.dark3 },

    -- NvimTree
    NvimTreeGitDeleted = { fg = color.red },
    NvimTreeWinSeparator = {
      fg = color.win_sep or color.bg,
    },
    NvimTreeEndOfBuffer = { link = "EndOfBuffer" },
    NvimTreeSpecialFile = { underline = true, sp = color.gray2 },
    NvimTreeIndentMarker = { fg = color.blue6 },
    NvimTreeSymlink = { fg = color.yellow },
    NvimTreeNormal = { link = "Normal" },
    NvimTreeNormalNC = { link = "NormalNC" },
    NvimTreeFolderIcon = { fg = color.folder },
    NvimTreeRootFolder = { fg = color.root, bold = false },
    NvimTreeFolderName = { fg = color.fg },
    NvimTreeOpenedFolderName = { fg = color.gray4 },
    NvimTreeEmptyFolderName = { fg = color.gray4 },
    NvimTreeGitDirty = { fg = color.blue4 },
    NvimTreeGitNew = { fg = color.green2 },

    -- Which-Key
    WhichKeyBorder = { fg = color.border, bg = color.none },
    WhichKeyFloat = { link = "NormalFloat" },
    WhichKey = { fg = color.blue5 },
    WhichKeyGroup = { fg = color.sky },
    WhichKeyDesc = { fg = color.magenta },
    WhichKeySeparator = { fg = color.dark4 },
    WhichKeyValue = { fg = color.dark3 },

    -- Barbar
    -- BufferCurrent = { bg = color.fill, fg = color.fg },
    -- BufferCurrentIndex = { bg = color.fill, fg = color.blue },
    -- BufferCurrentMod = { bg = color.fill, fg = color.yellow },
    -- BufferCurrentSign = { bg = color.fill, fg = color.blue },
    -- BufferCurrentTarget = { bg = color.blue7, fg = color.red },
    -- BufferVisible = { bg = color.dark5, fg = color.fg },
    -- BufferVisibleIndex = { bg = color.dark5, fg = color.blue },
    -- BufferVisibleMod = { bg = color.dark5, fg = color.yellow },
    -- BufferVisibleSign = { bg = color.dark5, fg = color.blue },
    -- BufferVisibleTarget = { bg = color.dark5, fg = color.red },
    -- BufferInactive = { bg = color.dark5, fg = color.dark5 },
    -- BufferInactiveIndex = { bg = color.dark5, fg = color.dark5 },
    -- BufferInactiveMod = { bg = color.dark5, fg = color.yellow },
    -- BufferInactiveSign = { bg = color.dark5, fg = color.dark3 },
    -- BufferInactiveTarget = { bg = color.dark5, fg = color.red },
    -- BufferTabpages = { bg = color.dark5, fg = color.none },
    -- BufferTabpage = { bg = color.dark5, fg = color.dark3 },
    -- BufferTabpageFill = { bg = color.fill },

    -- Telescope
    TelescopeNormal = { fg = color.gray2, bg = color.bg },
    TelescopeMatching = { fg = color.sky, bg = color.bg },
    TelescopeSelection = { fg = color.sky, bg = color.bg },
    TelescopeMultiSelection = { bg = color.bg },
    TelescopePreviewLine = { bg = color.bg },
    TelescopePromptPrefix = { fg = color.sky, bg = color.bg },
    TelescopePromptNormal = { fg = color.fg, bg = color.bg },
    -- TelescopePromptBorder = { fg = color.border, bg = color.none },
    -- TelescopePreviewBorder = { fg = color.border, bg = color.none },
    -- TelescopeResultsBorder = { fg = color.border, bg = color.none },
    TelescopeBorder = { fg = color.border, bg = color.bg },
    -- TelescopePromptTitle = { fg = color.blue6, bg = color.none },
    -- TelescopePreviewTitle = { fg = color.blue6, bg = color.none },
    -- TelescopeResultsTitle = { fg = color.blue6, bg = color.none },
    TelescopeTitle = { fg = color.fg_border, bg = color.border },

    -- Alpha
    AlphaHeader = { fg = color.header },
    AlphaButton = { fg = color.fg },
    AlphaFooter = { fg = color.fg },

    -- Dashboard
    DashboardHeader = { fg = color.header },
    DashboardCenter = { fg = color.fg },
    DashboardFooter = { fg = color.fg },

    -- Git
    GitSignsChange = { fg = color.blue, bg = color.bg },
    GitSignsDelete = { fg = color.red, bg = color.bg },
    GitSignsAdd = { fg = color.green, bg = color.bg },

    -- diff
    diffAdded = { fg = color.green },
    diffRemoved = { fg = color.red },
    diffChanged = { fg = color.blue },
    diffOldFile = { fg = color.yellow },
    diffNewFile = { fg = color.light_orange },
    diffFile = { fg = color.blue },
    diffLine = { fg = color.dark4 },
    diffIndexLine = { fg = color.magenta },

    -- ts-rainbow
    rainbowcol1 = { fg = color.red },
    rainbowcol2 = { fg = color.yellow },
    rainbowcol3 = { fg = color.green },
    rainbowcol4 = { fg = color.teal },
    rainbowcol5 = { fg = color.blue },
    rainbowcol6 = { fg = color.magenta },
    rainbowcol7 = { fg = color.purple },

    -- LSP
    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },
    LspSagaSignatureHelpBorder = { fg = color.border, bg = color.none },
    LspSagaDefPreviewBorder = { fg = color.border, bg = color.none },
    LspSagaRenameBorder = { fg = color.border, bg = color.none },
    LspFloatWinBorder = { fg = color.border, bg = color.none },
    LspSagaBorderTitle = { fg = color.border, bg = color.none },
    LspSagaHoverBorder = { fg = color.border, bg = color.none },
    LspSagaCodeActionBorder = { fg = color.border, bg = color.none },
    LspSagaFinderSelection = { fg = color.bg_visual },
    LspSagaCodeActionTitle = { fg = color.blue1 },
    LspSagaCodeActionContent = { fg = color.purple },
    ReferencesCount = { fg = color.purple },
    DefinitionCount = { fg = color.purple },
    DefinitionIcon = { fg = color.blue },
    ReferencesIcon = { fg = color.blue },
    TargetWord = { fg = color.cyan },

    -- general
    TitleString = { fg = color.fg },
    TitleIcon = { fg = color.red },
    SagaBorder = { bg = color.bg, fg = color.border },
    SagaNormal = { bg = color.bg },
    SagaExpand = { fg = color.red },
    SagaCollapse = { fg = color.red },
    SagaBeacon = { bg = color.magenta },
    -- code action
    ActionPreviewNormal = { link = "SagaNormal" },
    ActionPreviewBorder = { link = "SagaBorder" },
    ActionPreviewTitle = { fg = color.violet, bg = color.bg },
    CodeActionNormal = { link = "SagaNormal" },
    CodeActionBorder = { link = "SagaBorder" },
    CodeActionText = { fg = color.light_orange },
    CodeActionNumber = { fg = color.green },
    -- finder
    FinderSelection = { fg = color.cyan, bold = true },
    FinderFileName = { fg = color.fg },
    FinderCount = { link = "Label" },
    FinderIcon = { fg = color.cyan },
    FinderType = { fg = color.violet },
    --finder spinner
    FinderSpinnerTitle = { fg = color.magenta, bold = true },
    FinderSpinner = { fg = color.magenta, bold = true },
    FinderPreviewSearch = { link = "Search" },
    FinderVirtText = { fg = color.red },
    FinderNormal = { link = "SagaNormal" },
    FinderBorder = { link = "SagaBorder" },
    FinderPreviewBorder = { link = "SagaBorder" },
    -- definition
    DefinitionBorder = { link = "SagaBorder" },
    DefinitionNormal = { link = "SagaNormal" },
    DefinitionSearch = { link = "Search" },
    -- hover
    HoverNormal = { link = "SagaNormal" },
    HoverBorder = { link = "SagaBorder" },
    -- rename
    RenameBorder = { link = "SagaBorder" },
    RenameNormal = { fg = color.light_orange, bg = color.bg },
    RenameMatch = { link = "Search" },
    -- diagnostic
    DiagnosticBorder = { link = "SagaBorder" },
    DiagnosticSource = { fg = "gray" },
    DiagnosticNormal = { link = "SagaNormal" },
    DiagnosticErrorBorder = { link = "DiagnosticError" },
    DiagnosticWarnBorder = { link = "DiagnosticWarn" },
    DiagnosticHintBorder = { link = "DiagnosticHint" },
    DiagnosticInfoBorder = { link = "DiagnosticInfo" },
    DiagnosticPos = { fg = color.gray },
    DiagnosticWord = { fg = color.fg },
    -- Call Hierachry
    CallHierarchyNormal = { link = "SagaNormal" },
    CallHierarchyBorder = { link = "SagaBorder" },
    CallHierarchyIcon = { fg = color.violet },
    CallHierarchyTitle = { fg = color.red },
    -- lightbulb
    LspSagaLightBulb = { link = "DiagnosticSignHint" },
    -- shadow
    SagaShadow = { bg = color.black },
    -- Outline
    OutlineIndent = { fg = color.magenta },
    OutlinePreviewBorder = { link = "SagaNormal" },
    OutlinePreviewNormal = { link = "SagaBorder" },
    -- Float term
    TerminalBorder = { link = "SagaBorder" },
    TerminalNormal = { link = "SagaNormal" },

    LspReferenceText = { bg = color.blue7 },
    LspReferenceRead = { bg = color.blue7 },
    LspReferenceWrite = { bg = color.blue7 },
    LspInfoBorder = { link = "FloatBorder" },
    LspFloatWinNormal = { link = "NormalFloat" },

    DiagnosticError = { fg = color.red },
    DiagnosticInfo = { fg = color.blue },
    DiagnosticWarn = { fg = color.light_orange },
    DiagnosticHint = { fg = color.yellow },

    DiagnosticUnderlineError = { underline = false },
    DiagnosticUnderlineInfo = { underline = false },
    DiagnosticUnderlineWarn = { underline = false },
    DiagnosticUnderlineHint = { underline = false },

    DiagnosticVirtualTextError = { fg = color.red, bg = color.virtual_err },
    DiagnosticVirtualTextInfo = { fg = color.blue, bg = color.virtual_info },
    DiagnosticVirtualTextWarn = { fg = color.light_orange, bg = color.virtual_warn },
    DiagnosticVirtualTextHint = { fg = color.yellow, bg = color.virtual_hint },

    DiagnosticFloatingError = { link = "DiagnosticError" },
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
    DiagnosticFloatingHint = { link = "DiagnosticHint" },

    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignHint = { link = "DiagnosticHint" },

    CmpDocumentationBorder = { fg = color.blue6 },
    CmpCompletionBorder = { fg = color.blue6 },
    CmpCursorLine = { bg = color.cursorline },

    CmpItemKindFolder = { fg = color.blue },
    CmpItemKindFile = { fg = color.green },

    CmpItemKindEnumMember = { fg = color.purple },
    CmpItemKindFunction = { fg = color.purple },
    CmpItemKindMethod = { fg = color.purple },
    CmpItemKindStruct = { fg = color.purple },
    CmpItemKindEnum = { fg = color.purple },

    CmpItemKindConstructor = { fg = color.yellow },
    CmpItemKindInterface = { fg = color.yellow },
    CmpItemKindReference = { fg = color.yellow },
    CmpItemKindConstant = { fg = color.yellow },
    CmpItemKindProperty = { fg = color.yellow },
    CmpItemKindModule = { fg = color.yellow },
    CmpItemKindClass = { fg = color.yellow },
    CmpItemKindField = { fg = color.yellow },
    CmpItemKindEvent = { fg = color.yellow },

    CmpItemKindTypeParameter = { fg = color.gray4 },
    CmpItemKindVariable = { fg = color.gray4 },
    CmpItemKindOperator = { fg = color.blue },
    CmpItemKindSnippet = { fg = color.blue },
    CmpItemKindKeyword = { fg = color.blue },
    CmpItemKindText = { fg = color.gray4 },
    CmpItemKindUnit = { fg = color.gray4 },
    CmpItemKindValue = { fg = color.blue },

    CmpItemAbbrMatch = { fg = color.sky, bg = color.none },
    CmpItemAbbrDeprecated = { fg = color.blue7, bg = color.none, strikethrough = true },
    CmpItemAbbrMatchFuzzy = { fg = color.sky, bg = color.none },
    CmpItemAbbr = { fg = color.fg, bg = color.none },

    -- Navic
    NavicIconsFile = { fg = color.green, bg = color.none },
    NavicIconsModule = { fg = color.yellow, bg = color.none },
    NavicIconsNamespace = { fg = color.yellow, bg = color.none },
    NavicIconsPackage = { fg = color.fg, bg = color.none },
    NavicIconsClass = { fg = color.light_orange, bg = color.none },
    NavicIconsMethod = { fg = color.blue, bg = color.none },
    NavicIconsProperty = { fg = color.yellow, bg = color.none },
    NavicIconsField = { fg = color.yellow, bg = color.none },
    NavicIconsConstructor = { fg = color.light_orange, bg = color.none },
    NavicIconsEnum = { fg = color.purple, bg = color.none },
    NavicIconsInterface = { fg = color.light_orange, bg = color.none },
    NavicIconsFunction = { fg = color.purple, bg = color.none },
    NavicIconsVariable = { fg = color.blue, bg = color.none },
    NavicIconsConstant = { fg = color.light_orange, bg = color.none },
    NavicIconsString = { fg = color.green, bg = color.none },
    NavicIconsNumber = { fg = color.yellow, bg = color.none },
    NavicIconsBoolean = { fg = color.light_orange, bg = color.none },
    NavicIconsArray = { fg = color.blue, bg = color.none },
    NavicIconsObject = { fg = color.blue, bg = color.none },
    NavicIconsKey = { fg = color.purple, bg = color.none },
    NavicIconsKeyword = { fg = color.gray3, bg = color.none },
    NavicIconsNull = { fg = color.blue, bg = color.none },
    NavicIconsEnumMember = { fg = color.yellow, bg = color.none },
    NavicIconsStruct = { fg = color.purple, bg = color.none },
    NavicIconsEvent = { fg = color.blue, bg = color.none },
    NavicIconsOperator = { fg = color.fg, bg = color.none },
    NavicIconsTypeParameter = { fg = color.gray4, bg = color.none },
    NavicText = { fg = color.violet, bg = color.none },
    NavicSeparator = { fg = color.blue4, bg = color.none },

    -- Scrollbar
    ScrollbarHandle = { fg = color.none, bg = color.highlight },

    ScrollbarSearchHandle = { fg = color.light_orange, bg = color.highlight },
    ScrollbarSearch = { fg = color.light_orange, bg = color.none },

    ScrollbarErrorHandle = { fg = color.red, bg = color.highlight },
    ScrollbarError = { fg = color.red, bg = color.none },

    ScrollbarWarnHandle = { fg = color.light_orange, bg = color.highlight },
    ScrollbarWarn = { fg = color.light_orange, bg = color.none },

    ScrollbarInfoHandle = { fg = color.blue, bg = color.highlight },
    ScrollbarInfo = { fg = color.blue, bg = color.none },

    ScrollbarHintHandle = { fg = color.yellow, bg = color.highlight },
    ScrollbarHint = { fg = color.yellow, bg = color.none },

    ScrollbarMiscHandle = { fg = color.purple, bg = color.highlight },
    ScrollbarMisc = { fg = color.purple, bg = color.none },

    -- Yanky
    YankyPut = { link = "Visual" },
    YankyYanked = { link = "Visual" },
    YankHighlight = { bg = color.dark2 },

    -- Notify
    NotifyERRORBorder = { fg = color.red, bg = color.bg },
    NotifyWARNBorder = { fg = color.light_orange, bg = color.bg },
    NotifyINFOBorder = { fg = color.blue, bg = color.bg },
    NotifyDEBUGBorder = { fg = color.dark4, bg = color.bg },
    NotifyTRACEBorder = { fg = color.purple, bg = color.bg },
    --- Icons
    NotifyERRORIcon = { fg = color.red },
    NotifyWARNIcon = { fg = color.light_orange },
    NotifyINFOIcon = { fg = color.blue },
    NotifyDEBUGIcon = { fg = color.dark4 },
    NotifyTRACEIcon = { fg = color.purple },
    --- Title
    NotifyERRORTitle = { fg = color.red },
    NotifyWARNTitle = { fg = color.light_orange },
    NotifyINFOTitle = { fg = color.blue },
    NotifyDEBUGTitle = { fg = color.dark4 },
    NotifyTRACETitle = { fg = color.purple },
    --- Body
    NotifyERRORBody = { fg = color.fg, bg = color.bg },
    NotifyWARNBody = { fg = color.fg, bg = color.bg },
    NotifyINFOBody = { fg = color.fg, bg = color.bg },
    NotifyDEBUGBody = { fg = color.fg, bg = color.bg },
    NotifyTRACEBody = { fg = color.fg, bg = color.bg },

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword = { bg = color.blue7 },
    MiniCursorwordCurrent = { bg = color.blue7 },

    MiniIndentscopeSymbol = { fg = color.blue1 },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

    MiniJump = { bg = color.magenta2, fg = "#ffffff" },

    MiniJump2dSpot = { fg = color.magenta2, bold = true, nocombine = true },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = color.yellow, italic = true },
    MiniStarterHeader = { fg = color.blue },
    MiniStarterInactive = { fg = color.dark4 },
    MiniStarterItem = { fg = color.fg, bg = color.bg },
    MiniStarterItemBullet = { fg = color.dark2 },
    MiniStarterItemPrefix = { fg = color.light_orange },
    MiniStarterSection = { fg = color.blue1 },
    MiniStarterQuery = { fg = color.blue },

    MiniStatuslineDevinfo = { fg = color.gray4, bg = color.highlight },
    MiniStatuslineFileinfo = { fg = color.gray4, bg = color.highlight },
    MiniStatuslineFilename = { fg = color.gray4, bg = color.blue7 },
    MiniStatuslineInactive = { fg = color.blue, bg = color.dark5 },
    MiniStatuslineModeCommand = { fg = color.black, bg = color.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = color.black, bg = color.green, bold = true },
    MiniStatuslineModeNormal = { fg = color.black, bg = color.blue, bold = true },
    MiniStatuslineModeOther = { fg = color.black, bg = color.teal, bold = true },
    MiniStatuslineModeReplace = { fg = color.black, bg = color.red, bold = true },
    MiniStatuslineModeVisual = { fg = color.black, bg = color.magenta, bold = true },

    MiniSurround = { bg = color.light_orange, fg = color.black },

    MiniTablineCurrent = { fg = color.fg, bg = color.blue7 },
    MiniTablineFill = { bg = color.black },
    MiniTablineHidden = { fg = color.dark3, bg = color.dark5 },
    MiniTablineModifiedCurrent = { fg = color.light_orange, bg = color.blue7 },
    MiniTablineModifiedHidden = { bg = color.dark5, fg = color.light_orange },
    MiniTablineModifiedVisible = { fg = color.light_orange, bg = color.dark5 },
    MiniTablineTabpagesection = { bg = color.dark5, fg = color.none },
    MiniTablineVisible = { fg = color.fg, bg = color.dark5 },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = color.red, bold = true },
    MiniTestPass = { fg = color.green, bold = true },

    MiniTrailspace = { bg = color.red },

    -- Noice
    NoiceCompletionItemKindDefault = { fg = color.gray4, bg = color.none },

    NoiceCompletionItemKindKeyword = { fg = color.cyan, bg = color.none },

    NoiceCompletionItemKindVariable = { fg = color.magenta, bg = color.none },
    NoiceCompletionItemKindConstant = { fg = color.magenta, bg = color.none },
    NoiceCompletionItemKindReference = { fg = color.magenta, bg = color.none },
    NoiceCompletionItemKindValue = { fg = color.magenta, bg = color.none },

    NoiceCompletionItemKindFunction = { fg = color.blue, bg = color.none },
    NoiceCompletionItemKindMethod = { fg = color.blue, bg = color.none },
    NoiceCompletionItemKindConstructor = { fg = color.blue, bg = color.none },

    NoiceCompletionItemKindClass = { fg = color.light_orange, bg = color.none },
    NoiceCompletionItemKindStruct = { fg = color.light_orange, bg = color.none },
    NoiceCompletionItemKindEvent = { fg = color.light_orange, bg = color.none },
    NoiceCompletionItemKindEnum = { fg = color.light_orange, bg = color.none },
    NoiceCompletionItemKindUnit = { fg = color.light_orange, bg = color.none },

    NoiceCompletionItemKindModule = { fg = color.yellow, bg = color.none },

    NoiceCompletionItemKindProperty = { fg = color.green1, bg = color.none },
    NoiceCompletionItemKindField = { fg = color.green1, bg = color.none },
    NoiceCompletionItemKindTypeParameter = { fg = color.green1, bg = color.none },
    NoiceCompletionItemKindEnumMember = { fg = color.green1, bg = color.none },
    NoiceCompletionItemKindOperator = { fg = color.green1, bg = color.none },
    NoiceCompletionItemKindSnippet = { fg = color.dark3, bg = color.none },
  }

  theme.terminal_colors = {
    terminal_color_0 = color.black,
    terminal_color_8 = color.blue6,
    terminal_color_7 = color.gray4,
    terminal_color_15 = color.fg,
    terminal_color_1 = color.red1,
    terminal_color_9 = color.red1,
    terminal_color_2 = color.green3,
    terminal_color_10 = color.green3,
    terminal_color_3 = color.yellow,
    terminal_color_11 = color.yellow,
    terminal_color_4 = color.blue,
    terminal_color_12 = color.blue,
    terminal_color_5 = color.magenta,
    terminal_color_13 = color.magenta,
    terminal_color_6 = color.cyan,
    terminal_color_14 = color.cyan,
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
    if not vim.tbl_isempty(colors) then
      vim.api.nvim_set_hl(0, group, colors)
    end
  end
end

return theme
