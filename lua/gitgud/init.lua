local lush = require("lush")
local hsl = lush.hsl
local c = require("gitgud.palette")

-- palette
local theme = lush(function()
  return {
    Comment      { bg = "NONE", fg = c.gray,  gui = "italic" },
    Normal       { bg = c.bg,   fg = c.white, gui = "NONE"   },
    CursorLine   { bg = c.bg1,  fg = "NONE",  gui = "NONE"   },
    CursorColumn { CursorLine },
    ColorColumn  { CursorLine },
    Conceal      { bg = "NONE", fg = c.blue, gui = "NONE"    },
    Cursor       { fg = "NONE", bg = "NONE", gui = "reverse" },
    lCursor      { Cursor },
    CursorIM     { Cursor },
    Directory    { bg = "NONE",          fg = c.blue, gui = "NONE" },
    DiffAdd      { bg = c.blue.da(88),   fg = "NONE", gui = "NONE" },
    DiffChange   { bg = c.orange.da(88), fg = "NONE", gui = "NONE" },
    DiffDelete   { bg = c.red.da(88),    fg = "NONE", gui = "NONE" },
    DiffText     { bg = c.orange.da(80), fg = "NONE", gui = "NONE" },
    EndOfBuffer  { bg = "NONE",          fg = c.bg2,  gui = "NONE" },
    TermCursor   { Cursor },
    TermCursorNC { Cursor },
    ErrorMsg     { bg = c.red.da(80), fg = c.red,  gui = "NONE" },
    VertSplit    { bg = "NONE",       fg = c.bg2,  gui = "NONE" },
    Folded       { bg = c.bg1,        fg = c.bg4,  gui = "NONE" },
    FoldColumn   { Normal,            fg = c.gray, gui = "NONE" },
    SignColumn   { Normal },
    Search       { bg = c.gray, fg = c.bg },
    IncSearch    { Search },
    Substitute   { Search },
    LineNr       { bg = "NONE", fg = c.gray, gui = "NONE" },
    CursorLineNr { bg = "NONE", fg = c.blue, gui = "bold" },
    MatchParen   { CursorLine,  fg = "NONE", gui = "underline" },
    ModeMsg      { Normal },
    MsgArea      { Normal },
    MsgSeparator { Normal },
    MoreMsg      { bg = "NONE", fg = c.aqua, gui = "NONE" },
    NonText      { EndOfBuffer },
    NormalFloat  { bg = c.bg2.da(12), fg = "NONE", gui = "NONE" },
    FloatBorder  { bg = c.bg2.da(12), fg = c.gray, gui = "NONE" },
    NormalNC     { Normal },
    Pmenu        { bg = c.bg1.da(10),   fg = c.gray.da(20),  gui = "NONE" },
    PmenuSel     { bg = c.bg1.li(5),    fg = c.white.li(20), gui = "NONE" },
    PmenuSbar    { bg = c.bg1,          fg = "NONE",         gui = "NONE" },
    PmenuThumb   { bg = c.bg1.li(10),   fg = "NONE",         gui = "NONE" },
    Question     { MoreMsg },
    QuickFixLine { CursorLine },
    SpecialKey   { bg = "NONE", fg = c.blue,   gui = "bold" },
    SpellBad     { bg = "NONE", fg = c.white,  gui = "underline", sp = c.red    },
    SpellCap     { bg = "NONE", fg = c.white,  gui = "underline", sp = c.yellow },
    SpellLocal   { bg = "NONE", fg = c.white,  gui = "underline", sp = c.green  },
    SpellRare    { bg = "NONE", fg = c.white,  gui = "underline", sp = c.blue   },
    Title        { bg = "NONE", fg = c.blue,   gui = "bold" },
    Visual       { bg = c.blue_alt,  fg = "NONE",   gui = "NONE" },
    VisualNOS    { Visual },
    WarningMsg   { bg = "NONE", fg = c.red,         gui = "NONE" },
    Whitespace   { bg = "NONE", fg = c.gray.da(35), gui = "NONE" },
    WildMenu     { PmenuSel },

    -- Non Defaults

    Constant       { fg = c.blue },
    String         { fg = c.aqua },
    Character      { Constant },
    Number         { fg = c.blue },
    Boolean        { fg = c.blue },
    Float          { fg = c.blue },

    Identifier     { fg = c.white },
    Function       { fg = c.purple  },

    Statement      { fg = c.purple  },
    Conditional    { fg = c.red  },
    Repeat         { fg = c.purple  },
    Label          { fg = c.purple  },
    Operator       { fg = c.red },
    Keyword        { fg = c.red  },
    Exception      { fg = c.purple  },

    PreProc        { fg = c.red  },
    Include        { PreProc },
    Define         { PreProc },
    Macro          { PreProc },
    PreCondit      { PreProc },

    Type           { fg = c.white.da(10) },
    StorageClass   { fg = c.red },
    Structure      { fg = c.aqua },
    Typedef        { Type },

    Special        { fg = c.aqua },
    SpecialChar    { Special },
    Tag            { fg = c.green },
    Delimiter      { fg = c.white.da(20) },
    SpecialComment { fg = c.red },
    Debug          { fg = c.red },

    Underlined     { fg = "NONE", gui = "underline" },
    Bold           { fg = "NONE", gui = "bold" },
    Italic         { fg = "NONE", gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    Ignore         { fg = c.white },
    Error          { bg = c.red.da(80).sa(-10), fg = c.red },
    Todo           { bg = "NONE", fg = c.red, gui = "bold" },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText                     { bg = c.bg1.li(6), fg = "NONE" },
    LspReferenceRead                     { bg = c.bg1.li(6), fg = "NONE" },
    LspReferenceWrite                    { bg = c.bg1.li(6), fg = "NONE" },
    LspSignatureActiveParameter          { bg = c.bg1.li(6), fg = c.purple, gui = "underline,bold" },

    LspCodeLens          { fg = Comment.fg.li(20) },
    LspCodeLensSeparator { fg = Comment.fg.li(20) },

    DiagnosticError { bg = "NONE", fg = c.red,    gui = "underline" },
    DiagnosticWarn  { bg = "NONE", fg = c.yellow, gui = "underline" },
    DiagnosticInfo  { bg = "NONE", fg = c.blue,   gui = "underline" },
    DiagnosticHint  { bg = "NONE", fg = c.green,  gui = "underline" },

    DiagnosticVirtualTextError { DiagnosticError },
    DiagnosticVirtualTextWarn  { DiagnosticWarn  },
    DiagnosticVirtualTextInfo  { DiagnosticInfo  },
    DiagnosticVirtualTextHint  { DiagnosticHint  },

    DiagnosticUnderlineError { fg = "NONE", gui = "underline", sp = c.red    },
    DiagnosticUnderlineWarn  { fg = "NONE", gui = "underline", sp = c.yellow },
    DiagnosticUnderlineInfo  { fg = "NONE", gui = "underline", sp = c.blue   },
    DiagnosticUnderlineHint  { fg = "NONE", gui = "underline", sp = c.green  },

    DiagnosticFloatingError { fg = c.red,    gui = "NONE" },
    DiagnosticFloatingWarn  { fg = c.yellow, gui = "NONE" },
    DiagnosticFloatingInfo  { fg = c.blue,   gui = "NONE" },
    DiagnosticFloatingHint  { fg = c.green,  gui = "NONE" },

    DiagnosticSignError { fg = c.red,    gui = "NONE" },
    DiagnosticSignWarn  { fg = c.yellow, gui = "NONE" },
    DiagnosticSignInfo  { fg = c.blue,   gui = "NONE" },
    DiagnosticSignHint  { fg = c.green,  gui = "NONE" },

    -- Tree-Sitter

    TSAnnotation          { bg = "NONE", fg = c.blue }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute           { bg = "NONE", fg = c.aqua }, -- (unstable) TODO: docs
    TSBoolean             { Boolean   }, -- booleans.
    TSCharacter           { Character }, -- characters.
    TSComment             { Comment   }, -- comment blocks.
    luaTSConstructor      { bg = "NONE", fg = c.white.da(25) }, -- override Lua curly braces
    TSConstructor         { Type },       -- For constructor calls and definitions: `{ }` in Lua, and Java constructors.
    TSConditional         { Conditional }, -- keywords related to conditionnals.
    TSConstant            { Constant    }, -- constants
    TSConstBuiltin        { Constant    }, -- constant that are built in the language: `nil` in Lua.
    TSConstMacro          { Macro       }, -- constants that are defined by macros: `NULL` in C.
    TSException           { Exception   }, -- exception related keywords.
    TSError               { bg = "NONE", fg = "NONE" }, -- For syntax/parser errors.
    TSField               { bg = "NONE", fg = c.blue }, -- For fields.
    TSFloat               { Float    }, -- floats.
    TSFunction            { Function }, -- function (calls and definitions).
    TSFuncBuiltin         { Function }, -- builtin functions: `table.insert` in Lua.
    TSFuncMacro           { Macro    }, -- macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude             { Include  }, -- includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword             { Keyword  }, -- keywords that don't fall in previous categories.
    TSKeywordFunction     { Keyword  }, -- keywords used to define a fuction.
    TSLabel               { Label    }, -- labels: `label:` in C and `:label:` in Lua.
    TSMethod              { Function }, -- method calls and definitions.
    TSNamespace           { bg = "NONE", fg = c.blue  },    -- For identifiers referring to modules and namespaces.
    -- TSNone                { },    -- TODO: docs
    TSNumber              { Number      }, -- all numbers
    TSOperator            { Operator    }, -- any operator: `+`, but also `->` and `*` in C.
    TSParameter           { fg = c.white }, -- parameters of a function.
    TSParameterReference  { TSParameter }, -- references to parameters of a function.
    TSProperty            { TSField     }, -- Same as `TSField`.
    TSPunctDelimiter      { Delimiter   }, -- delimiters ie: `.`
    TSPunctBracket        { Delimiter   }, -- brackets and parens.
    TSPunctSpecial        { Delimiter   }, -- special punctutation that does not fall in the catagories before.
    TSRepeat              { Repeat      }, -- keywords related to loops.
    TSString              { String      }, -- strings.
    TSStringRegex         { TSString    }, -- regexes.
    TSStringEscape        { Character   }, -- escape characters within a string.
    TSSymbol              { Identifier  }, -- identifiers referring to symbols or atoms.
    TSType                { Type        }, -- types.
    TSTypeBuiltin         { Type        }, -- builtin types.
    TSVariable            { bg = "NONE", fg = c.white },    -- Any variable name that does not have another highlight.
    TSVariableBuiltin     { bg = "NONE", fg = c.orange },    -- Variable names that are defined by the languages, like `this` or `self`.
    TSWarning             { bg = "NONE", fg = c.red, gui = "bold" },    -- todo highlight
    TSDanger              { bg = "NONE", fg = c.red, gui = "bold" },    -- todo highlight

    TSTag                 { Tag         }, -- Tags like html tag names.
    htmlTagN              { Delimiter    },
    htmlEndTagN           { Delimiter    },
    htmlTag               { Operator    },
    htmlEndTag            { Operator    },
    htmlTagName           { Tag },
    TSTagAttribute        { fg = c.blue },
    htmlArg               { fg = c.blue },
    TSTagDelimiter        { Delimiter   }, -- Tag delimiter like `<` `>` `/`
    TSText                { fg = c.white          }, -- strings considered text in a markup language.
    TSEmphasis            { gui = "italic"        }, -- text to be represented with emphasis.
    TSUnderline           { gui = "underline"     }, -- text to be represented with an underline.
    TSStrike              { gui = "strikethrough" }, -- strikethrough text.
    TSTitle               { Title  }, -- Text that is part of a title.
    TSLiteral             { String }, -- Literal text.
    TSURI                 { fg = "NONE", gui = "underline" },    -- Any URI like a link or email.

    -- gitsigns.nvim
    SignAdd               { fg = c.blue },    -- Any URI like a link or email.
    SignChange            { fg = c.orange },    -- Any URI like a link or email.
    SignDelete            { fg = c.red },    -- Any URI like a link or email.

    -- telescope.nvim
    TelescopeSelection    { bg = "NONE", fg = c.aqua },
    TelescopeMatching     { bg = "NONE", fg = c.red, gui = "bold" },
    TelescopeBorder       { bg = "NONE", fg = c.bg3.li(4) },

    -- nvim-tree.lua
    NvimTreeFolderIcon          { fg = c.aqua },
    NvimTreeIndentMarker        { fg = c.gray },
    NvimTreeNormal              { fg = c.white.da(5), bg = c.bg.da(20) },
    NvimTreeVertSplit           { fg = c.bg, bg = c.bg},
    NvimTreeFolderName          { fg = c.blue },
    NvimTreeOpenedFolderName    { fg = c.aqua.da(10), gui = "italic" },
    NvimTreeOpenedFile          { NvimTreeOpenedFolderName },
    NvimTreeRootFolder          { fg = c.blue.da(20) },
    NvimTreeExecFile            { fg = c.blue },
    NvimTreeImageFile           { fg = c.purple },
    NvimTreeSpecialFile         { fg = c.aqua },
    NvimTreeGitStaged           { fg = c.green },
    NvimTreeGitRenamed          { fg = c.orange },

    -- some fix for html related stuff
    htmlH1                  { Title },

    -- markdown stuff
    mkdLink                   { fg = c.blue, gui = "underline" },
    mkdLineBreak              { bg = "NONE", fg = "NONE", gui = "NONE" },
    mkdHeading                { fg = c.white },
    mkdInlineURL              { mkdLink },
    mkdEscape                 { Delimiter },
    markdownUrl               { mkdLink },
    markdownCode              { fg = c.orange, bg = "NONE" },
    markdownLinkTextDelimiter { Delimiter },
    markdownLinkDelimiter     { Delimiter },
    markdownIdDelimiter       { Delimiter },
    markdownLinkText          { fg = c.aqua },
    markdownItalic            { fg = "NONE", gui = "italic" },

    -- flutter-tools.nvim
    FlutterWidgetGuides     { fg = c.bg4.li(10) },

    -- statusline
    StatusLine          { bg = c.bg1.li(10), fg = c.gray.li(15) },
    StatusLineAccent    { StatusLine, fg = c.white.li(40) },
    StatusLineNC        { bg = c.bg1.li(5), fg = c.gray },

    -- lsp-trouble.nvim
    LspTroubleIndent    { fg = c.bg4.li(10) },

    -- tabline stuff
    TabLine               { bg = c.bg1, fg = c.white, gui = "NONE" },
    TabLineFill           { bg = c.bg1, fg = c.white, gui = "NONE" },
    TabLineSel            { bg = c.blue, fg = c.bg1,  gui = "NONE" },

    -- tabline diagnostic
    TabLineError          { DiagnosticSignError },
    TabLineWarning        { DiagnosticSignWarn },
    TabLineHint           { DiagnosticSignHint },
    TabLineInformation    { DiagnosticSignInfo },

    -- which-key.nvim
    WhichKeyFloat       { bg = c.bg1 },

    -- nvim-cmp
    CmpDocumentation        { Pmenu, fg = "NONE" },
    CmpDocumentationBorder  { Pmenu, fg = "NONE" },
    CmpItemKind             { Pmenu },
    CmpItemKindDefault      { Pmenu },
    CmpItemMenu             { Pmenu },

    -- diffview
    DiffviewNormal              { NvimTreeNormal },
    DiffviewVertSplit           { fg = c.bg, bg = c.bg },
    DiffviewStatusAdded         { SignAdd },
    DiffviewStatusModified      { SignChange },
    DiffviewStatusRenamed       { SignChange },
    DiffviewStatusDeleted       { SignDelete },
    DiffviewFilePanelInsertion  { SignAdd },
    DiffviewFilePanelDeletion   { SignDelete },

    -- nvim-notify
    NotifyERROR      { fg = c.red    },
    NotifyWARN       { fg = c.yellow },
    NotifyINFO       { fg = c.green  },
    NotifyDEBUG      { fg = c.blue   },
    NotifyTRACE      { fg = c.white  },
    NotifyERRORTitle { fg = c.red  },
    NotifyWARNTitle  { fg = c.yellow  },
    NotifyINFOTitle  { fg = c.green  },
    NotifyDEBUGTitle { fg = c.blue  },
    NotifyTRACETitle { fg = c.white  },

    -- HOP
    HopNextKey { fg = "#ff007c" },
    HopNextKey1 { fg = "#00dfff" },
    HopNextKey2 { fg = "#2b8db3" },
    HopUnmatched { fg = c.bg3 },
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
