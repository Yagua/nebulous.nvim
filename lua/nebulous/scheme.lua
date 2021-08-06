local scheme = require("nebulous.colors")
local opts = require("nebulous.config")
local setup = {}
local g = vim.g

---Color table for the editor
--@return syntax table: table with the groups and its respective colors
function setup.load_editor()
  ---------------------
  --  EDITOR COLORS  --
  ---------------------
  local syntax = {
    String =           { fg = scheme.Green,      bg = scheme.none,       style = "italic" },
    Delimiter =        { fg = scheme.Green,      bg = scheme.none,       scheme.none },
    Character =        { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    Constant =         { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    Boolean =          { fg = scheme.DarkYellow, bg = scheme.none,       scheme.none },
    Number =           { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    Float =            { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    Tag =              { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    DiffText =         { fg = scheme.Yellow,     bg = scheme.none,       style = "reverse" },
    Label =            { fg = scheme.DarkYellow, bg = scheme.none,       scheme.none },
    PreProc =          { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    Type =             { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    StorageClass =     { fg = scheme.Yellow,     bg = scheme.none,       scheme.none  },
    Special =          { fg = scheme.Yellow,     bg = scheme.none,       style = "italic" },
    Todo =             { fg = scheme.DarkYellow, bg = scheme.none,       style = "bold,italic" },
    Identifier =       { fg = scheme.Cyan,       bg = scheme.none,       style = opts.config.st_variables },
    Function =         { fg = scheme.Aqua,       bg = scheme.none,       style = opts.config.st_functions },
    Include =          { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    SpecialChar =      { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    Underlined =       { fg = scheme.Blue,       bg = scheme.none,       syle = "underline" },
    Conceal =          { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    Statement =        { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Repeat =           { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Structure =        { fg = scheme.Purple,     bg = scheme.none,       style = opts.config.st_keywords },
    Define =           { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Operator =         { fg = scheme.White,      bg = scheme.none,       scheme.none },
    Keyword =          { fg = scheme.Red,        bg = scheme.none,       style = opts.config.st_keywords },
    Macro =            { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Typedef =          { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Comment =          { fg = scheme.DarkGrey,   bg = scheme.none,       style = opts.config.st_comments },
    Ignore =           { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Error =            { fg = scheme.DarkRed,    bg = scheme.none,       style = "bold,underline" },
    Debug =            { fg = scheme.DarkRed,    bg = scheme.none,       scheme.none },
    Exception =        { fg = scheme.DarkRed,    bg = scheme.none,       scheme.none },
    ColorColumn =      { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    Cursor =           { fg = scheme.none,       bg = scheme.Orange,     scheme.none },
    CursorIM =         { fg = scheme.none,       bg = scheme.none,       scheme.none },
    CursorColumn =     { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    CursorLineNr =     { fg = scheme.White,      bg = scheme.LightGrey,  scheme.none },
    CursorLine =       { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    Folded =           { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    FoldColumn =       { fg = scheme.Grey,       bg = scheme.DarkGrey,   scheme.none },
    SignColumn =       { fg = scheme.none,       bg = scheme.none,       scheme.none },
    IncSearch =        { fg = scheme.Black,      bg = scheme.DarkCyan,   scheme.none },
    PMenu =            { fg = scheme.none,       bg = scheme.LightGrey,  scheme.none },
    PMenuSel =         { fg = scheme.Black,      bg = scheme.Orange,     scheme.none },
    PMenuSbar =        { fg = scheme.none,       bg = scheme.Grey,       scheme.none },
    PMenuThumb =       { fg = scheme.none,       bg = scheme.Yellow,     scheme.none },
    Directory =        { fg = scheme.Blue,       bg = scheme.none,       style = "bold" },
    DiffAdd =          { fg = scheme.Green,      bg = scheme.none,       style = "reverse" },
    DiffChange =       { fg = scheme.Orange,     bg = scheme.none,       style = "reverse" },
    StatusLine =       { fg = scheme.White,      bg = scheme.Grey,       scheme.none },
    StatusLineNC =     { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    DiffDelete =       { fg = scheme.Red,        bg = scheme.none,       style = "reverse" },
    WarningMsg =       { fg = scheme.DarkRed,    bg = scheme.none,       scheme.none },
    Warnings =         { fg = scheme.Orange,     bg = scheme.none,       style = "reverse" },
    WildMenu =         { fg = scheme.Orange,     bg = scheme.Black,      style = "bold" },
    EndOfBuffer =      { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    ErrorMsg =         { fg = scheme.DarkRed,    bg = scheme.none,       scheme.none },
    VertSplit =        { fg = scheme.Pink,       bg = scheme.none,       scheme.none },
    LineNr =           { fg = scheme.DarkGrey,   bg = scheme.none,       scheme.none },
    MatchParen =       { fg = scheme.Cyan,       bg = scheme.none,       style = "bold" },
    odeMsg =           { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    NonText =          { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    Normal =           { fg = scheme.White,      bg = opts.config.st_disable_bg or scheme.background, scheme.none },
    NormalFloat =      { fg = scheme.White,      bg = scheme.LightGrey,  scheme.none },
    Question =         { fg = scheme.DarkCyan,   bg = scheme.none,       style = "bold" },
    qfLineNr =         { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    Search =           { fg = scheme.Black,      bg = scheme.Yellow,     scheme.none },
    SpecialKey =       { fg = scheme.Purple,     bg = scheme.none,       style = "bold" },
    Title =            { fg = scheme.White,      bg = scheme.none,       style = "bold" },
    Visual =           { fg = scheme.none,       bg = scheme.none,       style = "reverse" },
    VisualNOS =        { fg = scheme.none,       bg = scheme.none,       style = "reverse"},
    StatusLineTerm =   { fg = scheme.Black,      bg = scheme.Green,      scheme.none },
    StatusLineTermNC = { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    Conditional =      { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    QuickFixLine =     { fg = scheme.Black,      bg = scheme.Yellow,     scheme.none },
    TabLineFill =      { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    TabLineSel =       { fg = scheme.Black,      bg = scheme.DarkCyan,   scheme.none },
    TabLine =          { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
  }

  return syntax
end

---Color table for the languages
--@return syntax table: table with the groups and its respective colors
function setup.load_langs()
  ---------------------
  -- LANGUAGE COLORS --
  ---------------------
  local syntax = {
    ---------
    -- GIT --
    ---------
    gitcommitComment =        { fg = scheme.Grey,   bg = scheme.none,  scheme.none },
    SignifySignAdd =          { fg = scheme.Green,  bg = scheme.none,  scheme.none },
    SignifySignChange =       { fg = scheme.Yellow, bg = scheme.none,  scheme.none },
    SignifySignDelete =       { fg = scheme.Red,    bg = scheme.none,  scheme.none },
    gitcommitDiscardedType =  { fg = scheme.Red,    bg = scheme.none,  scheme.none },
    gitcommitSelectedType =   { fg = scheme.Green,  bg = scheme.none,  scheme.none },
    gitcommitHeader =         { fg = scheme.none,   bg = scheme.none,  scheme.none },
    gitcommitUntrackedFile =  { fg = scheme.Cyan,   bg = scheme.none,  scheme.none },
    gitcommitDiscardedFile =  { fg = scheme.Red,    bg = scheme.none,  scheme.none },
    gitcommitUnmerged =       { fg = scheme.Green,  bg = scheme.none,  scheme.none },
    gitcommitOnBranch =       { fg = scheme.none,   bg = scheme.none,  scheme.none },
    gitcommitBranch =         { fg = scheme.Purple, bg = scheme.none,  scheme.none },
    gitcommitSelectedFile =   { fg = scheme.Green,  bg = scheme.none,  scheme.none },
    gitcommitUnmergedFile =   { fg = scheme.Yellow, bg = scheme.none,  scheme.none },

    ----------
    -- DIFF --
    ----------
    diffAdded =   { fg = scheme.Green,  bg = scheme.none, scheme.none },
    diffFile =    { fg = scheme.Orange, bg = scheme.none, scheme.none },
    diffNewFile = { fg = scheme.Yellow, bg = scheme.none, scheme.none },
    diffChanged = { fg = scheme.Cyan,   bg = scheme.none, scheme.none },
    diffRemoved = { fg = scheme.Red,    bg = scheme.none, scheme.none },
    diffLine =    { fg = scheme.Blue,   bg = scheme.none, scheme.none },

    --------------
    -- MARKDOWN --
    --------------
    markdownUrl =               { fg = scheme.Purple,     bg = scheme.none, scheme.none },
    markdownH1 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH2 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH3 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH4 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH5 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownH6 =                { fg = scheme.Red,        bg = scheme.none, scheme.none },
    markdownItalic =            { fg = scheme.Orange,     bg = scheme.none, style = "bold" },
    markdownBold =              { fg = scheme.Orange,     bg = scheme.none, style = "bold" },
    markdownListMarker =        { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },
    markdownCode =              { fg = scheme.Green,      bg = scheme.none, scheme.none },
    markdownCodeBlock =         { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    markdownCodeDelimiter =     { fg = scheme.Green,      bg = scheme.none, scheme.none },
    markdownRule =              { fg = scheme.Grey,       bg = scheme.none, scheme.none },
    markdownHeadingRule =       { fg = scheme.Grey,       bg = scheme.none, scheme.none },
    markdownUrlDelimiter =      { fg = scheme.DarkGrey,   bg = scheme.none, scheme.none },
    markdownLinkDelimiter =     { fg = scheme.DarkGrey,   bg = scheme.none, scheme.none },
    markdownLinkTextDelimiter = { fg = scheme.DarkGrey,   bg = scheme.none, scheme.none },
    markdownUrlTitleDelimiter = { fg = scheme.Green,      bg = scheme.none, scheme.none },
    markdownHeadingDelimiter =  { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    markdownOrderedListMarker = { fg = scheme.Grey,       bg = scheme.none, scheme.none },

    ----------
    -- HTML --
    ----------
    htmlSpecialTagName = { fg = scheme.Red,      bg = scheme.none, scheme.none },
    htmlArg =            { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    htmlTagName =        { fg = scheme.Red,      bg = scheme.none, scheme.none },
    htmlTagN =           { fg = scheme.Red,      bg = scheme.none, scheme.none },
    htmlEndTag =         { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    htmlTag =            { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    MatchTag =           { fg = scheme.Red,      bg = scheme.none, style = "bold,underline" },

    -----------
    --  XML  --
    -----------
    xmlTag =             { fg = scheme.Red,    bg = scheme.none, scheme.none },
    xmlEndTag =          { fg = scheme.Red,    bg = scheme.none, scheme.none },
    xmlTagName =         { fg = scheme.Red,    bg = scheme.none, scheme.none },
    xmlAttrib =          { fg = scheme.Yellow, bg = scheme.none, scheme.none },
    xmlEqual =           { fg = scheme.Red,    bg = scheme.none, scheme.none },
    docbkKeyword =       { fg = scheme.Cyan,   bg = scheme.none, style = "bold" },
    xmlDocTypeDecl =     { fg = scheme.Grey,   bg = scheme.none, scheme.none },
    xmlDocTypeKeyword =  { fg = scheme.Purple, bg = scheme.none, scheme.none },
    xmlCdataStart =      { fg = scheme.Grey,   bg = scheme.none, scheme.none },
    xmlCdataCdata =      { fg = scheme.Purple, bg = scheme.none, scheme.none },
    xmlProcessingDelim = { fg = scheme.Grey,   bg = scheme.none, scheme.none },
    xmlAttribPunct =     { fg = scheme.Grey,   bg = scheme.none, scheme.none },
    xmlEntity =          { fg = scheme.Orange, bg = scheme.none, scheme.none },
    xmlEntityPunct =     { fg = scheme.Orange, bg = scheme.none, scheme.none },

    ---------
    -- PUG --
    ---------
    pugDocType =             { fg = scheme.Grey,    bg = scheme.none, style = "italic" },
    pugClass =               { fg = scheme.Orange,  bg = scheme.none, scheme.none },
    pugTag =                 { fg = scheme.Red,     bg = scheme.none, scheme.none },
    pugAttributesDelimiter = { fg = scheme.Orange,  bg = scheme.none, scheme.none },

    ---------
    -- CSS --
    ---------
    cssFontAttr =          { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    cssAttrComma =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cssIdentifier =        { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cssImportant =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cssInclude =           { fg = scheme.White,    bg = scheme.none, scheme.none },
    cssIncludeKeyword =    { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cssMediaType =         { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    cssProp =              { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    cssAttributeSelector = { fg = scheme.Green,    bg = scheme.none, scheme.none },
    cssBraces =            { fg = scheme.White,    bg = scheme.none, scheme.none },
    cssClassName =         { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    cssClassNameDot =      { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    cssDefinition =        { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cssFontDescriptor =    { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cssFunctionName =      { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cssPseudoClassId =     { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    cssSelectorOp =        { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cssSelectorOp2 =       { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cssStringQ =           { fg = scheme.Green,    bg = scheme.none, scheme.none },
    cssStringQQ =          { fg = scheme.Green,    bg = scheme.none, scheme.none },
    cssTagName =           { fg = scheme.Red,      bg = scheme.none, scheme.none },
    cssAttr =              { fg = scheme.Orange,   bg = scheme.none, scheme.none },

    ----------
    -- SASS --
    ----------
    sassId =             { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    sassInclude =        { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    sassMedia =          { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    sassMediaOperators = { fg = scheme.White,    bg = scheme.none, scheme.none },
    sassMixin =          { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    sassMixinName =      { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    sassMixing =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    sassAmpersand =      { fg = scheme.Red,      bg = scheme.none, scheme.none },
    sassClass =          { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    sassControl =        { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    sassExtend =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    sassFor =            { fg = scheme.White,    bg = scheme.none, scheme.none },
    sassProperty =       { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    sassFunction =       { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    scssSelectorName =   { fg = scheme.Yellow,   bg = scheme.none, scheme.none },

    ----------------
    -- JAVASCRIPT --
    ----------------
    jsClassKeyword =                  { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsExtendsKeyword =                { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsGlobalNodeObjects =             { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsGlobalObjects =                 { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsFunction =                      { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    jsObjectProp =                    { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    jsUndefined =                     { fg = scheme.DarkRed,  bg = scheme.none, scheme.none },
    jsObjectBraces =                  { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    javascriptDocTags =               { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    javascriptDocNotation =           { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    javascriptDocParamType =          { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    javascriptDocNamedParamType =     { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    javascriptDocParamName =          { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    javaScriptParens =                { fg = scheme.White,    bg = scheme.none, scheme.none },
    jsClassDefinition =               { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    javascriptArrowFunc =             { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    javascriptClassName =             { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    javascriptClassSuperName =        { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    javascriptGlobal =                { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    jsFuncArgs =                      { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    jsExportDefault =                 { fg = scheme.Blue,     bg = scheme.none, style = "bold" },
    jsObjectKey =                     { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    jsFunctionKey =                   { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    javascriptCacheMethod =           { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptDateMethod =            { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptMathStaticMethod =      { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptURLUtilsProp =          { fg = scheme.White,    bg = scheme.none, scheme.none },
    jsFuncBraces =                    { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    jsClassBlock =                    { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    jsStorageClass =                  { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    jsxRegion =                       { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    javaScriptMember =                { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    jsObjectValue =                   { fg = scheme.Green,    bg = scheme.none, scheme.none },
    javaScriptIdentifier =            { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsParens =                        { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptAsyncFuncKeyword =      { fg = scheme.Red,      bg = scheme.none, style = "bold" },
    jsBracket =                       { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsObjectColon =                   { fg = scheme.Red,      bg = scheme.none, scheme.none },
    javascriptAwaitFuncKeyword =      { fg = scheme.Red,      bg = scheme.none, style = "bold" },
    javascriptOperator =              { fg = scheme.Red,      bg = scheme.none, scheme.none },
    javascriptForOperator =           { fg = scheme.Red,      bg = scheme.none, scheme.none },
    javascriptYield =                 { fg = scheme.Red,      bg = scheme.none, scheme.none },
    javascriptExceptions =            { fg = scheme.DarkRed,  bg = scheme.none, scheme.none },
    javascriptMessage =               { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsFutureKeys =                    { fg = scheme.Orange,   bg = scheme.none, style = "bold" },
    jsFuncParens =                    { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    javascriptVariable =              { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    javascriptHeadersMethod =         { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptObjectLabel =           { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptPropertyName =          { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptLogicSymbols =          { fg = scheme.White,    bg = scheme.none, scheme.none },
    jsVariableDef =                   { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptGlobalMethod =          { fg = scheme.White,    bg = scheme.none, scheme.none },
    javaScriptBraces =                { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptNodeGlobal =            { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptBOMWindowProp =         { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptArrayMethod =           { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptArrayStaticMethod =     { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptIdentifier =            { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    javascriptClassSuper =            { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    javascriptClassStatic =           { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    javaScriptNumber =                { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    javaScriptNull =                  { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    jsNull =                          { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    javascriptImport =                { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptTemplateSB =            { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    jsTemplateBraces =                { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptFuncKeyword =           { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptEndColons =             { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptFuncArg =               { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptLabel =                 { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptBrackets =              { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptTemplateSubstitution =  { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptStringMethod =          { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptBOMWindowMethod =       { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptAsyncFunc =             { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptClassKeyword =          { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptClassExtends =          { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptDefault =               { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javaScriptFunction =              { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptExport =                { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    javascriptDOMElemAttrs =          { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptDOMEventMethod =        { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptDOMNodeMethod =         { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptDOMStorageMethod =      { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptBOMNavigatorProp =      { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptDOMDocMethod =          { fg = scheme.White,    bg = scheme.none, scheme.none },
    javascriptDOMDocProp =            { fg = scheme.White,    bg = scheme.none, scheme.none },

    ----------------
    -- TYPESCRIPT --
    ----------------
    typeScriptDocParam =               { fg = scheme.DarkGrey,   bg = scheme.none, scheme.none },
    typeScriptDocTags =                { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    typeScriptGlobalObjects =          { fg = scheme.Red,        bg = scheme.none, scheme.none },
    typeScriptFuncKeyword =            { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    typeScriptIdentifier =             { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    typeScriptBraces =                 { fg = scheme.Red,        bg = scheme.none, scheme.none },
    typeScriptEndColons =              { fg = scheme.White,      bg = scheme.none, scheme.none },
    typeScriptDOMObjects =             { fg = scheme.White,      bg = scheme.none, scheme.none },
    typeScriptParens =                 { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    typeScriptOpSymbols =              { fg = scheme.White,      bg = scheme.none, scheme.none },
    typeScriptHtmlElemProperties =     { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    typeScriptNull =                   { fg = scheme.Purple,     bg = scheme.none, style = "bold" },
    typeScriptInterpolationDelimiter = { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    typeScriptReserved =               { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    typeScriptLabel =                  { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },
    typeScriptAjaxMethods =            { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    typeScriptLogicSymbols =           { fg = scheme.White,      bg = scheme.none, scheme.none },
    typeScriptDocSeeTag =              { fg = scheme.DarkGrey,   bg = scheme.none, scheme.none },

    ----------
    -- JSON --
    ----------
    jsonKeyword =            { fg = scheme.Red,      bg = scheme.none, scheme.none },
    jsonNumber =             { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    jsonStringSQError =      { fg = scheme.Red,      bg = scheme.none, syle = "reverse" },
    jsonNumError =           { fg = scheme.Red,      bg = scheme.none, syle = "reverse" },
    jsonQuote =              { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    jsonTrailingCommaError = { fg = scheme.Red,      bg = scheme.none, syle = "reverse" },
    jsonMissingCommaError =  { fg = scheme.Red,      bg = scheme.none, syle = "reverse" },
    jsonNoQuotesError =      { fg = scheme.Red,      bg = scheme.none, syle = "reverse" },
    jsonString =             { fg = scheme.Green,    bg = scheme.none, scheme.none },
    jsonBoolean =            { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    jsonCommentError =       { fg = scheme.White,    bg = scheme.none, scheme.none },
    jsonSemicolonError =     { fg = scheme.Red,      bg = scheme.none, syle = "reverse" },

    -------------
    -- CLOJURE --
    -------------
    clojureFunc =             { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    clojureRepeat =           { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    clojureParen =            { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    clojureAnonArg =          { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    clojureKeyword =          { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    clojureCond =             { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    clojureSpecial =          { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    clojureRegexpCharClass =  { fg = scheme.DarkGrey, bg = scheme.none, style = "bold" },
    clojureMeta =             { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    clojureDeref =            { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    clojureQuote =            { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    clojureDefine =           { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    clojureVariable =         { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    clojureMacro =            { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    clojureCharacter =        { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    clojureStringEscape =     { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    clojureException =        { fg = scheme.Red,      bg = scheme.none, scheme.none },
    clojureRegexp =           { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    clojureRegexpEscape =     { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    clojureUnquote =          { fg = scheme.Yellow,   bg = scheme.none, scheme.none },

    -------------
    -- HASKELL --
    -------------
    haskellDeclKeyword =    { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    haskellType =           { fg = scheme.Green,    bg = scheme.none, scheme.none },
    haskellWhere =          { fg = scheme.Red,      bg = scheme.none, scheme.none },
    haskellImportKeywords = { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    haskellOperators =      { fg = scheme.Red,      bg = scheme.none, scheme.none },
    haskellDelimiter =      { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    haskellIdentifier =     { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    haskellKeyword =        { fg = scheme.Red,      bg = scheme.none, scheme.none },
    haskellNumber =         { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    haskellString =         { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    haskellBacktick =       { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    haskellDeriving =       { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    haskellAssocType =      { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    haskellPragma =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    haskellChar =           { fg = scheme.Green,    bg = scheme.none, scheme.none },
    haskellStatement =      { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    haskellBottom =         { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    haskellBlockKeywords =  { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    haskellConditional =    { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    haskellLet =            { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    haskellDefault =        { fg = scheme.Cyan,     bg = scheme.none, scheme.none },

    ---------
    -- PHP --
    ---------
    phpClass =        { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    phpFunction =     { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    phpFunctions =    { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    phpInclude =      { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    phpKeyword =      { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    phpParent =       { fg = scheme.White,    bg = scheme.none, scheme.none },
    phpType =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    phpSuperGlobals = { fg = scheme.Red,      bg = scheme.none, scheme.none },

    ----------
    -- RUST --
    ----------
    rustCommentLineDocError =  { fg = scheme.Grey,     bg = scheme.none, scheme.none },
    rustCommentBlock =         { fg = scheme.Grey,     bg = scheme.none, scheme.none },
    rustDeriveTrait =          { fg = scheme.Green,    bg = scheme.none, scheme.none },
    SpecialComment =           { fg = scheme.Grey,     bg = scheme.none, scheme.none },
    rustCommentLine =          { fg = scheme.Grey,     bg = scheme.none, scheme.none },
    rustCommentBlockDoc =      { fg = scheme.Grey,     bg = scheme.none, scheme.none },
    rustExternCrate =          { fg = scheme.Red,      bg = scheme.none, style = "bold" },
    rustIdentifier =           { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    rustCommentLineDoc =       { fg = scheme.Grey,     bg = scheme.none, scheme.none },
    rustCommentBlockDocError = { fg = scheme.Grey,     bg = scheme.none, scheme.none },

    -----------
    -- C/C++ --
    -----------
    cType =             { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cStorageClass =     { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cStructure =        { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    cInclude =          { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cppStructure =      { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cppModifier =       { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cppOperator =       { fg = scheme.Pink,     bg = scheme.none, scheme.none },
    cppAccess =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cppStatement =      { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cppConstant =       { fg = scheme.Red,      bg = scheme.none, scheme.none },
    cTODO =             { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cConstant =         { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    cSpecial =          { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    cSpecialCharacter = { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    cString =           { fg = scheme.Green,    bg = scheme.none, scheme.none },
    cppType =           { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cppStorageClass =   { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cPreCondit =        { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cPreConditMatch =   { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cOperator =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cStatement =        { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    cCppString =        { fg = scheme.Green,    bg = scheme.none, scheme.none },

    --------
    -- C# --
    --------
    csBraces =                 { fg = scheme.White, bg = scheme.none, scheme.none },
    csEndColon =               { fg = scheme.White, bg = scheme.none, scheme.none },
    csLogicSymbols =           { fg = scheme.White, bg = scheme.none, scheme.none },
    csParens =                 { fg = scheme.White, bg = scheme.none, scheme.none },
    csOpSymbols =              { fg = scheme.Grey,  bg = scheme.none, scheme.none },
    csInterpolationDelimiter = { fg = scheme.Grey,  bg = scheme.none, scheme.none },
    csInterpolationAlignDel =  { fg = scheme.Grey,  bg = scheme.none, syle = "bold" },
    csInterpolationFormat =    { fg = scheme.Grey,  bg = scheme.none, scheme.none },
    csInterpolationFormatDel = { fg = scheme.Grey,  bg = scheme.none, syle = "bold" },

    --------------
    -- CUCUMBER --
    --------------
    cucumberThenAnd =         { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cucumberFeature =         { fg = scheme.Red,      bg = scheme.none, syle = "bold" },
    cucumberScenarioOutline = { fg = scheme.Purple,   bg = scheme.none, syle = "bold" },
    cucumberThen =            { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cucumberUnparsed =        { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    cucumberGiven =           { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cucumberWhenAnd =         { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cucumberBackground =      { fg = scheme.Purple,   bg = scheme.none, syle = "bold" },
    cucumberScenario =        { fg = scheme.Purple,   bg = scheme.none, syle = "bold" },
    cucumberWhen =            { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    cucumberTags =            { fg = scheme.Grey,     bg = scheme.none, syle = "bold" },
    cucumberDelimiter =       { fg = scheme.Grey,     bg = scheme.none, syle = "bold" },

    -----------
    -- SPELL --
    -----------
    SpellBad =   { fg = scheme.Red,    bg = scheme.none, style = "italic,undercurl" },
    SpellCap =   { fg = scheme.Blue,   bg = scheme.none, style = "italic,undercurl" },
    SpellLocal = { fg = scheme.Cyan,   bg = scheme.none, style = "italic,undercurl" },
    SpellRare =  { fg = scheme.Purple, bg = scheme.none, style = "italic,undercurl" },

    ------------
    -- ELIXIR --
    ------------
    elixirModuleDeclaration = { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    elixirOperator =          { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    elixirModuleDefine =      { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    elixirDocString =         { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    elixirInclude =           { fg = scheme.Red,      bg = scheme.none, scheme.none },
    elixirAlias =             { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    elixirAtom =              { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    elixirBlockDefinition =   { fg = scheme.Purple,   bg = scheme.none, scheme.none },

    ------------
    -- GOLANG --
    ------------
    goField =        { fg = scheme.Red,    bg = scheme.none, scheme.none },
    goMethod =       { fg = scheme.Cyan,   bg = scheme.none, scheme.none },
    goType =         { fg = scheme.Purple, bg = scheme.none, scheme.none },
    goUnsignedInts = { fg = scheme.Purple, bg = scheme.none, scheme.none },
    goDeclaration =  { fg = scheme.Cyan,   bg = scheme.none, scheme.none },

    ------------
    -- PYTHON --
    ------------
    pythonEscape =           { fg = scheme.Red,       bg = scheme.none, scheme.none },
    pythonSelf =             { fg = scheme.DarkGrey,  bg = scheme.none, style = "italic" },
    pythonSelfArg =          { fg = scheme.LightGrey, bg = scheme.none, style = "italic" },
    pythonImport =           { fg = scheme.Purple,    bg = scheme.none, scheme.none },
    pythonBuiltin =          { fg = scheme.Cyan,      bg = scheme.none, scheme.none },
    pythonModule =           { fg = scheme.Purple,    bg = scheme.none, scheme.none },
    pythonStringDelimiter =  { fg = scheme.Green,     bg = scheme.none, scheme.none },
    pythonParam =            { fg = scheme.Orange,    bg = scheme.none, scheme.none },
    pythonFunction =         { fg = scheme.DarkCyan,  bg = scheme.none, scheme.none },
    pythonKeyword =          { fg = scheme.DarkCyan,  bg = scheme.none, scheme.none },
    pythonStatement =        { fg = scheme.Purple,    bg = scheme.none, scheme.none },
    pythonClass =            { fg = scheme.DarkCyan,  bg = scheme.none, scheme.none },
    pythonOperator =         { fg = scheme.Purple,    bg = scheme.none, scheme.none },
    pythonSymbol =           { fg = scheme.Cyan,      bg = scheme.none, scheme.none },
    pythonBytes =            { fg = scheme.Green,     bg = scheme.none, style = "italic" },
    pythonBytesError =       { fg = scheme.DarkRed,   bg = scheme.none, scheme.none },
    pythonBytesEscapeError = { fg = scheme.DarkRed,   bg = scheme.none, scheme.none },
    pythonBytesEscape =      { fg = scheme.Yellow,    bg = scheme.none, scheme.none },
    pythonRawBytes =         { fg = scheme.Green,     bg = scheme.none, scheme.none },
    pythonBytesContent =     { fg = scheme.Green,     bg = scheme.none, scheme.none },

    ----------------
    -- PURESCRIPT --
    ----------------
    purescriptKeyword =     { fg = scheme.Purple, bg = scheme.none, scheme.none },
    purescriptModuleName =  { fg = scheme.White,  bg = scheme.none, scheme.none },
    purescriptType =        { fg = scheme.Yellow, bg = scheme.none, scheme.none },
    purescriptTypeVar =     { fg = scheme.Red,    bg = scheme.none, scheme.none },
    purescriptIdentifier =  { fg = scheme.White,  bg = scheme.none, scheme.none },
    purescriptConstructor = { fg = scheme.Red,    bg = scheme.none, scheme.none },
    purescriptOperator =    { fg = scheme.White,  bg = scheme.none, scheme.none },

    ---------
    -- VIM --
    ---------
    vimSep =          { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    vimCommentTitle = { fg = scheme.Grey,     bg = scheme.none, syle = "bold" },
    vimLineComment =  { fg = scheme.Grey,     bg = scheme.none, syle = "italic" },
    vimParenSep =     { fg = scheme.White,    bg = scheme.none, scheme.none },
    vimFuncName =     { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    vimHighlight =    { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    vimUserFunc =     { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    vimVar =          { fg = scheme.Red,      bg = scheme.none, scheme.none },
    vimLet =          { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    vimNorm =         { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    vimBracket =      { fg = scheme.White,    bg = scheme.none, scheme.none },
    vimMapModKey =    { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    vimNotation =     { fg = scheme.Orange,   bg = scheme.none, scheme.none },
    vimGroup =        { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    vimContinue =     { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    vimSetSep =       { fg = scheme.DarkGrey, bg = scheme.none, scheme.none },
    vimHiGroup =      { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    vimFunction =     { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    vimFuncSID =      { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    vimCommand =      { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    vimNotFunc =      { fg = scheme.Blue,     bg = scheme.none, scheme.none },
    vimFuncVar =      { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    vimMapLHS =       { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    vimMap =          { fg = scheme.Aqua,     bg = scheme.none, scheme.none },



    ---------
    -- ZSH --
    ---------
    zshSubst =       { fg = scheme.Red,    bg = scheme.none, scheme.none },
    zshCommands =    { fg = scheme.White,  bg = scheme.none, scheme.none },
    zshKeyword =     { fg = scheme.Purple, bg = scheme.none, scheme.none },
    zshTypes =       { fg = scheme.Purple, bg = scheme.none, scheme.none },
    zshDeref =       { fg = scheme.Red,    bg = scheme.none, scheme.none },
    zshShortDeref =  { fg = scheme.Red,    bg = scheme.none, scheme.none },
    zshVariableDef = { fg = scheme.Orange, bg = scheme.none, scheme.none },
    zshSubstDelim =  { fg = scheme.Grey,   bg = scheme.none, scheme.none },
    zshFunction =    { fg = scheme.Cyan,   bg = scheme.none, scheme.none },

    ----------
    -- RUBY --
    ----------
    rubyInstanceVariable =          { fg = scheme.Red,      bg = scheme.none, scheme.none },
    rubyBlockParameterList =        { fg = scheme.Red,      bg = scheme.none, scheme.none },
    rubyRegexp =                    { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    rubyRegexpDelimiter =           { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    rubyStringDelimiter =           { fg = scheme.Green,    bg = scheme.none, scheme.none },
    rubySymbol =                    { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    rubyClass =                     { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    rubyConstant =                  { fg = scheme.Yellow,   bg = scheme.none, scheme.none },
    rubyBlockParameter =            { fg = scheme.Red,      bg = scheme.none, scheme.none },
    rubyEscape =                    { fg = scheme.Red,      bg = scheme.none, scheme.none },
    rubyControl =                   { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    rubyFunction =                  { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    rubyGlobalVariable =            { fg = scheme.Red,      bg = scheme.none, scheme.none },
    rubyCapitalizedMethod =         { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    rubyInclude =                   { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    rubyIncluderubyGlobalVariable = { fg = scheme.Red,      bg = scheme.none, scheme.none },
    rubyBlock =                     { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    rubyInterpolation =             { fg = scheme.Cyan,     bg = scheme.none, scheme.none },
    rubyInterpolationDelimiter =    { fg = scheme.Red,      bg = scheme.none, scheme.none },
    rubyKeyword =                   { fg = scheme.DarkCyan, bg = scheme.none, scheme.none },
    rubyModule =                    { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    rubyDefine =                    { fg = scheme.Purple,   bg = scheme.none, scheme.none },
    rubyPseudoVariable =            { fg = scheme.Red,      bg = scheme.none, scheme.none },

    ----------
    -- JAVA --
    ----------
    javaParen =        { fg = scheme.White,  bg = scheme.none, scheme.none },
    javaOperator =     { fg = scheme.Orange, bg = scheme.none, scheme.none },
    javaVarArg =       { fg = scheme.Green,  bg = scheme.none, scheme.none },
    javaParen1 =       { fg = scheme.White,  bg = scheme.none, scheme.none },
    javaParen2 =       { fg = scheme.White,  bg = scheme.none, scheme.none },
    javaParen3 =       { fg = scheme.White,  bg = scheme.none, scheme.none },
    javaParen4 =       { fg = scheme.White,  bg = scheme.none, scheme.none },
    javaParen5 =       { fg = scheme.White,  bg = scheme.none, scheme.none },
    javaAnnotation =   { fg = scheme.Cyan,   bg = scheme.none, scheme.none },
    javaDocTags =      { fg = scheme.Blue,   bg = scheme.none, scheme.none },
    javaCommentTitle = { fg = scheme.Grey,   bg = scheme.none, scheme.none },

    -----------
    -- OCAML --
    -----------
    ocamlOperator =       { fg = scheme.Grey,   bg = scheme.none, scheme.none },
    ocamlArrow =          { fg = scheme.Orange, bg = scheme.none, scheme.none },
    ocamlKeyChar =        { fg = scheme.Orange, bg = scheme.none, scheme.none },
    ocamlInfixOpKeyword = { fg = scheme.Red,    bg = scheme.none, scheme.none },
    ocamlConstructor =    { fg = scheme.Orange, bg = scheme.none, scheme.none },

    ---------
    -- LUA --
    ---------
    luaFunction =             { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    luaTable =                { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    luaIn =                   { fg = scheme.Red,        bg = scheme.none, scheme.none },
    luaStatement =            { fg = scheme.DarkYellow, bg = scheme.none, style = "bold" },
    luaKeyword =              { fg = scheme.DarkOrange, bg = scheme.none, style = "bold" },
    luaMyKeyword =            { fg = scheme.Violet,     bg = scheme.none, style = "bold" },
    luaFunctionCall =         { fg = scheme.DarkBlue,   bg = scheme.none, scheme.none },
    luaSpecialFunctions =     { fg = scheme.DarkBlue,   bg = scheme.none, scheme.none },
    luaMetatableEvents =      { fg = scheme.Purple,     bg = scheme.none, scheme.none },

    -----------
    -- SCALA --
    -----------
    scalaTypeTypePostDeclaration = { fg = scheme.Yellow, bg = scheme.none, scheme.none },
    scalaInstanceDeclaration =     { fg = scheme.White,  bg = scheme.none, scheme.none },
    scalaInterpolation =           { fg = scheme.Cyan,   bg = scheme.none, scheme.none },
    scalaOperator =                { fg = scheme.White,  bg = scheme.none, scheme.none },
    scalaNameDefinition =          { fg = scheme.White,  bg = scheme.none, scheme.none },
    scalaCaseFollowing =           { fg = scheme.White,  bg = scheme.none, scheme.none },
    scalaCapitalWord =             { fg = scheme.White,  bg = scheme.none, scheme.none },
    scalaTypeExtension =           { fg = scheme.White,  bg = scheme.none, scheme.none },
    scalaKeyword =                 { fg = scheme.Red,    bg = scheme.none, style = "bold" },
    scalaKeywordModifier =         { fg = scheme.Red,    bg = scheme.none, scheme.none },
    scalaSpecial =                 { fg = scheme.Cyan,   bg = scheme.none, scheme.none },
    scalaTypeDeclaration =         { fg = scheme.Yellow, bg = scheme.none, scheme.none },

    -----------
    --  SQL  --
    -----------
    SqlKeyword = { fg = scheme.Red, bg = scheme.none, scheme.none },

  }

  return syntax
end

---Color table for the plugins
--@return syntax table: table with the groups and its respective colors
function setup.load_plugins()
  ---------------------
  --  PLUGIN COLORS  --
  ---------------------
  local syntax = {
    -----------------------
    -- TREESITTER COLORS --
    -----------------------
    TSFloat =           { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSFunction =        { fg = scheme.Aqua,       bg = scheme.none, style = opts.config.st_functions },
    TSType =            { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    TSTypeBuiltin =     { fg = scheme.Yellow,     bg = scheme.none, scheme.none },
    TSLabel =           { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },
    TSCharacter =       { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConditional =     { fg = scheme.Red,        bg = scheme.none, scheme.none },
    TSConstant =        { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConstBuiltin =    { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConstMacro =      { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSFuncBuiltin =     { fg = scheme.Aqua,       bg = scheme.none, scheme.none },
    TSMethod =          { fg = scheme.Aqua,       bg = scheme.none, scheme.none },
    TSStructure =       { fg = scheme.Purple,     bg = scheme.none, scheme.none },
    TSTagDelimiter =    { fg = scheme.Green,      bg = scheme.none, scheme.none },
    TSTagAttribute =    { fg = scheme.none,       bg = scheme.none, style = opts.config.st_html_attributes},
    TSNumber =          { fg = scheme.Red,        bg = scheme.none, scheme.none },
    TSFuncMacro =       { fg = scheme.Aqua,       bg = scheme.none, scheme.none },
    TSInclude =         { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    TSKeyword =         { fg = scheme.Red,        bg = scheme.none, style = opts.config.st_keywords },
    TSException =       { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    TSBoolean =         { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },
    TSError =           { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    TSString =          { fg = scheme.Green,      bg = scheme.none, scheme.none },
    TSStringEscape =    { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSStringRegex =     { fg = scheme.Red,        bg = scheme.none, scheme.none },
    TSProperty =        { fg = scheme.DarkCyan,   bg = scheme.none, scheme.none },
    TSField =           { fg = scheme.Purple,     bg = scheme.none, scheme.none },
    TSParameter =       { fg = scheme.Cyan,       bg = scheme.none, scheme.none },
    TSVariable =        { fg = scheme.Cyan,       bg = scheme.none, style = opts.config.st_variables },
    TSPunctBracket =    { fg = scheme.White,      bg = scheme.none, scheme.none },
    TSOperator =        { fg = scheme.White,      bg = scheme.none, scheme.none },
    TSVariableBuiltin = { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    TSConstructor =     { fg = scheme.DarkYellow, bg = scheme.none, scheme.none },

    ------------------------
    -- TREESITTER RAINBOW --
    ------------------------
    rainbowcol1 = { fg = scheme.Red,    bg = scheme.none, scheme.none },
    rainbowcol2 = { fg = scheme.Cyan,   bg = scheme.none, scheme.none },
    rainbowcol3 = { fg = scheme.Purple, bg = scheme.none, scheme.none },
    rainbowcol4 = { fg = scheme.Yellow, bg = scheme.none, scheme.none },
    rainbowcol5 = { fg = scheme.Aqua,   bg = scheme.none, scheme.none },
    rainbowcol6 = { fg = scheme.Orange, bg = scheme.none, scheme.none },
    rainbowcol7 = { fg = scheme.Green,  bg = scheme.none, scheme.none },


    ----------------
    -- LSP COLORS --
    ----------------
    LspDiagnosticsVirtualTextHint =        { fg = scheme.Custom_2,    bg = scheme.none, scheme.none },
    LspDiagnosticsSignWarning =            { fg = scheme.DarkOrange,  bg = scheme.none, scheme.none },
    LspDiagnosticsSignInformation =        { fg = scheme.Custom_3,    bg = scheme.none, scheme.none },
    LspDiagnosticsSignHint =               { fg = scheme.Custom_2,    bg = scheme.none, scheme.none },
    LspDiagnosticsFloatingHint =           { fg = scheme.Custom_2,    bg = scheme.none, style = "underline" },
    LspDiagnosticsSignError =              { fg = scheme.DarkRed,     bg = scheme.none, scheme.none },
    LspDiagnosticsDefaultWarning =         { fg = scheme.DarkOrange,  bg = scheme.none, scheme.none },
    LspDiagnosticsDefaultError =           { fg = scheme.DarkRed,     bg = scheme.none, scheme.none },
    LspDiagnosticsFloatingError =          { fg = scheme.DarkRed,     bg = scheme.none, style = "underline" },
    LspDiagnosticsFloatingWarning =        { fg = scheme.DarkOrange,  bg = scheme.none, style = "underline" },
    LspDiagnosticsFloatingInformation =    { fg = scheme.Custom_3,    bg = scheme.none, style = "underline" },
    LspDiagnosticsUnderlineInformation =   { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspDiagnosticsUnderlineHint =          { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspDiagnosticsDefaultInformation =     { fg = scheme.Cyan,        bg = scheme.none, scheme.none },
    LspDiagnosticsDefaultHint =            { fg = scheme.Custom_2,    bg = scheme.none, scheme.none },
    LspDiagnosticsUnderlineError =         { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspDiagnosticsVirtualTextError =       { fg = scheme.DarkRed,     bg = scheme.none, scheme.none },
    LspDiagnosticsVirtualTextWarning =     { fg = scheme.DarkOrange,  bg = scheme.none, scheme.none },
    LspDiagnosticsVirtualTextInformation = { fg = scheme.Custom_3,    bg = scheme.none, scheme.none },
    LspDiagnosticsUnderlineWarning =       { fg = scheme.none,        bg = scheme.none, style = "underline" },
    LspReferenceText =                     { fg = scheme.DarkOrange,  bg = scheme.Cyan, scheme.none },
    LspReferenceRead =                     { fg = scheme.DarkOrange,  bg = scheme.Cyan, scheme.none },
    LspReferenceWrite =                    { fg = scheme.DarkOrange,  bg = scheme.Cyan, scheme.none },

    ---------------
    --  LSPSAGA  --
    ---------------
    LspSagaRenamePromptPrefix = { fg = scheme.Green,   bg = scheme.none, scheme.none },
    DiagnosticHint =            { fg = scheme.Purple,  bg = scheme.none, scheme.none },
    DefinitionPreviewTitle =    { fg = scheme.Yellow,  bg = scheme.none, scheme.none },
    LspSagaRenameBorder =       { fg = scheme.Green,   bg = scheme.none, scheme.none },
    DiagnosticInformation =     { fg = scheme.Blue,    bg = scheme.none, scheme.none },
    LspSagaDefPreviewBorder =   { fg = scheme.Yellow,  bg = scheme.none, scheme.none },
    LspSagaHoverBorder =        { fg = scheme.Cyan,    bg = scheme.none, scheme.none },
    DiagnosticWarning =         { fg = scheme.Yellow,  bg = scheme.none, scheme.none },
    DiagnosticError =           { fg = scheme.DarkRed, bg = scheme.none, scheme.none },

    ---------------
    -- TELESCOPE --
    ---------------
    TelescopeNormal =         { fg = scheme.White,       bg = scheme.none, scheme.none },
    TelescopeSelection =      { fg = scheme.White,       bg = scheme.Grey, style = "bold" },
    TelescopeSelectionCaret = { fg = scheme.Red,         bg = scheme.none, scheme.none },
    TelescopeMultiSelection = { fg = scheme.LightGrey,   bg = scheme.none, scheme.none },
    TelescopeBorder =         { fg = scheme.DarkOrange,  bg = scheme.none, scheme.none },
    TelescopePromptBorder =   { fg = scheme.DarkBlue,    bg = scheme.none, scheme.none },
    TelescopeResultsBorder =  { fg = scheme.DarkOrange,  bg = scheme.none, scheme.none },
    TelescopePreviewBorder =  { fg = scheme.DarkMagenta, bg = scheme.none, scheme.none },
    TelescopeMatching =       { fg = scheme.Yellow,      bg = scheme.none, scheme.none },
    TelescopePromptPrefix =   { fg = scheme.Red,         bg = scheme.none, scheme.none },
    TelescopePrompt =         { fg = scheme.Red,         bg = scheme.none, scheme.none },

    ---------------
    -- NVIM TREE --
    ---------------
    NvimTreeFolderName =      { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    NvimTreeFolderIcon =      { fg = scheme.Orange,     bg = scheme.none, scheme.none },
    NvimTreeExecFile =        { fg = scheme.Green,      bg = scheme.none, scheme.none },
    NvimTreeImageFile =       { fg = scheme.Pink,       bg = scheme.none, scheme.none },
    NvimTreeEmptyFolderName = { fg = scheme.DarkGrey_2, bg = scheme.none, scheme.none },
    NvimTreeIndentMarker =    { fg = scheme.Blue,       bg = scheme.none, scheme.none },

    ---------------
    --  STARTIFY --
    ---------------
    startifyheader =  { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    StartifyNumber =  { fg = scheme.Pink,       bg = scheme.none, scheme.none },
    StartifyBracket = { fg = scheme.Red,        bg = scheme.none, scheme.none },
    startifypath =    { fg = scheme.Green,      bg = scheme.none, scheme.none },
    startifyslash =   { fg = scheme.Blue,       bg = scheme.none, scheme.none },
    startifyfile =    { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },

    ---------------
    --   NEOGIT  --
    ---------------
    NeogitDiffContextHighlight =   { fg = scheme.Orange,    bg = scheme.LightGrey,  scheme.none },
    NeogitDiffDeleteHighlight =    { fg = scheme.DarkRed,   bg = scheme.LightGrey,  scheme.none },
    NeogitDiffAddHighlight =       { fg = scheme.DarkGreen, bg = scheme.LightGrey,  scheme.none },
    NeogitHunkHeader =             { fg = scheme.White,     bg = scheme.Background, scheme.none },
    NeogitHunkHeaderHighlight =    { fg = scheme.Blue,      bg = scheme.LightGrey,  scheme.none },
    NeogitBranch =                 { fg = scheme.Yellow,    bg = scheme.none,       scheme.none },
    NeogitRemote =                 { fg = scheme.Yellow,    bg = scheme.none,       scheme.none },
    NeogitObjectId =               { fg = scheme.Purple,    bg = scheme.none,       scheme.none },

    ---------------
    -- GITGUTTER --
    ---------------
    GitGutterChange =  { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitGutterAdd =     { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitGutterDelete =  { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },

    ----------------
    --  GitSigns  --
    ----------------
    GitSignsChange =   { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitSignsChangeLn = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitSignsChangeNr = { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    GitSignsAdd =      { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitSignsAddLn =    { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitSignsAddNr =    { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    GitSignsDelete =   { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    GitSignsDeleteLn = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    GitSignsDeleteNr = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },

    ----------------
    --  WHICHKEY  --
    ----------------
    WhichKeyGroup =     { fg = scheme.DarkGreen,  bg = scheme.none, scheme.none },
    WhichKeyDesc =      { fg = scheme.DarkOrange, bg = scheme.none, scheme.none },
    WhichKeySeperator = { fg = scheme.DarkRed,    bg = scheme.none, scheme.none },
    WhichKey =          { fg = scheme.DarkBlue,   bg = scheme.none, scheme.none },
  }

  return syntax
end

function setup.colors_terminal()
  g.terminal_color_0  = scheme.Black
  g.terminal_color_1  = scheme.Red
  g.terminal_color_2  = scheme.Green
  g.terminal_color_3  = scheme.Yellow
  g.terminal_color_4  = scheme.Blue
  g.terminal_color_5  = scheme.Purple
  g.terminal_color_6  = scheme.Cyan
  g.terminal_color_7  = scheme.White
  g.terminal_color_8  = scheme.Grey
  g.terminal_color_9  = scheme.Red
  g.terminal_color_10 = scheme.Green
  g.terminal_color_11 = scheme.Yellow
  g.terminal_color_12 = scheme.Blue
  g.terminal_color_13 = scheme.Purple
  g.terminal_color_14 = scheme.Cyan
  g.terminal_color_15 = scheme.White
end

return setup
