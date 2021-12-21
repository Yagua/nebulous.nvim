local get_options = require("nebulous.config").get_options
local g = vim.g
local setup = {}

---Load terminal colors
--@param tab table: scheme colors to apply
local function terminal_colors(tab)
  g.terminal_color_0  = tab.Black
  g.terminal_color_1  = tab.Red
  g.terminal_color_2  = tab.Green
  g.terminal_color_3  = tab.Yellow
  g.terminal_color_4  = tab.Blue
  g.terminal_color_5  = tab.Purple
  g.terminal_color_6  = tab.Cyan
  g.terminal_color_7  = tab.White
  g.terminal_color_8  = tab.Grey
  g.terminal_color_9  = tab.Red
  g.terminal_color_10 = tab.Green
  g.terminal_color_11 = tab.Yellow
  g.terminal_color_12 = tab.Blue
  g.terminal_color_13 = tab.Purple
  g.terminal_color_14 = tab.Cyan
  g.terminal_color_15 = tab.White
end

---Load all colorscheme elements
--@param scheme table: colors to apply
--@param settings table: custom options to be applied to the scheme
--@return editor table: all groups and its respectives colors
function setup.load_colors(scheme)
  local opts = get_options()

  ---------------------
  --  EDITOR COLORS  --
  ---------------------
  local editor = {
    Boolean =          { fg = scheme.DarkYellow, bg = scheme.none,       scheme.none },
    Character =        { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    ColorColumn =      { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    Comment =          { fg = scheme.DarkGrey,   bg = scheme.none,       style = opts.st_comments },
    Conceal =          { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    Conditional =      { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    Constant =         { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    Cursor =           { fg = scheme.none,       bg = scheme.Orange,     scheme.none },
    CursorColumn =     { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    CursorIM =         { fg = scheme.none,       bg = scheme.none,       scheme.none },
    CursorLine =       { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    CursorLineNr =     { fg = scheme.White,      bg = scheme.LightGrey,  scheme.none },
    DiffAdd =          { fg = scheme.Green,      bg = scheme.none,       style = "reverse" },
    DiffChange =       { fg = scheme.Orange,     bg = scheme.none,       style = "reverse" },
    DiffDelete =       { fg = scheme.Red,        bg = scheme.none,       style = "reverse" },
    DiffText =         { fg = scheme.Yellow,     bg = scheme.none,       style = "reverse" },
    Directory =        { fg = scheme.Blue,       bg = scheme.none,       style = "bold" },
    EndOfBuffer =      { fg = opts.st_eof and scheme.background or scheme.DarkGrey, bg = scheme.none, scheme.none },
    Error =            { fg = scheme.DarkRed,    bg = scheme.none,       style = "bold,underline" },
    ErrorMsg =         { fg = scheme.DarkRed,    bg = scheme.none,       scheme.none },
    Exception =        { fg = scheme.DarkRed,    bg = scheme.none,       scheme.none },
    Float =            { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    FoldColumn =       { fg = scheme.Grey,       bg = scheme.DarkGrey,   scheme.none },
    Folded =           { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    Function =         { fg = scheme.Aqua,       bg = scheme.none,       style = opts.st_functions },
    Identifier =       { fg = scheme.Cyan,       bg = scheme.none,       style = opts.st_variables },
    Ignore =           { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Italic =           { fg = scheme.none,       bg = scheme.none,       style = "italic" },
    IncSearch =        { fg = scheme.Black,      bg = scheme.DarkCyan,   scheme.none },
    Include =          { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Keyword =          { fg = scheme.Red,        bg = scheme.none,       style = opts.st_keywords },
    Label =            { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    LineNr =           { fg = scheme.DarkGrey,   bg = scheme.none,       scheme.none },
    Macro =            { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    MatchParen =       { fg = scheme.Cyan,       bg = scheme.none,       style = "bold" },
    NonText =          { fg = scheme.DarkGrey,   bg = scheme.none,       scheme.none },
    Normal =           { fg = scheme.White,      bg = opts.st_disable_bg or scheme.background, scheme.none },
    NormalFloat =      { fg = scheme.White,      bg = scheme.LightGrey,  scheme.none },
    Number =           { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    Operator =         { fg = scheme.White,      bg = scheme.none,       scheme.none },
    PMenu =            { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    PMenuSbar =        { fg = scheme.none,       bg = scheme.Grey,       scheme.none },
    PMenuSel =         { fg = scheme.Black,      bg = scheme.Orange,     scheme.none },
    PMenuThumb =       { fg = scheme.none,       bg = scheme.Yellow,     scheme.none },
    PreProc =          { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    Question =         { fg = scheme.DarkCyan,   bg = scheme.none,       style = "bold" },
    QuickFixLine =     { fg = scheme.Black,      bg = scheme.Yellow,     scheme.none },
    Repeat =           { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Search =           { fg = scheme.Black,      bg = scheme.Yellow,     scheme.none },
    SignColumn =       { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Special =          { fg = scheme.Yellow,     bg = scheme.none,       style = "italic" },
    SpecialChar =      { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    SpecialKey =       { fg = scheme.Orange,     bg = scheme.none,       style = "bold" },
    Statement =        { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    StatusLine =       { fg = scheme.White,      bg = scheme.Grey,       scheme.none },
    StatusLineNC =     { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    StorageClass =     { fg = scheme.Orange,     bg = scheme.none,       scheme.none  },
    String =           { fg = scheme.Green,      bg = scheme.none,       style = "italic" },
    TabLine =          { fg = scheme.DarkGrey,   bg = scheme.none,       scheme.none },
    TabLineFill =      { fg = scheme.none,       bg = scheme.Black,      scheme.none },
    TabLineSel =       { fg = scheme.Black,      bg = scheme.DarkCyan,   scheme.none },
    Title =            { fg = scheme.Blue,       bg = scheme.none,       style = "bold" },
    Todo =             { fg = scheme.Yellow,     bg = scheme.none,       style = "bold,italic" },
    Type =             { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Typedef =          { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Underlined =       { fg = scheme.none,       bg = scheme.none,       syle = "underline" },
    VertSplit =        { fg = scheme.Pink,       bg = scheme.none,       scheme.none },
    Visual =           { fg = scheme.none,       bg = scheme.none,       style = "reverse" },
    VisualNOS =        { fg = scheme.none,       bg = scheme.none,       style = "reverse"},
    WarningMsg =       { fg = scheme.DarkOrange, bg = scheme.none,       scheme.none },
    Warnings =         { fg = scheme.DarkOrange, bg = scheme.none,       style = "reverse" },
    Whitespace =       { fg = scheme.DarkGrey,   bg = scheme.none,       scheme.none },
    WildMenu =         { fg = scheme.Orange,     bg = scheme.Black,      style = "bold" },
    qfFileName =       { fg = scheme.Blue,       bg = scheme.Black,      scheme.none },
    qfLineNr =         { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },

    -- Diff
    diffAdded =   { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    diffChanged = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    diffRemoved = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    diffFile =    { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    diffLine =    { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    diffNewFile = { fg = scheme.Green,      bg = scheme.none, scheme.none },
    diffOldFile = { fg = scheme.Yellow,     bg = scheme.none, scheme.none },

    -- Markup
    markdownCode =              { fg = scheme.Green,      bg = scheme.none, scheme.none },
    markdownCodeBlock =         { fg = scheme.Green,      bg = scheme.none, scheme.none },
    markdownH1 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH2 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH3 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH4 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH5 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH6 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownHeadingDelimiter =  { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    markdownLinkText =          { fg = scheme.Blue,       bg = scheme.none, scheme.none },

    htmlTag = { fg = scheme.Purple, bg = scheme.none, scheme.none },

    ---------------------
    --  PLUGIN COLORS  --
    ---------------------

    -- Treesitter colors
    TSBoolean =         { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },
    TSCharacter =       { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConditional =     { fg = scheme.Red,        bg = scheme.none, scheme.none },
    TSConstBuiltin =    { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConstMacro =      { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConstant =        { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConstructor =     { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },
    TSError =           { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    TSException =       { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    TSField =           { fg = scheme.Purple,     bg = scheme.none, scheme.none },
    TSFloat =           { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSFuncBuiltin =     { fg = scheme.Aqua,       bg = scheme.none, scheme.none },
    TSFuncMacro =       { fg = scheme.Aqua,       bg = scheme.none, scheme.none },
    TSFunction =        { fg = scheme.Aqua,       bg = scheme.none, style = opts.st_functions },
    TSInclude =         { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    TSKeyword =         { fg = scheme.Red,        bg = scheme.none, style = opts.st_keywords },
    TSLabel =           { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },
    TSMethod =          { fg = scheme.Aqua,       bg = scheme.none, scheme.none },
    TSNumber =          { fg = scheme.Red,        bg = scheme.none, scheme.none },
    TSOperator =        { fg = scheme.White,      bg = scheme.none, scheme.none },
    TSParameter =       { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    TSProperty =        { fg = scheme.DarkCyan,   bg = scheme.none, scheme.none },
    TSPunctBracket =    { fg = scheme.White,      bg = scheme.none, scheme.none },
    TSString =          { fg = scheme.Green,      bg = scheme.none, scheme.none },
    TSStringEscape =    { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSStringRegex =     { fg = scheme.Red,        bg = scheme.none, scheme.none },
    TSStructure =       { fg = scheme.Purple,     bg = scheme.none, scheme.none },
    TSTagDelimiter =    { fg = scheme.Green,      bg = scheme.none, scheme.none },
    TSType =            { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    TSTypeBuiltin =     { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    TSVariable =        { fg = scheme.Cyan,       bg = scheme.none, style = opts.st_variables },
    TSVariableBuiltin = { fg = scheme.Orange,     bg = scheme.none, scheme.none },

    -- Treesitter rainbow
    rainbowcol1 = { fg = scheme.Red,    bg = scheme.none, scheme.none },
    rainbowcol2 = { fg = scheme.Cyan,   bg = scheme.none, scheme.none },
    rainbowcol3 = { fg = scheme.Purple, bg = scheme.none, scheme.none },
    rainbowcol4 = { fg = scheme.Yellow, bg = scheme.none, scheme.none },
    rainbowcol5 = { fg = scheme.Aqua,   bg = scheme.none, scheme.none },
    rainbowcol6 = { fg = scheme.Orange, bg = scheme.none, scheme.none },
    rainbowcol7 = { fg = scheme.Green,  bg = scheme.none, scheme.none },

    -- Lspsaga
    LspSagaDefPreviewBorder =   { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    LspSagaHoverBorder =        { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    LspSagaRenameBorder =       { fg = scheme.Green,      bg = scheme.none, scheme.none },
    LspSagaRenamePromptPrefix = { fg = scheme.Green,      bg = scheme.none, scheme.none },

    -- Lsp trouble
    LspTroubleCount =  { fg = scheme.Black, bg = scheme.DarkOrange, scheme.none },
    LspTroubleNormal = { fg = scheme.White, bg = scheme.Background, scheme.none },
    LspTroubleText =   { fg = scheme.White, bg = scheme.none,       scheme.none },

    -- Lsp colors
    LspDiagnosticsDefaultError =           { fg = scheme.DarkRed,     bg = scheme.none,      scheme.none },
    LspDiagnosticsDefaultHint =            { fg = scheme.Custom_2,    bg = scheme.none,      scheme.none },
    LspDiagnosticsDefaultInformation =     { fg = scheme.Cyan,        bg = scheme.none,      scheme.none },
    LspDiagnosticsDefaultWarning =         { fg = scheme.DarkOrange,  bg = scheme.none,      scheme.none },
    LspDiagnosticsFloatingError =          { fg = scheme.DarkRed,     bg = scheme.none,      style = "underline" },
    LspDiagnosticsFloatingHint =           { fg = scheme.Custom_2,    bg = scheme.none,      style = "underline" },
    LspDiagnosticsFloatingInformation =    { fg = scheme.Custom_3,    bg = scheme.none,      style = "underline" },
    LspDiagnosticsFloatingWarning =        { fg = scheme.DarkOrange,  bg = scheme.none,      style = "underline" },
    LspDiagnosticsSignError =              { fg = scheme.DarkRed,     bg = scheme.none,      scheme.none },
    LspDiagnosticsSignHint =               { fg = scheme.Custom_2,    bg = scheme.none,      scheme.none },
    LspDiagnosticsSignInformation =        { fg = scheme.Custom_3,    bg = scheme.none,      scheme.none },
    LspDiagnosticsSignWarning =            { fg = scheme.DarkOrange,  bg = scheme.none,      scheme.none },
    LspDiagnosticsUnderlineError =         { fg = scheme.none,        bg = scheme.none,      style = "underline" },
    LspDiagnosticsUnderlineHint =          { fg = scheme.none,        bg = scheme.none,      style = "underline" },
    LspDiagnosticsUnderlineInformation =   { fg = scheme.none,        bg = scheme.none,      style = "underline" },
    LspDiagnosticsUnderlineWarning =       { fg = scheme.none,        bg = scheme.none,      style = "underline" },
    LspDiagnosticsVirtualTextError =       { fg = scheme.DarkRed,     bg = scheme.none,      scheme.none },
    LspDiagnosticsVirtualTextHint =        { fg = scheme.Custom_2,    bg = scheme.none,      scheme.none },
    LspDiagnosticsVirtualTextInformation = { fg = scheme.Custom_3,    bg = scheme.none,      scheme.none },
    LspDiagnosticsVirtualTextWarning =     { fg = scheme.DarkOrange,  bg = scheme.none,      scheme.none },
    LspReferenceRead =                     { fg = scheme.none,        bg = scheme.LightGrey, scheme.none },
    LspReferenceText =                     { fg = scheme.none,        bg = scheme.LightGrey, scheme.none },
    LspReferenceWrite =                    { fg = scheme.none,        bg = scheme.LightGrey, scheme.none },

    -- Nvim 0.6.x LSP
    DiagnosticFloatingWarn     = { fg = scheme.DarkOrange, bg = scheme.none, style = "underline" },
    DiagnosticSignWarn         = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    DiagnosticUnderlineWarn    = { fg = scheme.none,       bg = scheme.none, style = "underline" },
    DiagnosticVirtualTextWarn  = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },

    DiagnosticFloatingError    = { fg = scheme.DarkRed,    bg = scheme.none, style = "underline" },
    DiagnosticSignError        = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    DiagnosticUnderlineError   = { fg = scheme.none,       bg = scheme.none, style = "underline" },
    DiagnosticVirtualTextError = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },

    DiagnosticFloatingInfo     = { fg = scheme.Custom_3,   bg = scheme.none, style = "underline" },
    DiagnosticSignInfo         = { fg = scheme.Custom_3,   bg = scheme.none, scheme.none },
    DiagnosticUnderlineInfo    = { fg = scheme.none,       bg = scheme.none, style = "underline" },
    DiagnosticVirtualTextInfo  = { fg = scheme.Custom_3,   bg = scheme.none, scheme.none },

    DiagnosticFloatingHint     = { fg = scheme.Custom_2,   bg = scheme.none, style = "underline" },
    DiagnosticSignHint         = { fg = scheme.Custom_2,   bg = scheme.none, scheme.none },
    DiagnosticUnderlineHint    = { fg = scheme.none,       bg = scheme.none, style = "underline" },
    DiagnosticVirtualTextHint  = { fg = scheme.Custom_2,   bg = scheme.none, scheme.none },

    -- Telescope
    TelescopeBorder =         { fg = scheme.DarkOrange,  bg = scheme.none, scheme.none },
    TelescopeMatching =       { fg = scheme.Yellow,      bg = scheme.none, scheme.none },
    TelescopeMultiSelection = { fg = scheme.LightGrey,   bg = scheme.none, scheme.none },
    TelescopeNormal =         { fg = scheme.White,       bg = scheme.none, scheme.none },
    TelescopePreviewBorder =  { fg = scheme.DarkMagenta, bg = scheme.none, scheme.none },
    TelescopePrompt =         { fg = scheme.Red,         bg = scheme.none, scheme.none },
    TelescopePromptBorder =   { fg = scheme.DarkBlue,    bg = scheme.none, scheme.none },
    TelescopePromptPrefix =   { fg = scheme.Red,         bg = scheme.none, scheme.none },
    TelescopeResultsBorder =  { fg = scheme.DarkOrange,  bg = scheme.none, scheme.none },
    TelescopeSelection =      { fg = scheme.White,       bg = scheme.Grey, style = "bold" },
    TelescopeSelectionCaret = { fg = scheme.Red,         bg = scheme.none, scheme.none },

    -- Nvim tree
    NvimTreeEmptyFolderName = { fg = scheme.DarkGrey_2, bg = scheme.none, scheme.none },
    NvimTreeExecFile =        { fg = scheme.Green,      bg = scheme.none, scheme.none },
    NvimTreeFolderIcon =      { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    NvimTreeFolderName =      { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    NvimTreeImageFile =       { fg = scheme.Pink,       bg = scheme.none, scheme.none },
    NvimTreeIndentMarker =    { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    NvimTreeRootFolder =      { fg = scheme.Purple,     bg = scheme.none, scheme.none },

    -- Startify
    StartifyBracket = { fg = scheme.Red,        bg = scheme.none, scheme.none },
    StartifyNumber =  { fg = scheme.Pink,       bg = scheme.none, scheme.none },
    startifyfile =    { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    startifyheader =  { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    startifypath =    { fg = scheme.Green,      bg = scheme.none, scheme.none },
    startifyslash =   { fg = scheme.Blue,       bg = scheme.none, scheme.none },

    -- Neogit
    NeogitBranch =               { fg = scheme.Yellow,    bg = scheme.none,       scheme.none },
    NeogitDiffAddHighlight =     { fg = scheme.DarkGreen, bg = scheme.LightGrey,  scheme.none },
    NeogitDiffContextHighlight = { fg = scheme.Orange,    bg = scheme.LightGrey,  scheme.none },
    NeogitDiffDeleteHighlight =  { fg = scheme.DarkRed,   bg = scheme.LightGrey,  scheme.none },
    NeogitHunkHeader =           { fg = scheme.White,     bg = scheme.Background, scheme.none },
    NeogitHunkHeaderHighlight =  { fg = scheme.Blue,      bg = scheme.LightGrey,  scheme.none },
    NeogitObjectId =             { fg = scheme.Purple,    bg = scheme.none,       scheme.none },
    NeogitRemote =               { fg = scheme.Yellow,    bg = scheme.none,       scheme.none },

    -- Gitgutter
    GitGutterAdd =    { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitGutterChange = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitGutterDelete = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },

    -- GitSigns
    GitSignsAdd =      { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitSignsAddLn =    { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitSignsAddNr =    { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitSignsChange =   { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitSignsChangeLn = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitSignsChangeNr = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitSignsDelete =   { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    GitSignsDeleteLn = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    GitSignsDeleteNr = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },

    -- Whichkey
    WhichKey =          { fg = scheme.DarkBlue,   bg = scheme.none, scheme.none },
    WhichKeyDesc =      { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    WhichKeyGroup =     { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    WhichKeySeperator = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },

    -- Sneak
    Sneak =      { fg = scheme.background, bg = scheme.DarkOrange, scheme.none },
    SneakScope = { fg = scheme.none,       bg = scheme.none,       syle = "reverse" },

    -- Dashboard
    DashboardCenter =   { fg = scheme.Green,      bg = scheme.none, scheme.none },
    DashboardFooter =   { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    DashboardHeader =   { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    DashboardShortCut = { fg = scheme.Purple,     bg = scheme.none, scheme.none },

    -- Illuminate
    illuminatedCurWord = { fg = scheme.none, bg = scheme.Grey, scheme.none },
    illuminatedWord =    { fg = scheme.none, bg = scheme.Grey, scheme.none },

    -- Indent blankline
    IndentBlanklineChar =        { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    IndentBlanklineContextChar = { fg = scheme.White,    bg = scheme.none, scheme.none },

    -- Nvim dap
    DapBreakpoint = { fg = scheme.DarkRed,   bg = scheme.none, scheme.none },
    DapStopped =    { fg = scheme.DarkGreen, bg = scheme.none, scheme.none },

    -- Hop
    HopNextKey   = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    HopNextKey1  = { fg = scheme.Purple,     bg = scheme.none, scheme.none },
    HopNextKey2  = { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    HopUnmatched = { fg = scheme.DarkGrey,   bg = scheme.none, scheme.none },

    -- Nvimcmp
    CmpItemKind =            { fg = scheme.Yellow, bg = scheme.none, scheme.none },
    CmpItemAbbrDeprecated =  { fg = scheme.DarkGrey_2, bg = scheme.none, scheme.none },
    CmpItemAbbrMatch =       { fg = scheme.Blue,    bg = scheme.none, style = "bold" },
  }

  if opts.term_colors == false then
    terminal_colors(scheme)
  end

  return editor
end

return setup
