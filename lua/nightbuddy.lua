-- Name:         Nightbuddy
-- Description:  Minimalist Collection of Dark Colorschemes Written in Lua
-- Author:       DilanGMB <Dilan.baron79@gmail.com>
-- Website:      https://github.com/DilanGMB/nightbuddy

-- Setup Colorbuddy
local Group = require('colorbuddy.group').Group
local c = require('colorbuddy.color').colors
local g = require('colorbuddy.group').groups
local s = require('colorbuddy.style').styles

local b = s.bold
local i = s.italic
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local no = s.NONE
local global = vim.g

global.colors_name = 'nightbuddy'

---------------------
--  STYLE SELECTOR --
---------------------
if global.nb_style == "twilight" then
  require("twilight")
elseif global.nb_style == "midnight" then
  require("midnight")
else
  -- Default - Classic Nightbuddy
  require("night")
end

-- MORE VARIANTS COMING SOON !!

---------------------
-- EDITOR SETTINGS --
---------------------
Group.new('String',           c.Green,        c.none,         i)
Group.new('Delimiter',        c.Green,        c.none,         no)
Group.new('Character',        c.Orange,       c.none,         no)
Group.new('Constant',         c.Orange,       c.none,         no)
Group.new('Boolean',          c.DarkYellow,   c.none,         no)
Group.new('Float',            c.Orange,       c.none,         no)
Group.new('Tag',              c.Orange,       c.none,         no)
Group.new('DiffText',         c.Yellow,       c.none,         r)
Group.new('Label',            c.DarkYellow,   c.none,         no)
Group.new('PreProc',          c.Yellow,       c.none,         no)
Group.new('Type',             c.Yellow,       c.none,         no)
Group.new('StorageClass',     c.Yellow,       c.none,         no)
Group.new('Special',          c.Yellow,       c.none,         i)
Group.new('Todo',             c.DarkYellow,   c.none,         b + i)
Group.new('Identifier',       c.Cyan,         c.none,         no)
Group.new('Function',         c.Aqua,         c.none,         no)
Group.new('Include',          c.Cyan,         c.none,         no)
Group.new('SpecialChar',      c.Blue,         c.none,         no)
Group.new('Underlined',       c.Blue,         c.none,         ul)
Group.new('Conceal',          c.Blue,         c.Black,        no)
Group.new('Statement',        c.Purple,       c.none,         no)
Group.new('Repeat',           c.Purple,       c.none,         no)
Group.new('Structure',        c.Purple,       c.none,         no)
Group.new('Define',           c.Purple,       c.none,         no)
Group.new('Operator',         c.White,        c.none,         no)
Group.new('Keyword',          c.Red,          c.none,         no)
Group.new('Macro',            c.Cyan,         c.none,         no)
Group.new('Typedef',          c.Cyan,         c.none,         no)
Group.new('Comment',          c.DarkGrey,     c.none,          i)
Group.new('Ignore',           c.none,         c.none,         no)
Group.new('Error',            c.DarkRed,      c.none,         b + ul)
Group.new('Debug',            c.DarkRed,      c.none,         no)
Group.new('Exception',        c.DarkRed,      c.none,         no)
Group.new('ColorColumn',      c.none,         c.Grey_2,       no)
Group.new('Cursor',           c.none,         c.Orange,       no)
Group.new('CursorIM',         c.none,         c.none,         no)
Group.new('CursorColumn',     c.none,         c.Grey_2,       no)
Group.new('CursorLineNr',     c.White,        c.Grey_2,       no)
Group.new('CursorLine',       c.none,         c.Grey_2,       no)
Group.new('Folded',           c.Grey,         c.none,         no)
Group.new('FoldColumn',       c.Grey,         c.DarkGrey,     no)
Group.new('SignColumn',       c.none,         c.none,         no)
Group.new('IncSearch',        c.Black,        c.DarkCyan,     no)
Group.new('PMenu',            c.none,         c.Grey_2,       no)
Group.new('PMenuSel',         c.Black,        c.Orange,       no)
Group.new('PMenuSbar',        c.none,         c.Grey,         no)
Group.new('PMenuThumb',       c.none,         c.Yellow,       no)
Group.new('Directory',        c.Blue,         c.none,         b)
Group.new('DiffAdd',          c.Green,        c.none,         r)
Group.new('DiffChange',       c.Orange,       c.none,         r)
Group.new('StatusLine',       c.White,        c.Grey,        no)
Group.new('StatusLineNC',     c.Grey,         c.none,         no)
Group.new('DiffDelete',       c.Red,          c.none,         r)
Group.new('WarningMsg',       c.DarkRed,      c.none,         no)
Group.new('Warnings',         c.Orange,       c.none,         r)
Group.new('WildMenu',         c.Orange,       c.Black,        b)
Group.new('EndOfBuffer',      c.Custom_1,     c.none,         no)
Group.new('ErrorMsg',         c.DarkRed,      c.none,         no)
Group.new('VertSplit',        c.Pink,         c.none,         no)
Group.new('LineNr',           c.DarkGrey,     c.none,         no)
Group.new('MatchParen',       c.Cyan,         c.none,         b)
Group.new('ModeMsg',          c.Blue,         c.none,         no)
Group.new('NonText',          c.Grey,         c.none,         no)
Group.new('Normal',           c.White,        c.Cbackground,  no)
Group.new('NormalFloat',      c.White,        c.Grey_2,       no)
Group.new('Question',         c.DarkCyan,     c.none,         b)
Group.new('qfLineNr',         g.Type,         g.Type,         g.Type)
Group.new('Search',           c.Black,        c.Yellow,       no)
Group.new('SpecialKey',       c.Purple,       c.none,         no)
Group.new('Title',            c.White,        c.none,         b)
Group.new('Visual',           c.White,        c.Custom_1,     no)
Group.new('VisualNOS',        g.Visual,       g.Visual,       g.Visual)
Group.new('StatusLineTerm',   c.Black,        c.Green,        g.StatusLine)
Group.new('StatusLineTermNC', g.StatusLineNC, g.StatusLineNC, g.StatusLineNC)
Group.new('Conditional',      g.Conditional,  c.none,         no)
Group.new('QuickFixLine',     g.Search,       g.Search,       g.Search)
Group.new('TabLineFill',      c.Grey,         c.Black,        no)
Group.new('TabLineSel',       c.Black,        c.DarkCyan,     no)
Group.new('TabLine',          g.TabLineFill,  g.TabLineFill,  g.TabLineFill)

--------------------------------------------------------------------------
--                        COLOR LANGUAGE SETTINGS                       --
--------------------------------------------------------------------------

---------
-- GIT --
---------
Group.new('gitcommitComment',        c.Grey,                   c.none,                   no)
Group.new('SignifySignAdd',          c.Green,                  c.none,                   no)
Group.new('SignifySignChange',       c.Yellow,                 c.none,                   no)
Group.new('SignifySignDelete',       c.Red,                    c.none,                   no)
Group.new('gitcommitDiscardedType',  c.Red,                    c.none,                   no)
Group.new('gitcommitSelectedType',   c.Green,                  c.none,                   no)
Group.new('gitcommitHeader',         c.none,                   c.none,                   no)
Group.new('gitcommitUntrackedFile',  c.Cyan,                   c.none,                   no)
Group.new('gitcommitDiscardedFile',  c.Red,                    c.none,                   no)
Group.new('gitcommitUnmerged',       c.Green,                  c.none,                   no)
Group.new('gitcommitOnBranch',       c.none,                   c.none,                   no)
Group.new('gitcommitBranch',         c.Purple,                 c.none,                   no)
Group.new('gitcommitSelectedFile',   c.Green,                  c.none,                   no)
Group.new('gitcommitUnmergedFile',   c.Yellow,                 c.none,                   no)
Group.new('gitcommitSelectedArrow',  g.gitcommitSelectedFile,  g.gitcommitSelectedFile,  g.gitcommitSelectedFile)
Group.new('gitcommitUnmergedArrow',  g.gitcommitUnmergedFile,  g.gitcommitUnmergedFile,  g.gitcommitUnmergedFile)
Group.new('GitGutterAdd',            g.SignifySignAdd,         g.SignifySignAdd,         g.SignifySignAdd)
Group.new('GitGutterChange',         g.SignifySignChange,      g.SignifySignChange,      g.SignifySignChange)
Group.new('gitcommitFile',           c.none,                   c.none,                   no)
Group.new('gitcommitNoBranch',       g.gitcommitBranch,        g.gitcommitBranch,        g.gitcommitBranch)
Group.new('gitcommitUntracked',      g.gitcommitComment,       g.gitcommitComment,       g.gitcommitComment)
Group.new('gitcommitDiscarded',      g.gitcommitComment,       g.gitcommitComment,       g.gitcommitComment)
Group.new('gitcommitDiscardedArrow', g.gitcommitDiscardedFile, g.gitcommitDiscardedFile, g.gitcommitDiscardedFile)
Group.new('GitGutterDelete',         g.SignifySignDelete,      g.SignifySignDelete,      g.SignifySignDelete)

----------
-- DIFF --
----------
Group.new('diffAdded',   c.Green,  c.none, no)
Group.new('diffFile',    c.Orange, c.none, no)
Group.new('diffNewFile', c.Yellow, c.none, no)
Group.new('diffChanged', c.Cyan,   c.none, no)
Group.new('diffRemoved', c.Red,    c.none, no)
Group.new('diffLine',    c.Blue,   c.none, no)

--------------
-- MARKDOWN --
--------------
Group.new('markdownUrl',               c.Purple,     c.none, no)
Group.new('markdownH1',                c.Red,        c.none, no)
Group.new('markdownH2',                c.Red,        c.none, no)
Group.new('markdownH3',                c.Red,        c.none, no)
Group.new('markdownH3',                c.Red,        c.none, no)
Group.new('markdownH4',                c.Red,        c.none, no)
Group.new('markdownH5',                c.Red,        c.none, no)
Group.new('markdownH6',                c.Red,        c.none, no)
Group.new('markdownItalic',            c.Orange,     c.none, b)
Group.new('markdownBold',              c.Orange,     c.none, b)
Group.new('markdownListMarker',        c.DarkYellow, c.none, no)
Group.new('markdownCode',              c.Green,      c.none, no)
Group.new('markdownCodeBlock',         c.Yellow,     c.none, no)
Group.new('markdownCodeDelimiter',     c.Green,      c.none, no)
Group.new('markdownRule',              c.Grey,       c.none, no)
Group.new('markdownHeadingRule',       c.Grey,       c.none, no)
Group.new('markdownUrlDelimiter',      c.DarkGray,   c.none, no)
Group.new('markdownLinkDelimiter',     c.DarkGray,   c.none, no)
Group.new('markdownLinkTextDelimiter', c.DarkGray,   c.none, no)
Group.new('markdownHeadingDelimiter',  c.Orange,     c.none, no)
Group.new('markdownUrlTitleDelimiter', c.Green,      c.none, no)
Group.new('markdownHeadingDelimiter',  c.DarkOrange, c.none, no)
Group.new('markdownOrderedListMarker', c.Grey,       c.none, no)

----------
-- HTML --
----------
Group.new('htmlSpecialTagName', c.Red,      c.none,     no)
Group.new('htmlArg',            c.Orange,   c.none,     no)
Group.new('htmlTagName',        c.Red,      c.none,     no)
Group.new('htmlTagN',           c.Red,      c.none,     no)
Group.new('htmlEndTag',         c.DarkGrey, c.none,     no)
Group.new('htmlTag',            c.DarkGrey, c.none,     no)
Group.new('MatchTag',           c.Red,      c.DarkGrey, ul + b)

-----------
--  XML  --
-----------
Group.new('xmlTag',             c.Red,    c.none, no)
Group.new('xmlEndTag',          c.Red,    c.none, no)
Group.new('xmlTagName',         c.Red,    c.none, no)
Group.new('xmlAttrib',          c.Yellow, c.none, no)
Group.new('xmlEqual',           c.Red,    c.none, no)
Group.new('docbkKeyword',       c.Cyan,   c.none,  b)
Group.new('xmlDocTypeDecl',     c.Grey,   c.none, no)
Group.new('xmlDocTypeKeyword',  c.Purple, c.none, no)
Group.new('xmlCdataStart',      c.Grey,   c.none, no)
Group.new('xmlCdataCdata',      c.Purple, c.none, no)
Group.new('xmlProcessingDelim', c.Grey,   c.none, no)
Group.new('xmlAttribPunct',     c.Grey,   c.none, no)
Group.new('xmlEntity',          c.Orange, c.none, no)
Group.new('xmlEntityPunct',     c.Orange, c.none, no)

---------
-- PUG --
---------
Group.new('pugDocType',             c.Grey,    c.none, i)
Group.new('pugClass',               c.Orange,  c.none, no)
Group.new('pugTag',                 c.Red,     c.none, no)
Group.new('pugAttributesDelimiter', c.Orange,  c.none, no)

---------
-- CSS --
---------
Group.new('cssFontAttr',          c.Orange,    c.none, no)
Group.new('cssAttrComma',         c.Purple,    c.none, no)
Group.new('cssIdentifier',        c.DarkCyan,  c.none, no)
Group.new('cssImportant',         c.Purple,    c.none, no)
Group.new('cssInclude',           c.White,     c.none, no)
Group.new('cssIncludeKeyword',    c.Purple,    c.none, no)
Group.new('cssMediaType',         c.Orange,    c.none, no)
Group.new('cssProp',              c.Cyan,      c.none, no)
Group.new('cssAttributeSelector', c.Green,     c.none, no)
Group.new('cssBraces',            c.White,  c.none, no)
Group.new('cssClassName',         c.Orange,    c.none, no)
Group.new('cssClassNameDot',      c.Orange,    c.none, no)
Group.new('cssDefinition',        c.Purple,    c.none, no)
Group.new('cssFontDescriptor',    c.Purple,    c.none, no)
Group.new('cssFunctionName',      c.DarkCyan,  c.none, no)
Group.new('cssPseudoClassId',     c.Orange,    c.none, no)
Group.new('cssSelectorOp',        c.Purple,    c.none, no)
Group.new('cssSelectorOp2',       c.Purple,    c.none, no)
Group.new('cssStringQ',           c.Green,     c.none, no)
Group.new('cssStringQQ',          c.Green,     c.none, no)
Group.new('cssTagName',           c.Red,       c.none, no)
Group.new('cssAttr',              c.Orange,    c.none, no)

----------
-- SASS --
----------
Group.new('sassId',             c.DarkCyan, c.none, no)
Group.new('sassInclude',        c.Purple,   c.none, no)
Group.new('sassMedia',          c.Purple,   c.none, no)
Group.new('sassMediaOperators', c.White,    c.none, no)
Group.new('sassMixin',          c.Purple,   c.none, no)
Group.new('sassMixinName',      c.DarkCyan, c.none, no)
Group.new('sassMixing',         c.Purple,   c.none, no)
Group.new('sassAmpersand',      c.Red,      c.none, no)
Group.new('sassClass',          c.Yellow,   c.none, no)
Group.new('sassControl',        c.Purple,   c.none, no)
Group.new('sassExtend',         c.Purple,   c.none, no)
Group.new('sassFor',            c.White,    c.none, no)
Group.new('sassProperty',       c.Cyan,     c.none, no)
Group.new('sassFunction',       c.Cyan,     c.none, no)
Group.new('scssSelectorName',   c.Yellow,   c.none, no)

----------------
-- JAVASCRIPT --
----------------
Group.new('jsClassKeyword',                 g.Keyword,    g.Keyword,    g.Keyword)
Group.new('jsExtendsKeyword',               g.Keyword,    g.Keyword,    g.Keyword)
Group.new('jsGlobalNodeObjects',            g.Keyword,    g.Keyword,    g.Keyword)
Group.new('jsGlobalObjects',                g.Keyword,    g.Keyword,    g.Keyword)
Group.new('jsFunction',                     g.Function,   g.Function,   g.Function)
Group.new('jsObjectProp',                   g.Identifier, g.Identifier, g.Identifier)
Group.new('jsUndefined',                    g.ErrorMsg,   g.ErrorMsg,   g.ErrorMsg)
Group.new('jsObjectBraces',                 g.Special,    g.Special,    g.Special)
Group.new('javascriptDocTags',              c.DarkGrey,   c.none,       no)
Group.new('javascriptDocNotation',          c.DarkGrey,   c.none,       no)
Group.new('javascriptDocParamType',         c.DarkGrey,   c.none,       no)
Group.new('javascriptDocNamedParamType',    c.DarkGrey,   c.none,       no)
Group.new('javascriptDocParamName',         c.DarkGrey,   c.none,       no)
Group.new('javaScriptParens',               c.White,     c.none,       no)
Group.new('jsClassDefinition',              c.Yellow,     c.none,       no)
Group.new('javascriptArrowFunc',            c.Yellow,     c.none,       no)
Group.new('javascriptClassName',            c.Yellow,     c.none,       no)
Group.new('javascriptClassSuperName',       c.Yellow,     c.none,       no)
Group.new('javascriptGlobal',               c.Yellow,     c.none,       no)
Group.new('jsFuncArgs',                     c.Blue,       c.none,       no)
Group.new('jsExportDefault',                c.Blue,       c.none,       b)
Group.new('jsObjectKey',                    c.Blue,       c.none,       no)
Group.new('jsFunctionKey',                  c.Blue,       c.none,       no)
Group.new('javascriptCacheMethod',          c.White,      c.none,       no)
Group.new('javascriptDateMethod',           c.White,      c.none,       no)
Group.new('javascriptMathStaticMethod',     c.White,      c.none,       no)
Group.new('javascriptURLUtilsProp',         c.White,      c.none,       no)
Group.new('jsFuncBraces',                   c.Blue,       c.none,       no)
Group.new('jsClassBlock',                   c.Blue,       c.none,       no)
Group.new('jsFuncArgs',                     c.Blue,       c.none,       no)
Group.new('jsStorageClass',                 c.Blue,       c.none,       no)
Group.new('jsxRegion',                      c.Blue,       c.none,       no)
Group.new('javaScriptMember',               c.Blue,       c.none,       no)
Group.new('jsObjectValue',                  c.Green,      c.none,       no)
Group.new('javaScriptIdentifier',           c.Red,        c.none,       no)
Group.new('jsParens',                       c.White,        c.none,       no)
Group.new('javascriptAsyncFuncKeyword',     c.Red,        c.none,       b)
Group.new('jsBracket',                      c.Red,        c.none,       no)
Group.new('jsObjectColon',                  c.Red,        c.none,       no)
Group.new('javascriptAwaitFuncKeyword',     c.Red,        c.none,       b)
Group.new('javascriptOperator',             c.Red,        c.none,       no)
Group.new('javascriptForOperator',          c.Red,        c.none,       no)
Group.new('javascriptYield',                c.Red,        c.none,       no)
Group.new('javascriptExceptions',           g.Error,      c.none,       no)
Group.new('javascriptMessage',              c.Red,        c.none,       no)
Group.new('jsFutureKeys',                   c.Orange,     c.none,       b)
Group.new('jsFuncParens',                   c.Orange,     c.none,       no)
Group.new('javascriptVariable',             c.Orange,     c.none,       no)
Group.new('javascriptHeadersMethod',        c.White,      c.none,       no)
Group.new('javascriptObjectLabel',          c.White,      c.none,       no)
Group.new('javascriptPropertyName',         c.White,      c.none,       no)
Group.new('javascriptLogicSymbols',         c.White,      c.none,       no)
Group.new('jsVariableDef',                  c.White,      c.none,       no)
Group.new('javascriptGlobalMethod',         c.White,      c.none,       no)
Group.new('javaScriptBraces',               c.White,      c.none,       no)
Group.new('javascriptNodeGlobal',           c.White,      c.none,       no)
Group.new('javascriptBOMWindowProp',        c.White,      c.none,       no)
Group.new('javascriptArrayMethod',          c.White,      c.none,       no)
Group.new('javascriptArrayStaticMethod',    c.White,      c.none,       no)
Group.new('javascriptIdentifier',           c.Orange,     c.none,       no)
Group.new('javascriptClassSuper',           c.Orange,     c.none,       no)
Group.new('javascriptClassStatic',          c.Orange,     c.none,       no)
Group.new('javaScriptNumber',               c.Purple,     c.none,       no)
Group.new('javaScriptNull',                 c.Purple,     c.none,       no)
Group.new('jsNull',                         c.Purple,     c.none,       no)
Group.new('javascriptImport',               c.Cyan,       c.none,       no)
Group.new('javascriptTemplateSB',           c.Cyan,       c.none,       no)
Group.new('jsTemplateBraces',               c.Cyan,       c.none,       no)
Group.new('javascriptFuncKeyword',          c.Cyan,       c.none,       no)
Group.new('javascriptEndColons',            c.White,      c.none,       no)
Group.new('javascriptFuncArg',              c.White,      c.none,       no)
Group.new('javascriptLabel',                c.White,      c.none,       no)
Group.new('javascriptBrackets',             c.White,      c.none,       no)
Group.new('javascriptTemplateSubstitution', c.White,      c.none,       no)
Group.new('javascriptStringMethod',         c.White,      c.none,       no)
Group.new('javascriptBOMWindowMethod',      c.White,      c.none,       no)
Group.new('javascriptAsyncFunc',            c.Cyan,       c.none,       no)
Group.new('javascriptClassKeyword',         c.Cyan,       c.none,       no)
Group.new('javascriptClassExtends',         c.Cyan,       c.none,       no)
Group.new('javascriptDefault',              c.Cyan,       c.none,       no)
Group.new('javaScriptFunction',             c.Cyan,       c.none,       no)
Group.new('javascriptExport',               c.Cyan,       c.none,       no)
Group.new('javascriptDOMElemAttrs',         c.White,      c.none,       no)
Group.new('javascriptDOMEventMethod',       c.White,      c.none,       no)
Group.new('javascriptDOMNodeMethod',        c.White,      c.none,       no)
Group.new('javascriptDOMStorageMethod',     c.White,      c.none,       no)
Group.new('javascriptBOMNavigatorProp',     c.White,      c.none,       no)
Group.new('javascriptDOMDocMethod',         c.White,      c.none,       no)
Group.new('javascriptDOMDocProp',           c.White,      c.none,       no)
Group.new('javascriptBOMLocationMethod',    c.White,      c.none,       no)

----------------
-- TYPESCRIPT --
----------------
Group.new('typeScriptDocParam',               g.Comment,         g.Comment,         g.Comment)
Group.new('typeScriptDocTags',                g.vimCommentTitle, g.vimCommentTitle, g.vimCommentTitle)
Group.new('typeScriptGlobalObjects',          g.Keyword,         g.Keyword,         g.Keyword)
Group.new('typeScriptFuncKeyword',            g.Function,        g.Function,        g.Function)
Group.new('typeScriptIdentifier',             g.Identifier,      g.Identifier,      g.Identifier)
Group.new('typeScriptBraces',                 c.Red,             c.none,            no)
Group.new('typeScriptEndColons',              c.White,           c.none,            no)
Group.new('typeScriptDOMObjects',             c.White,           c.none,            no)
Group.new('typeScriptParens',                 c.Blue,            c.none,            no)
Group.new('typeScriptOpSymbols',              g.Operator,        g.Operator,        g.Operator)
Group.new('typeScriptHtmlElemProperties',     g.Special,         g.Special,         g.Special)
Group.new('typeScriptNull',                   c.Purple,          c.none,            b)
Group.new('typeScriptInterpolationDelimiter', c.Cyan,            c.none,            no)
Group.new('typeScriptReserved',               c.Cyan,            c.none,            no)
Group.new('typeScriptLabel',                  g.Label,           g.Label,           g.Label)
Group.new('typeScriptAjaxMethods',            g.Function,        g.Function,        g.Function)
Group.new('typeScriptLogicSymbols',           c.White,           c.none,            no)
Group.new('typeScriptDocSeeTag',              g.Comment,         g.Comment,         g.Comment)

----------
-- JSON --
----------
Group.new('jsonKeyword',            c.Red,      c.none, no)
Group.new('jsonNumber',             c.Orange,   c.none, no)
Group.new('jsonStringSQError',      c.Red,      c.none, r)
Group.new('jsonNumError',           c.Red,      c.none, r)
Group.new('jsonQuote',              c.DarkGray, c.none, no)
Group.new('jsonTrailingCommaError', c.Red,      c.none, r)
Group.new('jsonMissingCommaError',  c.Red,      c.none, r)
Group.new('jsonNoQuotesError',      c.Red,      c.none, r)
Group.new('jsonString',             c.Green,    c.none, no)
Group.new('jsonBoolean',            c.Purple,   c.none, no)
Group.new('jsonCommentError',       c.White,    c.none, no)
Group.new('jsonSemicolonError',     c.Red,      c.none, r)

-------------
-- CLOJURE --
-------------
Group.new('clojureFunc',             c.Yellow,   c.none, no)
Group.new('clojureRepeat',           c.Yellow,   c.none, no)
Group.new('clojureParen',            c.DarkGray, c.none, no)
Group.new('clojureAnonArg',          c.Yellow,   c.none, no)
Group.new('clojureKeyword',          c.Blue,     c.none, no)
Group.new('clojureCond',             c.Orange,   c.none, no)
Group.new('clojureSpecial',          c.Orange,   c.none, no)
Group.new('clojureRegexpCharClass',  c.DarkGray, c.none, b)
Group.new('clojureMeta',             c.Yellow,   c.none, no)
Group.new('clojureDeref',            c.Yellow,   c.none, no)
Group.new('clojureQuote',            c.Yellow,   c.none, no)
Group.new('clojureDefine',           c.Orange,   c.none, no)
Group.new('clojureVariable',         c.Blue,     c.none, no)
Group.new('clojureMacro',            c.Orange,   c.none, no)
Group.new('clojureCharacter',        c.Cyan,     c.none, no)
Group.new('clojureStringEscape',     c.Cyan,     c.none, no)
Group.new('clojureException',        c.Red,      c.none, no)
Group.new('clojureRegexp',           c.Cyan,     c.none, no)
Group.new('clojureRegexpEscape',     c.Cyan,     c.none, no)
Group.new('clojureUnquote',          c.Yellow,   c.none, no)
Group.new('clojureRegexpMod',        g.clojureRegexpCharClass, g.clojureRegexpCharClass, g.clojureRegexpCharClass)
Group.new('clojureRegexpQuantifier', g.clojureRegexpCharClass, g.clojureRegexpCharClass, g.clojureRegexpCharClass)

-------------
-- HASKELL --
-------------
Group.new('haskellDeclKeyword',    c.DarkCyan, c.none, no)
Group.new('haskellType',           c.Green,    c.none, no)
Group.new('haskellWhere',          c.Red,      c.none, no)
Group.new('haskellImportKeywords', c.DarkCyan, c.none, no)
Group.new('haskellOperators',      c.Red,      c.none, no)
Group.new('haskellDelimiter',      c.DarkCyan, c.none, no)
Group.new('haskellIdentifier',     c.Orange,   c.none, no)
Group.new('haskellKeyword',        c.Red,      c.none, no)
Group.new('haskellNumber',         c.Cyan,     c.none, no)
Group.new('haskellString',         c.Cyan,     c.none, no)
Group.new('haskellBacktick',       c.Orange,   c.none, no)
Group.new('haskellDeriving',       c.Cyan,     c.none, no)
Group.new('haskellAssocType',      c.Cyan,     c.none, no)
Group.new('haskellPragma',         c.Purple,   c.none, no)
Group.new('haskellChar',           c.Green,    c.none, no)
Group.new('haskellStatement',      c.Orange,   c.none, no)
Group.new('haskellBottom',         c.Cyan,     c.none, no)
Group.new('haskellBlockKeywords',  c.Cyan,     c.none, no)
Group.new('haskellConditional',    c.Orange,   c.none, no)
Group.new('haskellLet',            c.Cyan,     c.none, no)
Group.new('haskellDefault',        c.Cyan,     c.none, no)

---------
-- PHP --
---------
Group.new('phpClass',        c.Yellow,   c.none, no)
Group.new('phpFunction',     c.DarkCyan, c.none, no)
Group.new('phpFunctions',    c.DarkCyan, c.none, no)
Group.new('phpInclude',      c.Purple,   c.none, no)
Group.new('phpKeyword',      c.Purple,   c.none, no)
Group.new('phpParent',       c.White,    c.none, no)
Group.new('phpType',         c.Purple,   c.none, no)
Group.new('phpSuperGlobals', c.Red,      c.none, no)

----------
-- RUST --
----------
Group.new('rustCommentLineDocError',  c.Grey,     c.none, no)
Group.new('rustCommentBlock',         c.Grey,     c.none, no)
Group.new('rustDeriveTrait',          c.Green,    c.none, no)
Group.new('SpecialComment',           c.Grey,     c.none, no)
Group.new('rustCommentLine',          c.Grey,     c.none, no)
Group.new('rustCommentBlockDoc',      c.Grey,     c.none, no)
Group.new('rustExternCrate',          c.Red,      c.none, b)
Group.new('rustIdentifier',           c.DarkCyan, c.none, no)
Group.new('rustCommentLineDoc',       c.Grey,     c.none, no)
Group.new('rustCommentBlockDocError', c.Grey,     c.none, no)

-----------
-- C/C++ --
-----------
Group.new('cType',              c.DarkCyan, c.none, no)
Group.new('cStorageClass',      c.Purple,   c.none, no)
Group.new('cStructure',         c.Cyan,     c.none, no)
Group.new('cInclude',           c.Purple,   c.none, no)
Group.new('cppStructure',       c.Purple,   c.none, no)
Group.new('cppModifier',        c.Purple,   c.none, no)
Group.new('cppOperator',        c.Pink,     c.none, no)
Group.new('cppAccess',          c.Purple,   c.none, no)
Group.new('cppStatement',       c.Purple,   c.none, no)
Group.new('cppConstant',        c.Red,      c.none, no)
Group.new('cTODO',              c.Purple,   c.none, no)
Group.new('cConstant',          c.Orange,   c.none, no)
Group.new('cSpecial',           c.Cyan,     c.none, no)
Group.new('cSpecialCharacter',  c.Cyan,     c.none, no)
Group.new('cString',            c.Green,    c.none, no)
Group.new('cppType',            c.Purple,   c.none, no)
Group.new('cppStorageClass',    c.Purple,   c.none, no)
Group.new('cPreCondit',         c.Purple,   c.none, no)
Group.new('cPreConditMatch',    c.Purple,   c.none, no)
Group.new('cOperator',          c.Purple,   c.none, no)
Group.new('cStatement',         c.Purple,   c.none, no)
Group.new('cCppString',         c.Green,    c.none, no)

--------
-- C# --
--------
Group.new('csBraces',                 c.White, c.none, no)
Group.new('csEndColon',               c.White, c.none, no)
Group.new('csLogicSymbols',           c.White, c.none, no)
Group.new('csParens',                 c.White,  c.none, no)
Group.new('csOpSymbols',              c.Grey,  c.none, no)
Group.new('csInterpolationDelimiter', c.Grey,  c.none, no)
Group.new('csInterpolationAlignDel',  c.Grey,  c.none,  b)
Group.new('csInterpolationFormat',    c.Grey,  c.none, no)
Group.new('csInterpolationFormatDel', c.Grey,  c.none,  b)

--------------
-- CUCUMBER --
--------------
Group.new('cucumberThenAnd',         c.DarkCyan, c.none, no)
Group.new('cucumberFeature',         c.Red,      c.none, b)
Group.new('cucumberScenarioOutline', c.Purple,   c.none, b)
Group.new('cucumberThen',            c.DarkCyan, c.none, no)
Group.new('cucumberUnparsed',        c.Orange,   c.none, no)
Group.new('cucumberGiven',           c.DarkCyan, c.none, no)
Group.new('cucumberWhenAnd',         c.DarkCyan, c.none, no)
Group.new('cucumberBackground',      c.Purple,   c.none, b)
Group.new('cucumberScenario',        c.Purple,   c.none, b)
Group.new('cucumberWhen',            c.DarkCyan, c.none, no)
Group.new('cucumberTags',            c.Grey,     c.none, b)
Group.new('cucumberDelimiter',       c.Grey,     c.none, b)

-----------
-- SPELL --
-----------
Group.new('SpellBad',         c.Red,    c.none, i + uc)
Group.new('SpellCap',         c.Blue,   c.none, i + uc)
Group.new('SpellLocal',       c.Cyan,   c.none, i + uc)
Group.new('SpellRare',        c.Purple, c.none, i + uc)

------------
-- ELIXIR --
------------
Group.new('elixirModuleDeclaration', c.Orange,  c.none,    no)
Group.new('elixirOperator',          c.Orange,  c.none,    no)
Group.new('elixirModuleDefine',      g.Define,  g.Define,  g.Define)
Group.new('elixirDocString',         g.Comment, g.Comment, g.Comment)
Group.new('elixirInclude',           c.Red,     c.none,    no)
Group.new('elixirAlias',             c.Yellow,  c.none,    no)
Group.new('elixirAtom',              c.Cyan,    c.none,    no)
Group.new('elixirBlockDefinition',   c.Purple,  c.none,    no)

------------
-- GOLANG --
------------
Group.new('goField',        c.Red,     c.none,    no)
Group.new('goMethod',       c.Cyan,    c.none,    no)
Group.new('goType',         c.Purple,  c.none,    no)
Group.new('goDeclaration',  c.Purple,  c.none,    no)
Group.new('goUnsignedInts', c.Cyan,    c.none,    no)
Group.new('goDeclaration',  g.Keyword, g.Keyword, g.Keyword)

------------
-- PYTHON --
------------
Group.new('pythonEscape',            c.Red,         c.none,        no)
Group.new('pythonSelf',              c.DarkGrey,    c.none,        i)
Group.new('pythonSelfArg',           c.Grey_2,      c.none,        s.italic)
Group.new('pythonImport',            c.Purple,      c.none,        no)
Group.new('pythonBuiltin',           c.Cyan,        c.none,        no)
Group.new('pythonModule',            c.Purple,      c.none,        no)
Group.new('pythonStringDelimiter',   c.Green,       c.none,        no)
Group.new('pythonParam',             c.Orange,      c.none,        no)
Group.new('pythonFunction',          c.DarkCyan,    c.none,        no)
Group.new('pythonKeyword',           c.DarkCyan,    c.none,        no)
Group.new('pythonStatement',         c.Purple,      c.none,        no)
Group.new('pythonClass',             c.DarkCyan,    c.none,        no)
Group.new('pythonOperator',          c.Purple,      c.none,        no)
Group.new('pythonSymbol',            c.Cyan,        c.none,        no)
Group.new('pythonBytes',             c.green,       c.none,        s.italic)
Group.new('pythonBytesError',        g.Error,       g.Error,       g.Error)
Group.new('pythonBytesEscapeError',  g.Error,       g.Error,       g.Error)
Group.new('pythonBytesEscape',       g.Special,     g.Special,     g.Special)
Group.new('pythonRawBytes',          g.pythonBytes, g.pythonBytes, g.pythonBytes)
Group.new('pythonBytesContent',      g.pythonBytes, g.pythonBytes, g.pythonBytes)

----------------
-- PURESCRIPT --
----------------
Group.new('purescriptKeyword',     c.Purple, c.none, no)
Group.new('purescriptModuleName',  c.White,  c.none, no)
Group.new('purescriptType',        c.Yellow, c.none, no)
Group.new('purescriptTypeVar',     c.Red,    c.none, no)
Group.new('purescriptIdentifier',  c.White,  c.none, no)
Group.new('purescriptConstructor', c.Red,    c.none, no)
Group.new('purescriptOperator',    c.White,  c.none, no)

---------
-- VIM --
---------
Group.new('vimSep',          c.DarkGrey, c.none,     no)
Group.new('vimCommentTitle', c.Grey,     c.none,     b)
Group.new('vimLineComment',  c.Grey,     c.none,     i)
Group.new('vimParenSep',     c.White,    c.none,     no)
Group.new('vimFuncName',     c.Purple,   c.none,     no)
Group.new('vimHighlight',    c.DarkCyan, c.none,     no)
Group.new('vimUserFunc',     c.Cyan,     c.none,     no)
Group.new('vimVar',          c.Red,      c.none,     no)
Group.new('vimLet',          c.Blue,     c.none,     no)
Group.new('vimNorm',         c.Blue,     c.none,     no)
Group.new('vimBracket',      c.White,    c.none,     no)
Group.new('vimMapModKey',    c.Orange,   c.none,     no)
Group.new('vimNotation',     c.Orange,   c.none,     no)
Group.new('vimGroup',        c.Blue,     c.none,     no)
Group.new('vimSep',          c.DarkGrey, c.none,     no)
Group.new('vimContinue',     c.Yellow,   c.none,     no)
Group.new('vimSetSep',       c.DarkGray, c.none,     no)
Group.new('vimHiGroup',      g.Type,     g.Type,     g.Type)
Group.new('vimFunction',     g.Function, g.Function, g.Function)
Group.new('vimFuncSID',      g.Function, g.Function, g.Function)
Group.new('vimCommentTitle', c.Blue,     c.none,     b)
Group.new('vimCommand',      c.Cyan,     c.none,     b)
Group.new('vimNotFunc',      c.Blue,     c.none,     no)
Group.new('vimFuncVar',      c.Purple,   c.none,     no)
Group.new('vimMapModKey',    c.Cyan,     c.none,     no)
Group.new('vimMapLHS',       c.Yellow,   c.none,     no)
Group.new('vimMap',          c.Aqua,     c.none,     no)
Group.new('nvimMap',         g.vimMap,   c.none,     no)

---------
-- ZSH --
---------
Group.new('zshSubst',       c.Red,    c.none, no)
Group.new('zshCommands',    c.White,  c.none, no)
Group.new('zshKeyword',     c.Purple, c.none, no)
Group.new('zshTypes',       c.Purple, c.none, no)
Group.new('zshDeref',       c.Red,    c.none, no)
Group.new('zshShortDeref',  c.Red,    c.none, no)
Group.new('zshVariableDef', c.Orange, c.none, no)
Group.new('zshSubstDelim',  c.Grey,   c.none, no)
Group.new('zshFunction',    c.Cyan,   c.none, no)

----------
-- RUBY --
----------
Group.new('rubyInstanceVariable',          c.Red,      c.none, no)
Group.new('rubyBlockParameterList',        c.Red,      c.none, no)
Group.new('rubyRegexp',                    c.Cyan,     c.none, no)
Group.new('rubyRegexpDelimiter',           c.Cyan,     c.none, no)
Group.new('rubyStringDelimiter',           c.Green,    c.none, no)
Group.new('rubySymbol',                    c.Cyan,     c.none, no)
Group.new('rubyClass',                     c.Purple,   c.none, no)
Group.new('rubyConstant',                  c.Yellow,   c.none, no)
Group.new('rubyBlockParameter',            c.Red,      c.none, no)
Group.new('rubyEscape',                    c.Red,      c.none, no)
Group.new('rubyControl',                   c.Purple,   c.none, no)
Group.new('rubyFunction',                  c.DarkCyan, c.none, no)
Group.new('rubyGlobalVariable',            c.Red,      c.none, no)
Group.new('rubyCapitalizedMethod',         c.Purple,   c.none, no)
Group.new('rubyInclude',                   c.DarkCyan, c.none, no)
Group.new('rubyIncluderubyGlobalVariable', c.Red,      c.none, no)
Group.new('rubyBlock',                     c.Purple,   c.none, no)
Group.new('rubyInterpolation',             c.Cyan,     c.none, no)
Group.new('rubyInterpolationDelimiter',    c.Red,      c.none, no)
Group.new('rubyKeyword',                   c.DarkCyan, c.none, no)
Group.new('rubyModule',                    c.Purple,   c.none, no)
Group.new('rubyDefine',                    c.Purple,   c.none, no)
Group.new('rubyPseudoVariable',            c.Red,      c.none, no)

----------
-- JAVA --
----------
Group.new('javaParen',        c.White,           c.none,            no)
Group.new('javaOperator',     c.Orange,          c.none,            no)
Group.new('javaVarArg',       c.Green,           c.none,            no)
Group.new('javaParen1',       c.White,           c.none,            no)
Group.new('javaParen2',       c.White,           c.none,            no)
Group.new('javaParen3',       c.White,           c.none,            no)
Group.new('javaParen4',       c.White,           c.none,            no)
Group.new('javaParen5',       c.White,           c.none,            no)
Group.new('javaAnnotation',   c.Cyan,            c.none,            no)
Group.new('javaDocTags',      c.Blue,            c.none,            no)
Group.new('javaCommentTitle', g.vimCommentTitle, g.vimCommentTitle, g.vimCommentTitle)

-----------
-- OCAML --
-----------
Group.new('ocamlOperator',       c.Grey,   c.none,  no )
Group.new('ocamlArrow',          c.Orange, c.none , no )
Group.new('ocamlKeyChar',        c.Orange, c.none , no )
Group.new('ocamlInfixOpKeyword', c.Red,    c.none , no )
Group.new('ocamlConstructor',    c.Orange, c.none , no )

---------
-- LUA --
---------
Group.new('luaFunction',             c.Cyan,               c.none,               no)
Group.new('luaTable',                c.Orange,             c.none,               no)
Group.new('luaIn',                   c.Red,                c.none,               no)
Group.new('luaStatement',            c.DarkYellow,         c.none,               s.bold)
Group.new('luaKeyword',              c.DarkOrange,         c.none,               s.bold)
Group.new('luaMyKeyword',            c.Violet,             c.none,               s.bold)
Group.new('luaFunctionCall',         c.DarkBlue,           c.none,               nil)
Group.new('luaSpecialFunctions',     c.DarkBlue,           c.none,               nil)
Group.new('luaMetatableEvents',      c.Purple,             c.none,               nil)
Group.new('luaMetatableArithmetic',  g.luaMetatableEvents, g.luaMetatableEvents, g.luaMetatableEvents)
Group.new('luaMetatableEquivalence', g.luaMetatableEvents, g.luaMetatableEvents, g.luaMetatableEvents)

-----------
-- SCALA --
-----------
Group.new('scalaTypeTypePostDeclaration', c.Yellow, c.none, no)
Group.new('scalaInstanceDeclaration',     c.White,  c.none, no)
Group.new('scalaInterpolation',           c.Cyan,   c.none, no)
Group.new('scalaOperator',                c.White,  c.none, no)
Group.new('scalaNameDefinition',          c.White,  c.none, no)
Group.new('scalaCaseFollowing',           c.White,  c.none, no)
Group.new('scalaCapitalWord',             c.White,  c.none, no)
Group.new('scalaTypeExtension',           c.White,  c.none, no)
Group.new('scalaKeyword',                 c.Red,    c.none,  b)
Group.new('scalaKeywordModifier',         c.Red,    c.none, no)
Group.new('scalaSpecial',                 c.Cyan,   c.none, no)
Group.new('scalaTypeDeclaration',         c.Yellow, c.none, no)

-----------
--  SQL  --
-----------
Group.new('SqlKeyword', c.Red)

--------------------------------------------------------------------------
--                           PLUGINS SETTINGS                            -
--------------------------------------------------------------------------

----------------
-- LSP COLORS --
----------------
Group.new('LspDiagnosticsVirtualTextHint',        c.Custom_2,   c.none, no)
Group.new('LspDiagnosticsSignWarning',            c.DarkOrange, c.none, no)
Group.new('LspDiagnosticsSignInformation',        c.Custom_3,   c.none, no)
Group.new('LspDiagnosticsSignHint',               c.Custom_2,   c.none, no)
Group.new('LspDiagnosticsFloatingHint',           c.Custom_2,   c.none, ul)
Group.new('LspDiagnosticsSignError',              c.DarkRed,    c.none, no)
Group.new('LspDiagnosticsDefaultWarning',         c.DarkOrange, c.none, no)
Group.new('LspDiagnosticsDefaultError',           c.DarkRed,    c.none, no)
Group.new('LspDiagnosticsFloatingError',          c.DarkRed,    c.none, ul)
Group.new('LspDiagnosticsFloatingWarning',        c.DarkOrange, c.none, ul)
Group.new('LspDiagnosticsFloatingInformation',    c.Custom_3,   c.none, ul)
Group.new('LspDiagnosticsUnderlineInformation',   c.none,       c.none, ul)
Group.new('LspDiagnosticsUnderlineHint',          c.none,       c.none, ul)
Group.new('LspDiagnosticsDefaultInformation',     c.Cyan,       c.none, no)
Group.new('LspDiagnosticsDefaultHint',            c.Custom_2,   c.none, no)
Group.new('LspDiagnosticsUnderlineError',         c.none,       c.none, ul)
Group.new('LspDiagnosticsVirtualTextError',       c.DarkRed,    c.none, no)
Group.new('LspDiagnosticsVirtualTextWarning',     c.DarkOrange, c.none, no)
Group.new('LspDiagnosticsVirtualTextInformation', c.Custom_3,   c.none, no)
Group.new('LspDiagnosticsUnderlineWarning',       c.none,       c.none, ul)
Group.new("LspReferenceText",                     c.DarkOrange, c.Cyan, no)
Group.new("LspReferenceRead",                     c.DarkOrange, c.Cyan, no)
Group.new("LspReferenceWrite",                    c.DarkOrange, c.Cyan, no)

---------------
--  LSPSAGA  --
---------------
Group.new("LspSagaRenamePromptPrefix", c.Green,  c.none)
Group.new("DiagnosticHint",            c.Purple, c.none)
Group.new("DefinitionPreviewTitle",    c.Yellow, c.none)
Group.new("LspSagaRenameBorder",       c.Green,  c.none)
Group.new("DiagnosticInformation",     c.Blue,   c.none)
Group.new("LspSagaDefPreviewBorder",   c.Yellow, c.none)
Group.new("LspSagaHoverBorder",        c.Cyan,   c.none)
Group.new("DiagnosticWarning",         c.Yellow, c.none)
Group.new("DiagnosticError",           g.Error,  c.none)

-----------------------
-- TREESITTER COLORS --
-----------------------
Group.new('TSFloat',              g.Float,       c.none, no)
Group.new('TSFunction',           g.Function,    c.none, no)
Group.new('TSType',               g.Type,        c.none, no)
Group.new('TSTypeBuiltin',        g.Type,        c.none, no)
Group.new('TSLabel',              g.Label,       c.none, no)
Group.new('TSCharacter',          g.Character,   c.none, no)
Group.new('TSConditional',        g.Conditional, c.none, no)
Group.new('TSConstant',           g.Constant,    c.none, no)
Group.new('TSConstBuiltin',       g.Constant,    c.none, no)
Group.new('TSConstMacro',         g.Constant,    c.none, no)
Group.new('TSFuncBuiltin',        g.Function,    c.none, no)
Group.new("TSMethod",             g.Function,    c.none, no)
Group.new('TSStructure',          g.Structure,   c.none, no)
Group.new('TSTagDelimiter',       g.Delimiter,   c.none, no)
Group.new('TSNumber',             g.Number,      c.none, no)
Group.new('TSFuncMacro',          g.Function,    c.none, no)
Group.new('TSInclude',            g.Include,     c.none, no)
Group.new('TSKeyword',            g.Keyword,     c.none, no)
Group.new('TSException',          g.Exception,   c.none, no)
Group.new('TSBoolean',            g.Boolean,     c.none, no)
Group.new('TSError',              g.Error,       c.none, no)
Group.new('TSString',             g.String,      c.none, no)
Group.new('TSStringEscape',       c.Orange,      c.none, no)
Group.new('TSStringRegex',        c.Red,         c.none, no)
Group.new('TSProperty',           c.DarkCyan,    c.none, no)
Group.new('TSField',              c.Purple,      c.none, no)
Group.new('TSParameter',          c.Cyan,        c.none, no)
Group.new('TSVariable',           c.Cyan,        c.none, no)
Group.new('TSPunctBracket',       c.White,       c.none, no)
Group.new('TSOperator',           c.White,       c.none, no)
Group.new('TSVariableBuiltin',    c.Orange,      c.none, no)
Group.new('TSConstructor',        c.DarkYellow,  c.none, no)

---------------
-- TELESCOPE --
---------------
Group.new('TelescopeNormal',          c.White,       c.none,   no)
Group.new('TelescopeSelection',       c.White,       c.Grey,  b)
Group.new('TelescopeSelectionCaret',   c.Red,         c.none,   no)
Group.new('TelescopeMultiSelection ', c.Grey_2,      c.none,   no)
Group.new('TelescopeBorder',          c.DarkOrange,  c.none,   no)
Group.new('TelescopePromptBorder',    c.DarkBlue,    c.none,   no)
Group.new('TelescopeResultsBorder',   c.DarkOrange,  c.none,   no)
Group.new('TelescopePreviewBorder',   c.DarkMagenta, c.none,   no)
Group.new('TelescopeMatching ',       c.Yellow,      c.none,   no)
Group.new('TelescopePromptPrefix',    c.Red,         c.none,   no)
Group.new('TelescopePrompt',          c.Red,         c.none,   no)

---------------
-- NVIM TREE --
---------------
Group.new('NvimTreeFolderName',       c.Blue,       c.none, no)
Group.new('NvimTreeFolderIcon',       c.Orange,     c.none, no)
Group.new('NvimTreeExecFile',         c.Green,      c.none, no)
Group.new('NvimTreeImageFile',        c.Pink,       c.none, no)
Group.new('NvimTreeEmptyFolderName',  c.DarkGrey_2, c.none, no)
Group.new('NvimTreeIndentMarker',     c.Blue,       c.none, no)

---------------
--  STARTIFY --
---------------
Group.new('startifyheader',  c.DarkOrange, c.none, no)
Group.new('startifypath',    c.Green,      c.none, no)
Group.new('startifyslash',   c.Blue,       c.none, no)
Group.new('startifyfile',    c.DarkRed,    c.none, no)
