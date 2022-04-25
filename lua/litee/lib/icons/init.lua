local M = {}

-- alot of these are yoinked from:
-- https://github.com/onsails/lspkind-nvim/blob/master/lua/lspkind/init.lua
M.nerd = {
    Array           = "",
    Bookmark        = "",
    Boolean         = "",
    Class           = "ﴯ",
    Collapsed       = "",
    Color           = "",
    Constant        = "",
    Constructor     = "",
    Enum            = "",
    EnumMember      = "",
    Event           = "",
    Expanded        = "",
    Field           = "ﰠ",
    File            = "",
    Folder          = "",
    Function        = "",
    IndentGuide     = "⎸",
    Interface       = "",
    Key             = "",
    Keyword         = "",
    Method          = "",
    Module          = "",
    Namespace       = "",
    Notebook        = "ﴬ",
    Null            = "ﳠ",
    Number          = "",
    Object          = "",
    Operator        = "",
    Package         = "",
    Property        = "ﰠ",
    Reference       = "",
    Separator       = "•",
    Snippet         = "",
    Space           = " ",
    String          = "",
    Struct          = "פּ",
    Text            = "",
    TypeParameter   = "",
    Unit            = "塞",
    Value           = "",
    Variable        = "",

    Info            = '',
    Pass            = '',
    PassFilled      = '',
    Account         = '',
    Check           = '',
    CheckAll        = '',
    CircleFilled    = '',
    Circle          = '',
    CircleSlash     = '',
    GitCompare      = '',
    GitBranch       = '',
    GitPullRequest  = '',
    CircleStop      = '',
    DiffAdded       = '',
    CirclePause     = '',
    GitCommit       = 'ﰖ',
    GitRepo         = '',

    Comment         = '',
    MultiComment    = '',
    Pencil          = ''
}

M.codicons = {
    Array           = "",
    Bookmark        = "",
    Boolean         = "",
    Class           = "",
    Collapsed       = "",
    Color           = "",
    Constant        = "",
    Constructor     = "",
    Enum            = "",
    EnumMember      = "",
    Event           = "",
    Expanded        = "",
    Field           = "",
    File            = "",
    Folder          = "",
    Function        = "",
    IndentGuide     = "⎸",
    Interface       = "",
    Key             = "",
    Keyword         = "",
    Method          = "",
    Module          = "",
    Namespace       = "",
    Notebook        = "",
    Null            = "",
    Number          = "",
    Object          = "",
    Operator        = "",
    Package         = "",
    Property        = "",
    Reference       = "",
    Separator       = "•",
    Snippet         = "",
    Space           = " ",
    String          = "",
    Struct          = "",
    Text            = "",
    TypeParameter   = "",
    Unit            = "",
    Value           = "",
    Variable        = "",

    Info            = '',
    Pass            = '',
    PassFilled      = '',
    Account         = '',
    Check           = '',
    CheckAll        = '',
    CircleFilled    = '',
    Circle          = '',
    CircleSlash     = '',
    GitBranch       = '',
    GitCompare      = '',
    GitPullRequest  = '',
    CircleStop      = '',
    CirclePause     = '',
    DiffAdded       = '',
    GitCommit       = '',
    GitRepo         = '',
    History         = '',
    Sync            = '',
    CommentExclaim  = '',
    RequestChanges  = '',

    Comment         = '',
    MultiComment    = '',

    Calendar        = '',
    Pencil          = ''
}

M.default = {
    Bookmark        = "🔖",
    Collapsed       = "▶",
    Expanded        = "▼",
    IndentGuide     = "⎸",
    Notebook        = "📔",
    Separator       = "•",
    Space           = " "
}

M.icon_hls = {
    Array           = "LTConstant",
    Boolean         = "LTBoolean",
    Class           = "LTType",
    Constant        = "LTConstant",
    Constructor     = "LTFunction",
    Enum            = "LTType",
    EnumMember      = "LTField",
    Event           = "LTType",
    Field           = "LTField",
    File            = "LTURI",
    Folder          = "LTNamespace",
    Function        = "LTFunction",
    Interface       = "LTType",
    Key             = "LTType",
    Keyword         = "LTConstant",
    Method          = "LTFunction",
    Module          = "LTNamespace",
    Namespace       = "LTNamespace",
    Null            = "LTType",
    Number          = "LTNumber",
    Object          = "LTType",
    Operator        = "LTOperator",
    Package         = "LTNamespace",
    Property        = "LTMethod",
    Reference       = "LTType",
    Snippet         = "LTString",
    String          = "LTString",
    Struct          = "LTType",
    Text            = "LTString",
    TypeParameter   = "LTParameter",
    Unit            = "LTType",
    Value           = "LTType",
    Variable        = "LTConstant",

    Info            = 'LTInfo',
    Pass            = 'LTSuccess',
    PassFilled      = 'LTSuccess',
    Account         = 'LTAccount',
    Check           = 'LTSuccess',
    CheckAll        = 'LTSuccess',
    CircleFilled    = 'LTDefault',
    Circle          = 'LTDefault',
    CircleSlash     = 'LTFailure',
    GitCompare      = 'LTGitCompare',
    GitBranch       = 'LTGitBranch',
    GitPullRequest  = 'LTGitPullRequest',
    CircleStop      = 'LTFailure',
    DiffAdded       = 'LTDiffAdded',
    CirclePause     = 'LTWarning',
    GitCommit       = 'LTGitCommit',

    Comment         = 'LTComment',
    MultiComment    = 'LTMultiComment',

    Calendar        = 'LTDefault',
    Pencil          = 'LTWarning',

    History         = 'LTWarning',
    Sync            = 'LTWarning',
    CommentExclaim  = 'LRWarning',
    RequestChanges  = 'LTFailure',
}

return M
