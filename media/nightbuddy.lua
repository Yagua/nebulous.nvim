-- Name:         Nightbuddy
-- Description:  Minimalist Collection of Dark Colorschemes Written in Lua
-- Author:       DilanGMB <Dilan.baron79@gmail.com>
-- Website:      https://github.com/DilanGMB/nightbuddy

local scheme = require("scheme.colors")
local setup = {}

---------------------
-- EDITOR SETTINGS --
---------------------
function setup.loadSyntax()
  local syntax = {

    String =           { fg = scheme.Green,      bg = scheme.none,       style = "italic" },
    Delimiter =        { fg = scheme.Green,      bg = scheme.none,       scheme.none },
    Character =        { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    Constant =         { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    Boolean =          { fg = scheme.DarkYellow, bg = scheme.none,       scheme.none },
    Float =            { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    Tag =              { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    DiffText =         { fg = scheme.Yellow,     bg = scheme.none,       style = "reverse" },
    Label =            { fg = scheme.DarkYellow, bg = scheme.none,       scheme.none },
    PreProc =          { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    Type =             { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    StorageClass =     { fg = scheme.Yellow,     bg = scheme.none,       scheme.none  },
    Special =          { fg = scheme.Yellow,     bg = scheme.none,       style = "italic" },
    Todo =             { fg = scheme.DarkYellow, bg = scheme.none,       style = "bold,italic" },
    Identifier =       { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Function =         { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Include =          { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    SpecialChar =      { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    Underlined =       { fg = scheme.Blue,       bg = scheme.none,       syle = "underline" },
    Conceal =          { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    Statement =        { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Repeat =           { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Structure =        { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Define =           { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    Operator =         { fg = scheme.White,      bg = scheme.none,       scheme.none },
    Keyword =          { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    Macro =            { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Typedef =          { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    Comment =          { fg = scheme.DarkGrey,   bg = scheme.none,       style = "italic" },
    Ignore =           { fg = scheme.none,       bg = scheme.none,       scheme.none },
    Error =            { fg = scheme.DarkRed,    bg = scheme.none,       style = "bold,underline" },
    Debug =            { fg = scheme.DarkRed ,   bg = scheme.none,       scheme.none },
    Exception =        { fg = scheme.DarkRed ,   bg = scheme.none,       scheme.none },
    ColorColumn =      { fg = scheme.none,       bg = scheme.Grey_2,     scheme.none },
    Cursor =           { fg = scheme.none,       bg = scheme.Orange,     scheme.none },
    CursorIM =         { fg = scheme.none,       bg = scheme.Grey_2,     scheme.none },
    CursorColumn =     { fg = scheme.none,       bg = scheme.Grey_2,     scheme.none },
    CursorLineNr =     { fg = scheme.White,      bg = scheme.Grey_2,     scheme.none },
    CursorLine =       { fg = scheme.none,       bg = scheme.Grey_2,     scheme.none },
    Folded =           { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    FoldColumn =       { fg = scheme.Grey,       bg = scheme.DarkGrey,   scheme.none },
    SignColumn =       { fg = scheme.none,       bg = scheme.none,       scheme.none },
    IncSearch =        { fg = scheme.Black,      bg = scheme.DarkCyan,   scheme.none },
    PMenu =            { fg = scheme.none,       bg = scheme.Grey_2,     scheme.none },
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
    Warnings =         { fg = scheme.Orange,     bg = scheme.none,       scheme.none },
    WildMenu =         { fg = scheme.Orange,     bg = scheme.Black,      style = "bold" },
    EndOfBuffer =      { fg = scheme.Custom_1,   bg = scheme.none,       scheme.none },
    ErrorMsg =         { fg = scheme.DarkRed,    bg = scheme.none,       scheme.none },
    VertSplit =        { fg = scheme.Pink,       bg = scheme.none,       scheme.none },
    LineNr =           { fg = scheme.DarkGrey,   bg = scheme.none,       scheme.none },
    MatchParen =       { fg = scheme.Cyan,       bg = scheme.none,       style = "bold" },
    ModeMsg =          { fg = scheme.Blue,       bg = scheme.none,       scheme.none },
    NonText =          { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    Normal =           { fg = scheme.White,      bg = scheme.background, scheme.none },
    NormalFloat =      { fg = scheme.White,      bg = scheme.Grey_2,     scheme.none },
    Question =         { fg = scheme.DarkCyan,   bg = scheme.none,       style = "bold" },
    qfLineNr =         { fg = scheme.Yellow,     bg = scheme.Yellow,     scheme.Yellow },
    Search =           { fg = scheme.Black,      bg = scheme.Yellow,     scheme.none },
    SpecialKey =       { fg = scheme.Purple,     bg = scheme.none,       style = "bold" },
    Title =            { fg = scheme.White,      bg = scheme.none,       style = "bold" },
    Visual =           { fg = scheme.White,      bg = scheme.Custom_1,   scheme.none },
    VisualNOS =        { fg = scheme.White,      bg = scheme.Custom_1,   scheme.none },
    StatusLineTerm =   { fg = scheme.Black,      bg = scheme.Green,      scheme.Grey },
    StatusLineTermNC = { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    Conditional =      { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    QuickFixLine =     { fg = scheme.Black,      bg = scheme.Yellow,     scheme.none },
    TabLineFill =      { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    TabLineSel =       { fg = scheme.Black,      bg = scheme.DarkCyan,   scheme.none },
    TabLine =          { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
  }
  return syntax
end

--------------------------------------------------------------------------
--                        COLOR LANGUAGE SETTINGS                       --
--------------------------------------------------------------------------

function setup.loadPlugs()
  local syntax = {
    ---------
    -- GIT --
    ---------
    gitcommitComment  =        { fg = scheme.Grey,       bg = scheme.none,       scheme.none },
    SignifySignAdd  =          { fg = scheme.Green,      bg = scheme.none,       scheme.none },
    SignifySignChange  =       { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    SignifySignDelete  =       { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    gitcommitDiscardedType  =  { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    gitcommitSelectedType  =   { fg = scheme.Green,      bg = scheme.none,       scheme.none },
    gitcommitHeader  =         { fg = scheme.none,       bg = scheme.none,       scheme.none },
    gitcommitUntrackedFile  =  { fg = scheme.Cyan,       bg = scheme.none,       scheme.none },
    gitcommitDiscardedFile  =  { fg = scheme.Red,        bg = scheme.none,       scheme.none },
    gitcommitUnmerged  =       { fg = scheme.Green,      bg = scheme.none,       scheme.none },
    gitcommitOnBranch  =       { fg = scheme.none,       bg = scheme.none,       scheme.none },
    gitcommitBranch  =         { fg = scheme.Purple,     bg = scheme.none,       scheme.none },
    gitcommitSelectedFile  =   { fg = scheme.Green,      bg = scheme.none,       scheme.none },
    gitcommitUnmergedFile  =   { fg = scheme.Yellow,     bg = scheme.none,       scheme.none },
    gitcommitSelectedArrow  =  { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    gitcommitUnmergedArrow  =  { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    GitGutterAdd  =            { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    GitGutterChange  =         { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    gitcommitFile  =           { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    gitcommitNoBranch  =       { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    gitcommitUntracked  =      { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    gitcommitDiscarded  =      { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    gitcommitDiscardedArrow  = { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },
    GitGutterDelete  =         { fg = scheme.Grey,       bg = scheme.Black,      scheme.none },

    ----------
    -- DIFF --
    ----------
    diffAdded  = {},
    diffFile  = {},
    diffNewFile  = {},
    diffChanged  = {},
    diffRemoved  = {},
    diffLine  = {},

    --------------
    -- MARKDOWN --
    --------------
    markdownUrl  = {},
    markdownH1  = {},
    markdownH2  = {},
    markdownH3  = {},
    markdownH4  = {},
    markdownH5  = {},
    markdownH6  = {},
    markdownItalic  = {},
    markdownBold  = {},
    markdownListMarker  = {},
    markdownCode  = {},
    markdownCodeBlock  = {},
    markdownCodeDelimiter  = {},
    markdownRule  = {},
    markdownHeadingRule  = {},
    markdownUrlDelimiter  = {},
    markdownLinkDelimiter  = {},
    markdownLinkTextDelimiter  = {},
    markdownUrlTitleDelimiter  = {},
    markdownHeadingDelimiter  = {},
    markdownOrderedListMarker  = {},

    ----------
    -- HTML --
    ----------
    htmlSpecialTagName  = {},
    htmlArg  = {},
    htmlTagName  = {},
    htmlTagN  = {},
    htmlEndTag  = {},
    htmlTag  = {},
    MatchTag  = {},

    -----------
    --  XML  --
    -----------
    xmlTag  = {},
    xmlEndTag  = {},
    xmlTagName  = {},
    xmlAttrib  = {},
    xmlEqual  = {},
    docbkKeyword  = {},
    xmlDocTypeDecl  = {},
    xmlDocTypeKeyword  = {},
    xmlCdataStart  = {},
    xmlCdataCdata  = {},
    xmlProcessingDelim  = {},
    xmlAttribPunct  = {},
    xmlEntity  = {},
    xmlEntityPunct  = {},

    ---------
    -- PUG --
    ---------
    pugDocType  = {},
    pugClass  = {},
    pugTag  = {},
    pugAttributesDelimiter  = {},

    ---------
    -- CSS --
    ---------
    cssFontAttr  = {},
    cssAttrComma  = {},
    cssIdentifier  = {},
    cssImportant  = {},
    cssInclude  = {},
    cssIncludeKeyword  = {},
    cssMediaType  = {},
    cssProp  = {},
    cssAttributeSelector  = {},
    cssBraces  = {},
    cssClassName  = {},
    cssClassNameDot  = {},
    cssDefinition  = {},
    cssFontDescriptor  = {},
    cssFunctionName  = {},
    cssPseudoClassId  = {},
    cssSelectorOp  = {},
    cssSelectorOp2  = {},
    cssStringQ  = {},
    cssStringQQ  = {},
    cssTagName  = {},
    cssAttr  = {},

    ----------
    -- SASS --
    ----------
    sassId  = {},
    sassInclude  = {},
    sassMedia  = {},
    sassMediaOperators  = {},
    sassMixin  = {},
    sassMixinName  = {},
    sassMixing  = {},
    sassAmpersand  = {},
    sassClass  = {},
    sassControl  = {},
    sassExtend  = {},
    sassFor  = {},
    sassProperty  = {},
    sassFunction  = {},
    scssSelectorName  = {},

    ----------------
    -- JAVASCRIPT --
    ----------------
    jsClassKeyword  = {},
    jsExtendsKeyword  = {},
    jsGlobalNodeObjects  = {},
    jsGlobalObjects  = {},
    jsFunction  = {},
    jsObjectProp  = {},
    jsUndefined  = {},
    jsObjectBraces  = {},
    javascriptDocTags  = {},
    javascriptDocNotation  = {},
    javascriptDocParamType  = {},
    javascriptDocNamedParamType  = {},
    javascriptDocParamName  = {},
    javaScriptParens  = {},
    jsClassDefinition  = {},
    javascriptArrowFunc  = {},
    javascriptClassName  = {},
    javascriptClassSuperName  = {},
    javascriptGlobal  = {},
    jsExportDefault  = {},
    jsObjectKey  = {},
    jsFunctionKey  = {},
    javascriptCacheMethod  = {},
    javascriptDateMethod  = {},
    javascriptMathStaticMethod  = {},
    javascriptURLUtilsProp  = {},
    jsFuncBraces  = {},
    jsClassBlock  = {},
    jsFuncArgs  = {},
    jsStorageClass  = {},
    jsxRegion  = {},
    javaScriptMember  = {},
    jsObjectValue  = {},
    javaScriptIdentifier  = {},
    jsParens  = {},
    javascriptAsyncFuncKeyword  = {},
    jsBracket  = {},
    jsObjectColon  = {},
    javascriptAwaitFuncKeyword  = {},
    javascriptOperator  = {},
    javascriptForOperator  = {},
    javascriptYield  = {},
    javascriptExceptions  = {},
    javascriptMessage  = {},
    jsFutureKeys  = {},
    jsFuncParens  = {},
    javascriptVariable  = {},
    javascriptHeadersMethod  = {},
    javascriptObjectLabel  = {},
    javascriptPropertyName  = {},
    javascriptLogicSymbols  = {},
    jsVariableDef  = {},
    javascriptGlobalMethod  = {},
    javaScriptBraces  = {},
    javascriptNodeGlobal  = {},
    javascriptBOMWindowProp  = {},
    javascriptArrayMethod  = {},
    javascriptArrayStaticMethod  = {},
    javascriptIdentifier  = {},
    javascriptClassSuper  = {},
    javascriptClassStatic  = {},
    javaScriptNumber  = {},
    javaScriptNull  = {},
    jsNull  = {},
    javascriptImport  = {},
    javascriptTemplateSB  = {},
    jsTemplateBraces  = {},
    javascriptFuncKeyword  = {},
    javascriptEndColons  = {},
    javascriptFuncArg  = {},
    javascriptLabel  = {},
    javascriptBrackets  = {},
    javascriptTemplateSubstitution  = {},
    javascriptStringMethod  = {},
    javascriptBOMWindowMethod  = {},
    javascriptAsyncFunc  = {},
    javascriptClassKeyword  = {},
    javascriptClassExtends  = {},
    javascriptDefault  = {},
    javaScriptFunction  = {},
    javascriptExport  = {},
    javascriptDOMElemAttrs  = {},
    javascriptDOMEventMethod  = {},
    javascriptDOMNodeMethod  = {},
    javascriptDOMStorageMethod  = {},
    javascriptBOMNavigatorProp  = {},
    javascriptDOMDocMethod  = {},
    javascriptDOMDocProp  = {},
    javascriptBOMLocationMethod  = {},

    ----------------
    -- TYPESCRIPT --
    ----------------
    typeScriptDocParam  = {},
    typeScriptDocTags  = {},
    typeScriptGlobalObjects  = {},
    typeScriptFuncKeyword  = {},
    typeScriptIdentifier  = {},
    typeScriptBraces  = {},
    typeScriptEndColons  = {},
    typeScriptDOMObjects  = {},
    typeScriptParens  = {},
    typeScriptOpSymbols  = {},
    typeScriptHtmlElemProperties  = {},
    typeScriptNull  = {},
    typeScriptInterpolationDelimiter  = {},
    typeScriptReserved  = {},
    typeScriptLabel  = {},
    typeScriptAjaxMethods  = {},
    typeScriptLogicSymbols  = {},
    typeScriptDocSeeTag  = {},

    ----------
    -- JSON --
    ----------
    jsonKeyword  = {},
    jsonNumber  = {},
    jsonStringSQError  = {},
    jsonNumError  = {},
    jsonQuote  = {},
    jsonTrailingCommaError  = {},
    jsonMissingCommaError  = {},
    jsonNoQuotesError  = {},
    jsonString  = {},
    jsonBoolean  = {},
    jsonCommentError  = {},
    jsonSemicolonError  = {},

    -------------
    -- CLOJURE --
    -------------
    clojureFunc  = {},
    clojureRepeat  = {},
    clojureParen  = {},
    clojureAnonArg  = {},
    clojureKeyword  = {},
    clojureCond  = {},
    clojureSpecial  = {},
    clojureRegexpCharClass  = {},
    clojureMeta  = {},
    clojureDeref  = {},
    clojureQuote  = {},
    clojureDefine  = {},
    clojureVariable  = {},
    clojureMacro  = {},
    clojureCharacter  = {},
    clojureStringEscape  = {},
    clojureException  = {},
    clojureRegexp  = {},
    clojureRegexpEscape  = {},
    clojureUnquote  = {},
    clojureRegexpMod  = {},
    clojureRegexpQuantifier  = {},

    -------------
    -- HASKELL --
    -------------
    haskellDeclKeyword  = {},
    haskellType  = {},
    haskellWhere  = {},
    haskellImportKeywords  = {},
    haskellOperators  = {},
    haskellDelimiter  = {},
    haskellIdentifier  = {},
    haskellKeyword  = {},
    haskellNumber  = {},
    haskellString  = {},
    haskellBacktick  = {},
    haskellDeriving  = {},
    haskellAssocType  = {},
    haskellPragma  = {},
    haskellChar  = {},
    haskellStatement  = {},
    haskellBottom  = {},
    haskellBlockKeywords  = {},
    haskellConditional  = {},
    haskellLet  = {},
    haskellDefault  = {},

    ---------
    -- PHP --
    ---------
    phpClass  = {},
    phpFunction  = {},
    phpFunctions  = {},
    phpInclude  = {},
    phpKeyword  = {},
    phpParent  = {},
    phpType  = {},
    phpSuperGlobals  = {},

    ----------
    -- RUST --
    ----------
    rustCommentLineDocError  = {},
    rustCommentBlock  = {},
    rustDeriveTrait  = {},
    SpecialComment  = {},
    rustCommentLine  = {},
    rustCommentBlockDoc  = {},
    rustExternCrate  = {},
    rustIdentifier  = {},
    rustCommentLineDoc  = {},
    rustCommentBlockDocError  = {},

    -----------
    -- C/C++ --
    -----------
    cType  = {},
    cStorageClass  = {},
    cStructure  = {},
    cInclude  = {},
    cppStructure  = {},
    cppModifier  = {},
    cppOperator  = {},
    cppAccess  = {},
    cppStatement  = {},
    cppConstant  = {},
    cTODO  = {},
    cConstant  = {},
    cSpecial  = {},
    cSpecialCharacter  = {},
    cString  = {},
    cppType  = {},
    cppStorageClass  = {},
    cPreCondit  = {},
    cPreConditMatch  = {},
    cOperator  = {},
    cStatement  = {},
    cCppString  = {},

    --------
    -- C# --
    --------
    csBraces  = {},
    csEndColon  = {},
    csLogicSymbols  = {},
    csParens  = {},
    csOpSymbols  = {},
    csInterpolationDelimiter  = {},
    csInterpolationAlignDel  = {},
    csInterpolationFormat  = {},
    csInterpolationFormatDel  = {},

    --------------
    -- CUCUMBER --
    --------------
    cucumberThenAnd  = {},
    cucumberFeature  = {},
    cucumberScenarioOutline  = {},
    cucumberThen  = {},
    cucumberUnparsed  = {},
    cucumberGiven  = {},
    cucumberWhenAnd  = {},
    cucumberBackground  = {},
    cucumberScenario  = {},
    cucumberWhen  = {},
    cucumberTags  = {},
    cucumberDelimiter  = {},

    -----------
    -- SPELL --
    -----------
    SpellBad  = {},
    SpellCap  = {},
    SpellLocal  = {},
    SpellRare  = {},

    ------------
    -- ELIXIR --
    ------------
    elixirModuleDeclaration  = {},
    elixirOperator  = {},
    elixirModuleDefine  = {},
    elixirDocString  = {},
    elixirInclude  = {},
    elixirAlias  = {},
    elixirAtom  = {},
    elixirBlockDefinition  = {},

    ------------
    -- GOLANG --
    ------------
    goField  = {},
    goMethod  = {},
    goType  = {},
    goUnsignedInts  = {},
    goDeclaration  = {},

    ------------
    -- PYTHON --
    ------------
    pythonEscape  = {},
    pythonSelf  = {},
    pythonSelfArg  = {},
    pythonImport  = {},
    pythonBuiltin  = {},
    pythonModule  = {},
    pythonStringDelimiter  = {},
    pythonParam  = {},
    pythonFunction  = {},
    pythonKeyword  = {},
    pythonStatement  = {},
    pythonClass  = {},
    pythonOperator  = {},
    pythonSymbol  = {},
    pythonBytes  = {},
    pythonBytesError  = {},
    pythonBytesEscapeError  = {},
    pythonBytesEscape  = {},
    pythonRawBytes  = {},
    pythonBytesContent  = {},

    ----------------
    -- PURESCRIPT --
    ----------------
    purescriptKeyword  = {},
    purescriptModuleName  = {},
    purescriptType  = {},
    purescriptTypeVar  = {},
    purescriptIdentifier  = {},
    purescriptConstructor  = {},
    purescriptOperator  = {},

    ---------
    -- VIM --
    ---------
    vimSep  = {},
    vimCommentTitle  = {},
    vimLineComment  = {},
    vimParenSep  = {},
    vimFuncName  = {},
    vimHighlight  = {},
    vimUserFunc  = {},
    vimVar  = {},
    vimLet  = {},
    vimNorm  = {},
    vimBracket  = {},
    vimMapModKey  = {},
    vimNotation  = {},
    vimGroup  = {},
    vimContinue  = {},
    vimSetSep  = {},
    vimHiGroup  = {},
    vimFunction  = {},
    vimFuncSID  = {},
    vimCommand  = {},
    vimNotFunc  = {},
    vimFuncVar  = {},
    vimMapLHS  = {},
    vimMap  = {},
    nvimMap  = {},

    ---------
    -- ZSH --
    ---------
    zshSubst  = {},
    zshCommands  = {},
    zshKeyword  = {},
    zshTypes  = {},
    zshDeref  = {},
    zshShortDeref  = {},
    zshVariableDef  = {},
    zshSubstDelim  = {},
    zshFunction  = {},

    ----------
    -- RUBY --
    ----------
    rubyInstanceVariable  = {},
    rubyBlockParameterList  = {},
    rubyRegexp  = {},
    rubyRegexpDelimiter  = {},
    rubyStringDelimiter  = {},
    rubySymbol  = {},
    rubyClass  = {},
    rubyConstant  = {},
    rubyBlockParameter  = {},
    rubyEscape  = {},
    rubyControl  = {},
    rubyFunction  = {},
    rubyGlobalVariable  = {},
    rubyCapitalizedMethod  = {},
    rubyInclude  = {},
    rubyIncluderubyGlobalVariable  = {},
    rubyBlock  = {},
    rubyInterpolation  = {},
    rubyInterpolationDelimiter  = {},
    rubyKeyword  = {},
    rubyModule  = {},
    rubyDefine  = {},
    rubyPseudoVariable  = {},

    ----------
    -- JAVA --
    ----------
    javaParen  = {},
    javaOperator  = {},
    javaVarArg  = {},
    javaParen1  = {},
    javaParen2  = {},
    javaParen3  = {},
    javaParen4  = {},
    javaParen5  = {},
    javaAnnotation  = {},
    javaDocTags  = {},
    javaCommentTitle  = {},

    -----------
    -- OCAML --
    -----------
    ocamlOperator  = {},
    ocamlArrow  = {},
    ocamlKeyChar  = {},
    ocamlInfixOpKeyword  = {},
    ocamlConstructor  = {},

    ---------
    -- LUA --
    ---------
    luaFunction  = {},
    luaTable  = {},
    luaIn  = {},
    luaStatement  = {},
    luaKeyword  = {},
    luaMyKeyword  = {},
    luaFunctionCall  = {},
    luaSpecialFunctions  = {},
    luaMetatableEvents  = {},
    luaMetatableArithmetic  = {},
    luaMetatableEquivalence  = {},

    -----------
    -- SCALA --
    -----------
    scalaTypeTypePostDeclaration  = {},
    scalaInstanceDeclaration  = {},
    scalaInterpolation  = {},
    scalaOperator  = {},
    scalaNameDefinition  = {},
    scalaCaseFollowing  = {},
    scalaCapitalWord  = {},
    scalaTypeExtension  = {},
    scalaKeyword  = {},
    scalaKeywordModifier  = {},
    scalaSpecial  = {},
    scalaTypeDeclaration  = {},

    -----------
    --  SQL  --
    -----------
    SqlKeyword  = {},

    --------------------------------------------------------------------------
    --                           PLUGINS SETTINGS                            -
    --------------------------------------------------------------------------

    ----------------
    -- LSP COLORS --
    ----------------
    LspDiagnosticsVirtualTextHint  = {},
    LspDiagnosticsSignWarning  = {},
    LspDiagnosticsSignInformation  = {},
    LspDiagnosticsSignHint  = {},
    LspDiagnosticsFloatingHint  = {},
    LspDiagnosticsSignError  = {},
    LspDiagnosticsDefaultWarning  = {},
    LspDiagnosticsDefaultError  = {},
    LspDiagnosticsFloatingError  = {},
    LspDiagnosticsFloatingWarning  = {},
    LspDiagnosticsFloatingInformation  = {},
    LspDiagnosticsUnderlineInformation  = {},
    LspDiagnosticsUnderlineHint  = {},
    LspDiagnosticsDefaultInformation  = {},
    LspDiagnosticsDefaultHint  = {},
    LspDiagnosticsUnderlineError  = {},
    LspDiagnosticsVirtualTextError  = {},
    LspDiagnosticsVirtualTextWarning  = {},
    LspDiagnosticsVirtualTextInformation  = {},
    LspDiagnosticsUnderlineWarning  = {},
    LspReferenceText  = {},
    LspReferenceRead  = {},
    LspReferenceWrite  = {},

    ---------------
    --  LSPSAGA  --
    ---------------
    LspSagaRenamePromptPrefix  = {},
    DiagnosticHint  = {},
    DefinitionPreviewTitle  = {},
    LspSagaRenameBorder  = {},
    DiagnosticInformation  = {},
    LspSagaDefPreviewBorder  = {},
    LspSagaHoverBorder  = {},
    DiagnosticWarning  = {},
    DiagnosticError  = {},

    -----------------------
    -- TREESITTER COLORS --
    -----------------------
    TSFloat  = {},
    TSFunction  = {},
    TSType  = {},
    TSTypeBuiltin  = {},
    TSLabel  = {},
    TSCharacter  = {},
    TSConditional  = {},
    TSConstant  = {},
    TSConstBuiltin  = {},
    TSConstMacro  = {},
    TSFuncBuiltin  = {},
    TSMethod  = {},
    TSStructure  = {},
    TSTagDelimiter  = {},
    TSNumber  = {},
    TSFuncMacro  = {},
    TSInclude  = {},
    TSKeyword  = {},
    TSException  = {},
    TSBoolean  = {},
    TSError  = {},
    TSString  = {},
    TSStringEscape  = {},
    TSStringRegex  = {},
    TSProperty  = {},
    TSField  = {},
    TSParameter  = {},
    TSVariable  = {},
    TSPunctBracket  = {},
    TSOperator  = {},
    TSVariableBuiltin  = {},
    TSConstructor  = {},

    ---------------
    -- TELESCOPE --
    ---------------
    TelescopeNormal  = {},
    TelescopeSelection  = {},
    TelescopeSelectionCaret  = {},
    TelescopeMultiSelection   = {},
    TelescopeBorder  = {},
    TelescopePromptBorder  = {},
    TelescopeResultsBorder  = {},
    TelescopePreviewBorder  = {},
    TelescopeMatching   = {},
    TelescopePromptPrefix  = {},
    TelescopePrompt  = {},

    ---------------
    -- NVIM TREE --
    ---------------
    NvimTreeFolderName  = {},
    NvimTreeFolderIcon  = {},
    NvimTreeExecFile  = {},
    NvimTreeImageFile  = {},
    NvimTreeEmptyFolderName  = {},
    NvimTreeIndentMarker  = {},

    ---------------
    --  STARTIFY --
    ---------------
    startifyheader  = {},
    startifypath  = {},
    startifyslash  = {},
    startifyfile  = {},
  }
  return syntax
end

return setup
